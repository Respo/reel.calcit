import assert from 'node:assert/strict';
import * as c from '../js-out/calcit.core.mjs';
import { Task, read_tasks } from '../js-out/reel.app.updater.mjs';

const tag = c.to_tag;
const fields = [tag('id'), 'a', tag('text'), 'hello', tag('done?'), false];
const oldTask = c._$n_struct_def_$o_new(tag('OldTask'),
  c._$L_(tag('id'), new c.CalcitSymbol('String')),
  c._$L_(tag('text'), new c.CalcitSymbol('String')),
  c._$L_(tag('done?'), new c.CalcitSymbol('Bool')));
const variants = [
  c._$n__PCT__$M_(Task, ...fields),
  c._$n__PCT__$M_(oldTask, ...fields),
  c.parse_cirru_edn('{} (:id |a) (:text |hello) (:done? false)'),
];
for (const value of variants) {
  const store = c.assoc(c.parse_cirru_edn('{}'), tag('tasks'), c._$L_(value));
  assert.deepEqual(c.to_js_data(read_tasks(store)), [{ id: 'a', text: 'hello', 'done?': false }]);
}
const invalid = c.assoc(c.parse_cirru_edn('{}'), tag('tasks'), c._$L_(c.parse_cirru_edn('{} (:id |a)')));
assert.throws(() => read_tasks(invalid));
console.log('legacy tasks: nominal Struct, old Struct and Map decode; invalid fields rejected');
