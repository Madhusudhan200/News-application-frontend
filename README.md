# NAA TV Telugu — Frontend Applications (Android & iOS)

Official client frontend mobile applications for **NAA TV Telugu** (`com.naatvtelugu.news`).

This repository contains both the native **Android** (Jetpack Compose) and native **iOS** (SwiftUI) applications.

---

## 📱 Repository Structure

```
news-application-frontend/
├── android/                   # Native Android Application (Jetpack Compose, Kotlin, Material 3)
│   ├── app/
│   │   ├── src/main/java/com/naatvtelugu/news/
│   │   │   ├── MainActivity.kt
│   │   │   ├── ui/screens/    # HomeScreen, ArticleScreen, MoreScreen, AdminPanelScreen, SplashScreen, etc.
│   │   │   └── data/          # Models, Repository, Stores, LocationHelper, Translation
│   │   └── src/main/res/      # Layouts, drawables, fonts, mipmaps, colors
│   ├── build.gradle.kts
│   └── gradlew
│
├── ios/                       # Native iOS Application (Swift 5, SwiftUI, Combine)
│   ├── NaaTvTelugu.xcodeproj/ # Complete Xcode project (iOS 16.0+)
│   ├── NaaTvTelugu/
│   │   ├── NaaTvTeluguApp.swift
│   │   ├── Views/             # HomeExploreView, NewsWatchingView, CategoriesSheetView, AdminPanelView, etc.
│   │   ├── ViewModels/        # NewsViewModel (MainActor)
│   │   ├── Services/          # LocationManager, AuthStore, NewsRepository, NewsStore
│   │   ├── Models/            # NewsItem, AppUser, CustomPost, AdminSettings, AppLanguage
│   │   ├── Theme/             # Navy & Gold color definitions
│   │   └── Resources/         # Assets.xcassets (1024x1024 AppIcon, official logos)
│   └── Info.plist
│
└── .github/workflows/
    └── ios-build.yml          # Automated CI/CD macOS runner to build .ipa packages
```

---

## 🎨 Brand Design System
- **Navy Primary**: `#0A192F`
- **Gold Accent**: `#E5A93C` / `#F5B700`
- **Dark Surface**: `#112240` / `#050B14`
- **Typography**: Custom headline scaling (16–32pt) & body scaling (12–22pt) with full Telugu Unicode support.

---

## 🚀 Building the Applications

### Android (APK)
```bash
cd android
./gradlew assembleDebug
# Generated APK: android/app/build/outputs/apk/debug/app-debug.apk
```

### iOS (IPA / Xcode)
```bash
cd ios
open NaaTvTelugu.xcodeproj
# Press Cmd + R to run on Simulator / iPhone, or Product > Archive to build IPA
```

---

## © Copyright
`© 2018 NAA TV Telugu. All Rights Reserved.`
