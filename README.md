# Flutter Flavor Setup (Android & iOS)

A Flutter project demonstrating how to set up multiple flavors (environments) for Android and iOS, such as **development**, **staging**, and **production**.

## 📌 Features
- Configure **flavors** for both Android & iOS.
- Maintain separate **API endpoints**, **icons**, and **app names**.
- Easily switch between **environments** during development.
- Supports **Firebase & other third-party services** per flavor.

## 📂 Project Structure
```
/your_project
│── lib/
│   ├── main_dev.dart  (Entry point for Development)
│   ├── main_uat.dart  (Entry point for Staging)
│   ├── main_prod.dart  (Entry point for Production)
│   ├── flavor_config.dart  (Configuration for flavors)
│
│── android/
│   ├── app/build.gradle  (Flavor configurations)
│── ios/
│   ├── Runner.xcworkspace  (Manage schemes)
```

### Running Flavors
#### 🟢 Development
```sh
flutter run --flavor dev -t lib/main_dev.dart
```
#### 🟠 UAT
```sh
flutter run --flavor staging -t lib/main_staging.dart
```
#### 🔴 Production
```sh
flutter run --flavor prod -t lib/main_prod.dart
```

## 🎯 Additional Configurations
### 🔹 Android
Modify `android/app/build.gradle`:
```gradle
 flavorDimensions  "flavor"

    productFlavors {
       dev {
            dimension "flavor"
            applicationIdSuffix  ".dev"
            versionNameSuffix  "-dev"
            resValue "string", "app_name", "MyApp Dev"
        }
       uat {
            dimension  "flavor"
            applicationIdSuffix  ".uat"
            versionNameSuffix  "-uat"
            resValue "string", "app_name", "MyApp UAT"
        }
       prod {
            dimension  "flavor"
            resValue "string", "app_name", "MyApp"
        }
    }

```

### 🔹 iOS
Create different **Schemes** in Xcode:
1. Open `Runner.xcworkspace` in Xcode.
2. Duplicate the `Runner` scheme.
3. Rename schemes to **dev, staging, prod**.
4. Associate them with the corresponding **.xcconfig** files.

## 🛠️ Resources
- [Official Flutter Docs](https://docs.flutter.dev/deployment/flavors/)
- [flutter_flavorizr GitHub](https://github.com/AngeloAvv/flutter_flavorizr)

## 📜 License
This project is licensed under the MIT License.

