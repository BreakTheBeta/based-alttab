#!/bin/bash

set -euo pipefail

extra_swift_conditions=""
if [[ "${DISABLE_PREMIUM_CHECKS:-0}" == "1" ]]; then
  extra_swift_conditions="DISABLE_PREMIUM_CHECKS"
fi

xcodebuild \
  -project alt-tab-macos.xcodeproj \
  -scheme Debug \
  -configuration Debug \
  -derivedDataPath DerivedData \
  ALT_TAB_EXTRA_SWIFT_CONDITIONS="$extra_swift_conditions"
