import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync} from 'node:fs';
const run=(...args)=>execFileSync('calcit',args,{encoding:'utf8',stdio:['ignore','pipe','pipe'],maxBuffer:16*1024*1024});
const json=(...args)=>JSON.parse(run(...args,'--format','json'));
const q=(...args)=>json('query',...args).data;
assert.equal(run('-v').trim(),'0.30.1');
const inventory=()=>{
  const ds=[];
  const namespaces=q('ns').namespaces;
  assert.equal(namespaces.length,15);
  for(const ns of namespaces){
    const names=run('query','defs',ns).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);
    assert.equal(names.length,q('ns',ns).definition_count,ns);
    for(const name of names)ds.push(q('def',`${ns}/${name}`));
  }
  assert.equal(ds.length,72);
  assert.equal(ds.reduce((n,d)=>n+d.tests.length,0),31);
  assert.equal(ds.reduce((n,d)=>n+d.examples.length,0),0);
  return ds;
};
const before=inventory();
assert.deepEqual(before,JSON.parse(readFileSync('acceptance/reviewed.json','utf8')),'All reviewed source views remain exact');
const methods=q('type','calcit.core/Option').methods;
for(const name of ['unwrap','some?','none?'])assert.equal(methods.find(m=>m.name===`.${name}`)?.definition,`calcit.core/option:${name}`);
const adapter=q('def','respo.ffi.browser/query-selector');
assert.deepEqual(adapter.schema.find(x=>Array.isArray(x)&&x[0]===':return'),[':return',['::',"'Option","'respo.dom/DomElement"]]);
const counts={option:0,nominal:0,concat:0};
function normalize(node){
  if(!Array.isArray(node))return node;
  const n=node.map(normalize);
  if(['option:unwrap','option:some?','option:none?'].includes(n[0])){n[0]=`.${n[0].slice(7)}`;counts.option++;}
  if(n[0]==='%::'){assert.equal(n[1],'Control');counts.nominal++;return n.slice(1);}
  if(n[0]==='%some'){assert.equal(n.length,2);counts.nominal++;return ['Option',':some',n[1]];}
  if(n[0]==='%none'){assert.equal(n.length,1);counts.nominal++;return ['Option',':none'];}
  if(n[0]==='&list:concat'){assert.equal(n.length,3);n[0]='concat';counts.concat++;}
  return n;
}
const expected=structuredClone(before);
for(const d of expected){d.code=normalize(d.code);for(const t of d.tests)t.code=normalize(t.code);}
assert.deepEqual(counts,{option:7,nominal:29,concat:1});
const find=id=>expected.find(d=>d.id===id);
const mount=find('reel.app.main/get-mount-target');
assert.deepEqual(mount.code,['defn','get-mount-target',[],['unsafe-coerce',['.unwrap',['browser/query-selector','|.app']],['quote','Dynamic']]]);
mount.code=['defn','get-mount-target',[],['.unwrap',['dom/query-selector','|.app']]];
mount.schema.find(x=>Array.isArray(x)&&x[0]===':return')[1]="'respo.dom/DomElement";
const value=find('reel.app.main/mount-target');
assert.deepEqual(value.code,['def','mount-target',['.unwrap',['dom/query-selector','|.app']]]);
assert.equal(value.schema,null);value.schema="'respo.dom/DomElement";
const debug=find('reel.core/reel-updater').code[3];
assert.deepEqual(debug,[';','println','|Name:',['turn-string','op']]);
debug[3][0]='to-lispy-string';
const ops=[];
for(let i=0;i<before.length;i++){
  const a=before[i],b=expected[i];
  if(JSON.stringify(a.code)!==JSON.stringify(b.code))ops.push(['edit','def',b.id,'--overwrite','--input-format','json-ast','--code',JSON.stringify(b.code)]);
  if(JSON.stringify(a.schema)!==JSON.stringify(b.schema))ops.push(['edit','schema',b.id,'--input-format','json-ast','--code',JSON.stringify(b.schema)]);
  for(let k=0;k<a.tests.length;k++)if(JSON.stringify(a.tests[k].code)!==JSON.stringify(b.tests[k].code)){
    const t=b.tests[k];
    ops.push(['edit','add-test',b.id,t.name,'--overwrite',...(t.tags.length?['--tags',t.tags.join(',')]:[]),'--input-format','json-ast','--code',JSON.stringify(t.code)]);
  }
}
assert.equal(ops.length,15);
writeFileSync('acceptance/before.json',JSON.stringify(before,null,2));
writeFileSync('acceptance/operations.json',JSON.stringify(ops,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];
const preview=JSON.parse(run(...args,'--dry-run'));
assert.ok(preview.scoped_revision);
writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));
writeFileSync('acceptance/applied.json',run(...args,'--expect-revision',preview.scoped_revision));
assert.deepEqual(inventory(),expected,'All72views preserve every reviewed test assertion except spelling and all other schema/doc/FFI/code');
writeFileSync('acceptance/after.json',JSON.stringify(expected,null,2));
const diff=json('analyze','program-diff','HEAD');
assert.equal(diff.data.evidence.changes.length,15);
writeFileSync('acceptance/program-diff.json',JSON.stringify(diff,null,2));
writeFileSync('acceptance/snapshot-blob.txt',execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}));
writeFileSync('acceptance/preserved.json',JSON.stringify({definitions:72,tests:31,examples:0,...counts,changedRegions:15,testNamesTagsOrderAndNormalizedAssertionsPreserved:true,unsafeBefore:3,unsafeAfter:2,legacyMapAndTypedContractsPreserved:true,hudReloadUnchanged:true},null,2));
