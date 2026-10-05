import assert from "node:assert/strict";
import { execFileSync } from "node:child_process";
import { copyFile, mkdir, mkdtemp, readFile, rm, symlink } from "node:fs/promises";
import { join, resolve } from "node:path";
import { pathToFileURL } from "node:url";
import { main_$x_ } from "../test-js-out/reel.test-typed.mjs";
import { new_reel, record_op, recall, resume, reset_reel, refresh, toggle_display, merge_reel, step, remove_current, decode_control, apply_control } from "../test-js-out/reel.typed.mjs";
import { to_js_data, parse_cirru_edn, option_$o_unwrap, option_$o_none_$q_ } from "../test-js-out/calcit.core.mjs";
import { view_data } from "../test-js-out/reel.typed-compat.mjs";
import { map_indexed_dynamic } from "../test-js-out/reel.util.mjs";
import { comp_typed_reel } from "../test-js-out/reel.comp.reel.mjs";
import { make_string } from "../test-js-out/respo.render.html.mjs";

// Replay each canonical attached test in its original namespace, without
// maintaining a second assertion set or editing the consumer's Snapshot.
async function replayAttachedTests() {
  const binary = process.env.CALCIT_BIN ?? "calcit";
  const invoke = (snapshot, ...args) => execFileSync(binary, [snapshot, ...args],
    { encoding: "utf8", timeout: 60000, maxBuffer: 16 * 1024 * 1024,
      stdio: ["ignore", "pipe", "pipe"] });
  const canonical = resolve("calcit.cirru");
  const before = await readFile(canonical);
  const selected = JSON.parse(invoke(canonical, "test", "--list", "--require-match", "--format", "json"));
  assert.ok(selected.tests.length > 0, "attached replay must not silently select zero tests");
  const directory = await mkdtemp(resolve(".calcit/reel-attached-"));
  const snapshot = join(directory, "calcit.cirru");
  try {
    await copyFile(canonical, snapshot);
    await copyFile("deps.cirru", join(directory, "deps.cirru"));
    await mkdir(join(directory, ".calcit"));
    await symlink(resolve(".calcit/modules"), join(directory, ".calcit/modules"), "dir");
    await symlink(resolve("node_modules"), join(directory, "node_modules"), "dir");
    invoke(snapshot, "docs", "agents", "--contract");
    const operations = [];
    const calls = [];
    const features = new Set();
    for (const [index, item] of selected.tests.entries()) {
      const separator = item.id.indexOf("#");
      const owner = item.id.slice(0, separator);
      const name = item.id.slice(separator + 1);
      const definition = JSON.parse(invoke(snapshot, "query", "def", owner, "--format", "json")).data;
      const test = definition.tests.find(test => test.name === name);
      assert.ok(test, `missing canonical AST for ${item.id}`);
      const target = `${owner.slice(0, owner.indexOf("/"))}/replay-attached-${index}`;
      const schemaMap = definition.schema?.[0] === "{}" ? definition.schema
        : definition.schema?.find(node => Array.isArray(node) && node[0] === "{}");
      const ownerFeatures = schemaMap?.find(node => node[0] === ":features")?.[1]?.slice(1) ?? [];
      ownerFeatures.forEach(feature => features.add(feature));
      operations.push(["edit", "def", target, "--input-format", "json-ast", "--code",
        JSON.stringify(["defn", target.split("/")[1], [], test.code, "&unit"])]);
      operations.push(["edit", "schema", target, "--input-format", "json-ast", "--code",
        JSON.stringify(["::", "'Fn", ["{}", [":args", ["[]"]], [":return", "'Unit"],
          [":features", ["#{}", ...ownerFeatures]]]])]);
      calls.push([target]);
    }
    const entry = "reel.test-typed/replay-attached!";
    operations.push(["edit", "def", entry, "--input-format", "json-ast", "--code",
      JSON.stringify(["defn", "replay-attached!", [], ...calls, "&unit"])]);
    operations.push(["edit", "schema", entry, "--input-format", "json-ast", "--code",
      JSON.stringify(["::", "'Fn", ["{}", [":args", ["[]"]], [":return", "'Unit"],
        [":features", ["#{}", ...features]]]])]);
    const code = JSON.stringify(operations);
    const preview = JSON.parse(invoke(snapshot, "edit", "transaction", "--code", code, "--dry-run", "--format", "json"));
    invoke(snapshot, "edit", "transaction", "--code", code, "--expect-revision", preview.original_revision, "--format", "edn");
    const roots = ["--init-fn", entry, "--reload-fn", entry];
    invoke(snapshot, ...roots);
    const output = join(directory, "js");
    invoke(snapshot, ...roots, "--emit-path", output, "js");
    // Generated core modules register traits globally; isolate this second graph
    // so its registration cannot replace implementations used by the main graph.
    execFileSync(process.execPath, ["--input-type=module", "--eval",
      `const tests = await import(${JSON.stringify(pathToFileURL(join(output, "reel.test-typed.mjs")).href)}); tests.replay_attached_$x_();`],
      { timeout: 60000, stdio: "inherit" });
    console.log(`typed Reel: ${selected.tests.length} canonical attached tests replayed on native/generated JS`);
  } finally {
    try {
      assert.deepEqual(await readFile(canonical), before, "test replay must preserve canonical Snapshot bytes");
    } finally {
      await rm(directory, { recursive: true, force: true });
    }
  }
}

await replayAttachedTests();
main_$x_();
const updater = (store, op) => store + op;
const initial = new_reel("base");
const live = record_op(updater, initial, 5, "id", 10);
for (const pointer of [-1, 0.5, 2, NaN, Infinity]) {
  assert.throws(() => recall(updater, live, pointer), /Reel pointer/);
}
assert.equal(to_js_data(resume(updater, initial)).store, "base");
assert.equal(to_js_data(initial).records.length, 0);
const full = record_op(updater, live, 7, "second", 20);
const paused = recall(updater, full, 1);
const resetPaused = to_js_data(reset_reel(paused));
assert.equal(resetPaused.store, "base5");
assert.equal(resetPaused.records.length, 1);
assert.equal(resetPaused["stopped?"], true);
const resetLive = to_js_data(reset_reel(full));
assert.equal(resetLive.store, "base");
assert.equal(resetLive.records.length, 0);
assert.equal(to_js_data(refresh(updater, full, "next")).store, "next57");
assert.equal(to_js_data(refresh(updater, paused, "next")).store, "next5");
assert.equal(to_js_data(toggle_display(initial))["display?"], true);
assert.deepEqual(to_js_data(toggle_display(toggle_display(initial))), to_js_data(initial));
console.log("typed Reel JS: shared native scenario, invalid pointers, empty resume, and immutability passed");
console.log("typed Reel JS: paused/live reset, refresh, and display toggle passed");
const merged = merge_reel(updater, paused);
assert.equal(to_js_data(merged).base, "base5");
assert.equal(to_js_data(merged).records.length, 1);
assert.equal(to_js_data(resume(updater, merged)).store, "base57");
assert.equal(to_js_data(refresh(updater, merged, "ignored")).store, "base5");
const mergedLive = to_js_data(merge_reel(updater, full));
assert.equal(mergedLive.base, "base57");
assert.equal(mergedLive.records.length, 0);
assert.equal(mergedLive["merged?"], true);
console.log("typed Reel JS: paused/live merge, subsequent resume, and preserved base on refresh passed");
const three = record_op(updater, full, 9, "third", 30);
let updateCalls = 0;
const countedUpdater = (...args) => { updateCalls += 1; return updater(...args); };
const zero = recall(updater, three, 0);
const stepOne = step(countedUpdater, zero);
const stepTwo = step(countedUpdater, stepOne);
assert.equal(updateCalls, 2, "each step must apply only the next operation");
assert.equal(to_js_data(stepTwo).store, "base57");
const removed = remove_current(updater, stepTwo);
assert.equal(to_js_data(removed).store, "base5");
assert.deepEqual(to_js_data(removed).records.map(r => [r.op, r.id, r.time]),
  [[5, "id", 10], [9, "third", 30]]);
assert.equal(to_js_data(resume(updater, removed)).store, "base59");
const atEnd = step(countedUpdater, stepTwo);
assert.equal(updateCalls, 3);
assert.equal(to_js_data(step(countedUpdater, atEnd)).store, "base");
assert.equal(updateCalls, 3, "wrapping to the base does not apply an operation");
assert.equal(remove_current(updater, three), three);
assert.equal(remove_current(updater, zero), zero);
const onePaused = recall(updater, live, 0);
assert.equal(step(updater, onePaused), onePaused);
console.log("typed Reel JS: single-operation stepping, wraparound, selected removal, and no-op boundaries passed");
const control = source => option_$o_unwrap(decode_control(parse_cirru_edn(source)));
for (const pointer of [-1, 0.5, 4]) {
  assert.equal(apply_control(updater, three, control(`:: :reel/recall ${pointer}`)), three,
    "invalid devtools recall must preserve state without throwing");
}
for (const [message, expected] of [
  [":: :reel/toggle", toggle_display(paused)],
  [":: :reel/recall 0", recall(updater, paused, 0)],
  [":: :reel/run", resume(updater, paused)],
  [":: :reel/step", step(updater, paused)],
  [":: :reel/merge", merge_reel(updater, paused)],
  [":: :reel/reset", reset_reel(paused)],
  [":: :reel/remove 1", remove_current(updater, paused)],
]) {
  assert.deepEqual(to_js_data(apply_control(updater, paused, control(message))), to_js_data(expected));
}
assert.equal(apply_control(updater, paused, control(":: :reel/remove 2")), paused);
for (const message of [":: :app/update |text", ":: :reel/recall |bad", ":: :reel/remove |bad"]) {
  assert.equal(option_$o_none_$q_(decode_control(parse_cirru_edn(message))), true);
}
console.log("typed Reel JS: all control messages, rejected payloads, and stale deletion protection passed");
assert.deepEqual(to_js_data(view_data(full)), {
  base: "base", store: "base57", records: [[5, "id", 10], [7, "second", 20]],
  pointer: null, "stopped?": false, "display?": false, "merged?": false,
});
const pausedView = to_js_data(view_data(paused));
assert.equal(pausedView.pointer, 1);
assert.equal(pausedView["stopped?"], true);
assert.equal(pausedView.store, "base5");
assert.deepEqual(pausedView.records, [[5, "id", 10], [7, "second", 20]]);
assert.equal(to_js_data(view_data(toggle_display(paused)))["display?"], true);
assert.equal(to_js_data(view_data(merged))["merged?"], true);
console.log("typed Reel JS: legacy devtools view preserves flags, record tuples, store, and pointer semantics");

assert.deepEqual(to_js_data(map_indexed_dynamic(parse_cirru_edn("[]"), () => {
  assert.fail("empty indexed mapping must not call its callback");
})), []);
assert.deepEqual(to_js_data(map_indexed_dynamic(parse_cirru_edn("[] |a |b"), (index, value) => `${index}:${value}`)), ["0:a", "1:b"]);
for (const reel of [initial, full, paused]) {
  const html = make_string(comp_typed_reel(parse_cirru_edn("{} (:cursor $ [])"), toggle_display(reel), parse_cirru_edn("{}")));
  assert.match(html, /Merge/);
  assert.match(html, /Reset/);
}
console.log("typed Reel JS: indexed mapping and open devtools render for empty, live, and paused history");
