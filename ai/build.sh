#!/bin/bash

set -euo pipefail

extra_swift_conditions=""
if [[ "${BASED:-1}" == "1" ]]; then
  extra_swift_conditions="BASED"
fi
scheme="${SCHEME:-Debug}"
configuration="${CONFIGURATION:-Debug}"

xcodebuild \
  -project alt-tab-macos.xcodeproj \
  -scheme "$scheme" \
  -configuration "$configuration" \
  -derivedDataPath DerivedData \
  ALT_TAB_EXTRA_SWIFT_CONDITIONS="$extra_swift_conditions" \
  "$@"
