import assert from "node:assert/strict";
import { main_$x_ } from "../test-js-out/reel.test-typed.mjs";
import { new_reel, record_op, recall, resume, reset_reel, refresh, toggle_display, merge_reel, step, remove_current, decode_control, apply_control } from "../test-js-out/reel.typed.mjs";
import { to_js_data, parse_cirru_edn, option_$o_unwrap, option_$o_none_$q_ } from "../test-js-out/calcit.core.mjs";
import { view_data } from "../test-js-out/reel.typed-compat.mjs";

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
