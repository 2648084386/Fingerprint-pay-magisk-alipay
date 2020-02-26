#!/bin/bash
set -e
cd ${0%/*}
./gradlew clean
./gradlew :module:assembleRelease
adb shell rm -f "/data/local/tmp/libxfingerprint_pay_alipay.dex"
adb push ./out/*.zip /sdcard/Download/
