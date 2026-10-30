# MYCINE for Android TV

Standalone Android TV WebView app for package `com.mycine.tv`, using the existing MYCINE/TMDB website and its CineSRC embed player integration.

Playback position is stored locally on the device and shown in a Continue Watching row, so reopening a title resumes near the last saved position, including after a normal TV shutdown or restart. Progress is saved on player updates, pause/close, and when Android backgrounds the app. Uninstalling MYCINE or clearing its app data removes saved progress.

## Build

Requirements: Java 8+ and Android SDK platform 29, build-tools, and command-line tools. Set `ANDROID_SDK_ROOT` and `ANDROID_PLATFORM_JAR` if the SDK is not in the detected locations.

```sh
./android-app/build.sh
```

The installable signed APK is `android-app/build/MYCINE.apk`. It is signed with a local debug key for direct installation/testing; create and use a private release key before public distribution. The launcher has both Android TV and standard launcher intent categories, advertises Leanback support, and does not require a touchscreen.

To install on a connected TV/device with USB debugging enabled:

```sh
adb install -r android-app/build/MYCINE.apk
```

TMDB information and poster images require an internet connection. Playback uses the existing `https://cinesrc.st/embed/movie/` service.
