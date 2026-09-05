# Strict Reel updater boundary

- Added a structured open contract to `reel.core/reel-updater` and declared its narrow JavaScript FFI capability for the existing `js/Date.now` time source.
- Kept the heterogeneous Reel, operation, and application updater values explicit as independent `Dynamic` positions rather than claiming an unsound generic relation.
- Preserved runtime behavior. Reel's normal application check passes, and a Calcit 0.13.77 gen-code consumer advances beyond the prior `E_JS_FFI_FEATURE_REQUIRED` dependency failure.
- Tracks `Respo/reel.calcit#36` and `calcit-lang/calcit#868`.
