
# 🎬 MYCINE – Premium Android TV Movie Application

**MYCINE** is a cinematic movie discovery and streaming application designed for Xiaomi Redmi Smart TVs, Android TV, and compatible Google TV devices.

MYCINE combines a premium Netflix-inspired interface, TMDB movie discovery, movie search, direct TMDB ID loading, and CineSRC player integration.

---

<img width="1782" height="1003" alt="image" src="https://github.com/user-attachments/assets/1502b493-35d4-4442-be18-b1fdd55b4594" />



## 📱 Application Information

| Property | Details |
| --- | --- |
| Application Name | MYCINE |
| Package Name | `com.cinesrc.tv` |
| Platform | Android TV |
| Source Language | Java |
| Original Website | HTML, CSS, JavaScript |
| Movie Database | TMDB |
| Streaming Player | CineSRC |
| Theme | Premium Dark |
| Primary Color | `#E50914` |
| APK | `MYCINE.apk` |

## ✨ Features

- 🎬 Premium Netflix-inspired interface.
- 🔥 Trending Movies.
- ⭐ Popular Movies.
- 🏆 Top Rated Movies.
- 🎥 Upcoming Movies.
- 🍿 Now Playing.
- 🔍 Movie Search.
- 🔢 Load Movie by TMDB ID.
- 📖 Movie Details.
- ▶ CineSRC Player Integration.
- 📺 Android TV compatibility.
- 🎮 Remote-control navigation.
- ⏯ Continue Watching where supported.

## 📂 Project Structure

text

```
MYCINE/
│
├── android-app/
│   │
│   ├── AndroidManifest.xml
│   │
│   ├── assets/
│   │   └── index.html
│   │
│   ├── build/
│   │   ├── aligned.apk
│   │   ├── classes/
│   │   ├── dex/
│   │   ├── MYCINE.apk
│   │   ├── MYCINE.apk.idsig
│   │   ├── mycine-debug.keystore
│   │   └── unsigned.apk
│   │
│   ├── build.sh
│   ├── README.md
│   │
│   ├── res/
│   │   ├── drawable/
│   │   │   ├── app_icon.png
│   │   │   └── tv_banner.png
│   │   └── values/
│   │
│   ├── src/
│   │   └── main/
│   │       └── java/
│   │           └── com/
│   │               └── mycine/
│   │                   └── tv/
│   │                       └── MainActivity.java
│   │
│   └── tools/
│
├── index.html
├── MYCINE.apk
└── README.md
```

## 🛠️ Technologies

- Java
- Android SDK
- Android WebView
- HTML5
- CSS3
- JavaScript
- TMDB API
- CineSRC Embedded Player

## 🌐 TMDB API

MYCINE uses TMDB to retrieve movie information, posters, backdrops, ratings, and release dates.

API Base URL:

text

```
https://api.themoviedb.org/3
```

Image Base URL:

text

```
https://image.tmdb.org/t/p/
```

Supported endpoints:

| Feature | Endpoint |
| --- | --- |
| Trending | `/trending/movie/day` |
| Popular | `/movie/popular` |
| Top Rated | `/movie/top_rated` |
| Upcoming | `/movie/upcoming` |
| Now Playing | `/movie/now_playing` |
| Movie Details | `/movie/{movie_id}` |
| Search | `/search/movie?query={query}` |

Configure your TMDB API key securely. Do not publish private credentials in public repositories.

## 🎞️ CineSRC Player

MYCINE integrates the CineSRC embedded movie player.

Player Base URL:

text

```
https://cinesrc.st/embed/movie/
```

Example:

text

```
https://cinesrc.st/embed/movie/550?autoplay=true&muted=false&color=%23e50914&controls=true&quality=1080
```

Playback functionality depends on external player compatibility and supported communication commands.

## 🎮 Android TV Remote Navigation

| Remote Button | Function |
| --- | --- |
| UP | Navigate upward |
| DOWN | Navigate downward |
| LEFT | Previous item |
| RIGHT | Next item |
| OK / CENTER | Select |
| BACK | Return to previous screen |
| MENU | Additional options if implemented |

## 📦 Download MYCINE APK

The latest available APK is included in the project root.

text

```
MYCINE.apk
```

### Install on Redmi Smart TV

1. Copy `MYCINE.apk` to a USB drive.
2. Connect the USB drive to your TV.
3. Open File Manager.
4. Select the APK.
5. Allow installation from unknown sources if requested.
6. Install MYCINE.
7. Launch the application.

### Install using ADB

bash

```
adb install -r MYCINE.apk
```

## 🔨 Build Android APK

Navigate to the Android application directory:

bash

```
cd android-app
```

Make the build script executable:

bash

```
chmod +x build.sh
```

Build the APK:

bash

```
./build.sh
```

Expected output:

text

```
android-app/build/MYCINE.apk
```

Copy the generated APK into the root directory:

bash

```
cp android-app/build/MYCINE.apk ../MYCINE.apk
```

## 🔐 Security

- Do not expose private API credentials.
- Keep signing keystores private.
- Use HTTPS connections.
- Validate WebView message origins.
- Do not upload private signing credentials to GitHub.

## ⚠️ Disclaimer

MYCINE is an independent movie discovery and streaming application.

Movie information and images are provided by TMDB.

This product uses the TMDB API but is not endorsed or certified by TMDB.

MYCINE does not host movie content. Streaming availability depends on external services.

All trademarks and content belong to their respective owners.

## ❤️ Credits

- TMDB – Movie information and images.
- CineSRC – Embedded player integration.
- Android – Application platform.
- MYCINE – Application branding and development.

---

# 🎬 MYCINE

### Your Cinema. Your Experience.


