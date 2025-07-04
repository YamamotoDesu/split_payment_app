# Firebase Setup & Integration

Step 1: If you haven't already, [install the Firebase CLI] npm install -g firebase-tools

Step 2: Log into Firebase using your Google account by running the following command:

firebase login

Step 3: Install the FlutterFire CLI by running the following command from any directory:

dart pub global activate flutterfire_cli

Step 4: flutterfire configure

**Note:**
The flutterfire configure workflow does the following:

- Asks you to select the platforms (iOS, Android, Web) supported in your Flutter app. For each selected platform, the FlutterFire CLI creates a new Firebase app in your Firebase project.
- You can select either to use an existing Firebase project or to create a new Firebase project. If you already have apps registered in an existing Firebase project, the FlutterFire CLI will attempt to match them based on your current Flutter project configuration.

**Tips for setting up and managing your Firebase project:**
- Check out our best practices for adding apps to a Firebase project, including how to handle multiple variants.
- Enable Google Analytics in your project, which enables you to have an optimal experience using many Firebase products, like Crashlytics and Remote Config.
- Creates a Firebase configuration file (`firebase_options.dart`) and adds it to your `lib/` directory.

> Note: This Firebase config file contains unique, but non-secret identifiers for each platform you selected. Visit Understand Firebase Projects to learn more about this config file.

- (for Crashlytics or Performance Monitoring on Android) Adds the required product-specific Gradle plugins to your Flutter app.

> Note: For the FlutterFire CLI to add the appropriate Gradle plugin, the product's Flutter plugin must already be imported into your Flutter app.

**After this stage, a `firebase_options.dart` file will be generated. It will also include two configuration files named `google-services.json` for Android and `GoogleService-Info.plist` for iOS.**

Step 5: Run the following code in the project directory:

1. flutter pub add firebase_core
2. flutterfire configure
3. flutter pub add firebase_core
4. Add the required code for Firebase in main.dart
5. fvm flutter run



## Firebase Configuration for Flutter

To integrate Firebase with your Flutter app in this project, follow these steps after running the FlutterFire CLI:

1. **Add Configuration Files:**
   - Place the generated `google-services.json` file in `android/app/`.
   - Place the generated `GoogleService-Info.plist` file in `ios/Runner/`.
   - The `firebase_options.dart` file will be automatically added to your `lib/` directory by the FlutterFire CLI.

2. **Initialize Firebase in Your App:**
   - In your `lib/main.dart`, ensure you initialize Firebase before running the app. Example:
     ```dart
     import 'package:firebase_core/firebase_core.dart';
     import 'firebase_options.dart';
     // ... other imports

     void main() async {
       WidgetsFlutterBinding.ensureInitialized();
       await Firebase.initializeApp(
         options: DefaultFirebaseOptions.currentPlatform,
       );
       runApp(MyApp());
     }
     ```

3. **Add Firebase Plugins:**
   - Add any additional Firebase plugins you need (e.g., `cloud_firestore`, `firebase_auth`, etc.) using:
     ```bash
     flutter pub add <plugin_name>
     ```
   - See the [FlutterFire documentation](https://firebase.flutter.dev/docs/overview) for a list of supported plugins and setup instructions.

4. **Platform-Specific Setup:**
   - For Android, ensure your `android/build.gradle` and `android/app/build.gradle` files include the required Firebase and Google services plugins. The FlutterFire CLI usually handles this, but double-check if you encounter issues.
   - For iOS, make sure you run `pod install` in the `ios/` directory after adding plugins.

5. **Troubleshooting:**
   - If you encounter issues, refer to the [FlutterFire documentation](https://firebase.flutter.dev/docs/overview) and the [official Firebase setup guide for Flutter](https://firebase.google.com/docs/flutter/setup?platform=ios).

## Firebase Configuration Files Explained

### google-services.json (Android)
- **Location:** `android/app/google-services.json`
- **Purpose:** This file contains configuration data for your Android app to connect with Firebase services. It includes information such as your Firebase project number, project ID, API keys, and app-specific identifiers. The file is required for Firebase SDKs to initialize and communicate with your Firebase project on Android devices.
- **How it's generated:** The file is generated when you register your Android app in the Firebase Console and download the configuration file. It should be placed in the `android/app/` directory of your Flutter project.

### GoogleService-Info.plist (iOS)
- **Location:** `ios/Runner/GoogleService-Info.plist`
- **Purpose:** This file contains configuration data for your iOS app to connect with Firebase services. It includes your API key, project ID, app ID, and other identifiers required by Firebase SDKs to initialize and communicate with your Firebase project on iOS devices.
- **How it's generated:** The file is generated when you register your iOS app in the Firebase Console and download the configuration file. It should be placed in the `ios/Runner/` directory of your Flutter project.

> **Note:** Both files are essential for enabling Firebase features in your app. Do not share these files publicly, as they contain sensitive project information.
