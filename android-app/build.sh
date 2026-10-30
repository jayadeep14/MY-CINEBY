#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
SDK="${ANDROID_SDK_ROOT:-${ANDROID_HOME:-/usr/lib/android-sdk}}"
PLATFORM="${ANDROID_PLATFORM_JAR:-$HOME/Android/Sdk/platforms/android-29/android.jar}"
BT="$SDK/build-tools/debian"
D8="$SDK/cmdline-tools/latest/bin/d8"
OUT="$ROOT/build"
mkdir -p "$OUT/classes" "$OUT/dex"
cp "$ROOT/../index.html" "$ROOT/assets/index.html"
rm -f "$OUT/classes"/*.class "$OUT/dex"/classes*.dex "$OUT/unsigned.apk" "$OUT/aligned.apk" "$OUT/MYCINE.apk"
if [[ ! -f "$PLATFORM" ]]; then echo "Android platform jar missing: $PLATFORM" >&2; exit 1; fi
javac -source 8 -target 8 -bootclasspath "$PLATFORM" -d "$OUT/classes" "$ROOT/src/main/java/com/mycine/tv/MainActivity.java"
CLASS_FILES=("$OUT/classes/com/mycine/tv/MainActivity.class")
"$D8" --lib "$PLATFORM" --min-api 21 --output "$OUT/dex" "${CLASS_FILES[@]}"
"$BT/aapt" package -f -M "$ROOT/AndroidManifest.xml" -S "$ROOT/res" -A "$ROOT/assets" -I "$PLATFORM" -F "$OUT/unsigned.apk"
(cd "$OUT/dex" && zip -q "$OUT/unsigned.apk" classes.dex)
KEYSTORE="$OUT/mycine-debug.keystore"
if [[ ! -f "$KEYSTORE" ]]; then
  keytool -genkeypair -keystore "$KEYSTORE" -storepass android -keypass android -alias androiddebugkey -dname "CN=MYCINE, OU=Android, O=MYCINE, L=TV, S=TV, C=US" -keyalg RSA -keysize 2048 -validity 10000 >/dev/null 2>&1
fi
"$BT/zipalign" -f 4 "$OUT/unsigned.apk" "$OUT/aligned.apk"
"$BT/apksigner" sign --ks "$KEYSTORE" --ks-pass pass:android --key-pass pass:android --out "$OUT/MYCINE.apk" "$OUT/aligned.apk"
"$BT/apksigner" verify --verbose "$OUT/MYCINE.apk"
echo "Built $OUT/MYCINE.apk"
