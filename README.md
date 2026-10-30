
# 🎬 MYCINE – Premium Android TV Streaming Application

**MYCINE** is a premium movie discovery and streaming application designed for Android TV, Xiaomi Redmi Smart TVs, and Google TV-compatible devices.

Featuring a Netflix-inspired dark interface, TMDB movie integration, remote-control navigation, and CineSRC player integration.

## 📱 Application Details

| Detail | Information |
| --- | --- |
| App Name | MYCINE |
| Package Name | `com.cinesrc.tv` |
| Version | 1.0 |
| Platform | Android TV |
| Language | Kotlin |
| UI | Jetpack Compose |
| Movie Database | TMDB |
| Streaming Player | CineSRC |
| Theme | Premium Dark |
| Primary Color | `#E50914` |

## ✨ Features

- 🎬 Netflix-inspired cinematic interface.
- 🔥 Trending movies.
- ⭐ Popular movies.
- 🏆 Top-rated movies.
- 🎥 Upcoming movies.
- 🍿 Now Playing.
- 🔍 Movie search.
- 🔢 Load movies using TMDB ID.
- 📖 Movie details and ratings.
- ▶ CineSRC movie player integration.
- ⭐ Watchlist (if implemented).
- ⏯ Continue Watching (where playback progress is supported).
- 📺 Android TV remote navigation.
- ⚙ Settings and application information.

## 📺 Supported Devices

- Xiaomi Redmi Smart TV.
- Android TV.
- Google TV-compatible devices.
- Android TV boxes.

## 🛠️ Technology

- Kotlin
- Jetpack Compose
- Android Studio
- Material Design
- TMDB API
- Retrofit / OkHttp
- Coroutines
- Coil
- Android WebView
- Media3 ExoPlayer where compatible

## 📂 Project Structure

text

```
MYCINE/
│
├── android-app/
│   ├── app/
│   ├── build.gradle
│   ├── settings.gradle
│   └── build.sh
│
├── MYCINE.apk
│
├── README.md
│
├── .gitignore
│
└── LICENSE
```

## 🔑 TMDB API Configuration

MYCINE uses TMDB for movie information and posters.

API Base:

text

```
https://api.themoviedb.org/3
```

Image Base:

text

```
https://image.tmdb.org/t/p/
```

Configure your TMDB API key locally before building.

**Security:** Never upload private API credentials to a public GitHub repository.

## 🎞️ CineSRC Player

Player URL:

text

```
https://cinesrc.st/embed/movie/{movie_id}?autoplay=true&muted=false&color=%23e50914&controls=true&quality=1080
```

Playback controls depend on the external player's supported communication interface and Android TV compatibility.

## 🎮 Remote Control Navigation

| Remote Button | Function |
| --- | --- |
| UP | Navigate up |
| DOWN | Navigate down |
| LEFT | Previous item |
| RIGHT | Next item |
| OK / CENTER | Select |
| BACK | Go back |
| MENU | Additional options, if implemented |

## 📦 APK Installation

### Method 1: USB Installation

1. Copy `MYCINE.apk` to a USB drive.
2. Connect the USB drive to your Redmi Smart TV.
3. Open File Manager.
4. Find `MYCINE.apk`.
5. Allow installation from unknown sources if requested.
6. Click Install.
7. Launch MYCINE.

### Method 2: ADB Installation

Connect your TV and computer using ADB.

Run:

bash

```
adb install -r MYCINE.apk
```

## 🔨 Build APK Using Android Studio

1. Open the `android-app` folder in Android Studio.
2. Allow Gradle synchronization to finish.
3. Configure your TMDB API key.
4. Select Build APK.
5. Wait for the build to complete.

### Build Using Terminal

bash

```
cd android-app
chmod +x build.sh
./build.sh
```

Expected APK:

text

```
android-app/build/MYCINE.apk
```

Copy the APK into the main project directory:

bash

```
cp android-app/build/MYCINE.apk ./MYCINE.apk
```

## 🔐 Security

- Keep API credentials private.
- Use HTTPS connections.
- Validate external WebView message origins.
- Avoid committing private configuration files.
- Protect application signing credentials.

## ⚠️ Disclaimer

MYCINE is an independent movie discovery and streaming application.

Movie information and images are provided by TMDB.

This product uses the TMDB API but is not endorsed or certified by TMDB.

MYCINE does not host movie content. External streaming availability depends on CineSRC and its services.

All trademarks and content belong to their respective owners.

## ❤️ Credits

- TMDB – Movie information and images.
- CineSRC – Embedded player integration.
- Android – Application platform.
- Kotlin – Development language.

---

# 🎬 MYCINE

**Your Cinema. Your Experience.**

### Your final project directory should look like this:

text

```
MYCINE/
│
├── android-app/
│
├── MYCINE.apk
│
├── README.md
│
├── .gitignore
│
└── LICENSE
```


# MY-CINEBY
