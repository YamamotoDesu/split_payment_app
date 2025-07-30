# Split Payment App

## Development Setup

### Prerequisites

- [FVM (Flutter Version Management)](https://fvm.app/)
- Flutter 3.32.0 or higher
- Dart SDK 3.5.0 or higher
- [`flutter_flavorizr: ^2.4.1`](https://pub.dev/packages/flutter_flavorizr)

### VS Code Extensions

To enhance your development experience, we recommend installing the following VS Code extensions:

- **Flutter** - Official Flutter extension for VS Code
- **Dart** - Dart language support
- **Flutter Intl** - Internationalization support for Flutter
- **Error Lens** - Enhanced error reporting
- **GitLens** - Enhanced Git capabilities
- **Prettier** - Code formatter
- **Bracket Pair Colorizer** - Colorized bracket pairs

You can install these extensions by:

1. Opening VS Code
2. Going to Extensions (Ctrl+Shift+X / Cmd+Shift+X)
3. Searching for each extension and clicking "Install"

### Flutter Version

- Flutter: 3.32.0
- Dart: 3.5.0

This project uses FVM to manage Flutter SDK versions. To set up the development environment:

1. Install FVM:

   ```bash
   dart pub global activate fvm
   ```

2. Install the specified Flutter version:

   ```bash
   fvm install 3.32.0
   ```

3. Use the installed Flutter version:
   ```bash
   fvm use
   ```

### Running the App

Use FVM to run Flutter commands:

```bash
# Run the app with the default flavor (development)
fvm flutter run --flavor development

# Run the app with the production flavor
fvm flutter run --flavor production

# Get dependencies
fvm flutter pub get

# Build the app for iOS (specify flavor)
fvm flutter build ios --flavor development
fvm flutter build ios --flavor production

# Build the app for Android (specify flavor)
fvm flutter build apk --flavor development
fvm flutter build apk --flavor production
```

### Code Style

This project uses:

- `flutter_lints: ^5.0.0`
- `very_good_analysis: ^6.0.0`

To analyze the code:

```bash
fvm flutter analyze
```

## Firebase Integration

This Split Payment App is fully integrated with Firebase services, providing a robust backend infrastructure for authentication, data storage, and real-time features. The integration is configured to support multiple environments (development and production) with separate Firebase projects.

### Firebase Project Configuration

**Project Details:**

- **Project ID:** `mobile-app-stg-50d79`
- **Project Number:** `564642241108`
- **Storage Bucket:** `mobile-app-stg-50d79.firebasestorage.app`

### Firebase Dependencies

The app uses the following Firebase packages:

```yaml
dependencies:
  firebase_core: ^4.0.0 # Core Firebase functionality
```

### Firebase Configuration Files

#### 1. Root Configuration

- **`firebase.json`** - Main Firebase configuration file that defines platform-specific settings
- **`lib/firebase_options.dart`** - Auto-generated Firebase options for different platforms

#### 2. Environment-Specific Configurations

**Development Environment:**

```
.firebase/development/
├── google-services.json          # Android configuration for development
└── GoogleService-Info.plist      # iOS configuration for development
```

**Production Environment:**

```
.firebase/production/
├── google-services.json          # Android configuration for production
└── GoogleService-Info.plist      # iOS configuration for production
```

Note: I will provide those files Privately

#### 3. Platform-Specific Configurations

**Android Configuration:**

- **Main Config:** `android/app/google-services.json`
- **Development Flavor:** `android/app/src/development/google-services.json`
- **Production Flavor:** `android/app/src/production/google-services.json`

**iOS Configuration:**

- **Main Config:** `ios/Runner/GoogleService-Info.plist`
- **Development Flavor:** `ios/Runner/development/GoogleService-Info.plist`
- **Production Flavor:** `ios/Runner/production/GoogleService-Info.plist`

### Firebase App Identifiers

#### Android Apps:

- **Development:** `com.ioaholdings.mobile.splitpayment.dev`
- **Production:** `com.ioaholdings.mobile.splitpayment.prd`

#### iOS Apps:

- **Development:** `com.ioaholdings.mobile.splitpayment.dev`
- **Production:** `com.ioaholdings.mobile.splitpayment.prd`

### Firebase Services Configuration

The Firebase configuration includes the following services:

#### Enabled Services:

- **App Invite Service** - For app sharing and user invitations
- **Google Cloud Messaging (GCM)** - For push notifications
- **Sign-in Service** - For user authentication

#### Disabled Services:

- **Analytics** - Currently disabled
- **Ads** - Currently disabled

### Firebase Integration in Code

#### 1. Firebase Initialization

The app initializes Firebase in the main entry point:

```dart
// lib/main.dart
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}
```

#### 2. Platform-Specific Options:

"firebase_options.dart" this file will be send Privately, So please include this file inside this file location "lib/firebase_options.dart"

### Flavor-Based Firebase Configuration

The app uses `flutter_flavorizr` to manage different Firebase configurations for development and production environments:

```yaml
# pubspec.yaml
flavorizr:
  flavors:
    development:
      android:
        applicationId: "com.ioaholdings.mobile.splitpayment.dev"
        firebase:
          config: ".firebase/development/google-services.json"
      ios:
        bundleId: "com.ioaholdings.mobile.splitpayment.dev"
        firebase:
          config: ".firebase/development/GoogleService-Info.plist"
    production:
      android:
        applicationId: "com.ioaholdings.mobile.splitpayment.prd"
        firebase:
          config: ".firebase/production/google-services.json"
      ios:
        bundleId: "com.ioaholdings.mobile.splitpayment.prd"
        firebase:
          config: ".firebase/production/GoogleService-Info.plist"
```

### Firebase Setup Instructions

1. **Install Firebase CLI:**

   ```bash
   npm install -g firebase-tools
   ```

2. **Login to Firebase:**

   ```bash
   firebase login
   ```

3. **Initialize Firebase in the project:**

   ```bash
   firebase init
   ```

4. **Configure FlutterFire CLI:**

   ```bash
   dart pub global activate flutterfire_cli
   ```

5. **Generate Firebase configuration:**
   ```bash
   flutterfire configure
   ```

## How Firebase Configuration Sharing Works

Since Firebase configuration files contain sensitive information and are not committed to the repository, follow these steps to share Firebase configuration with team members.

### 1. **Firebase Project Access**

- The configuration files contain the **project ID** and **app identifiers** that link to your specific Firebase project
- Anyone with these files can connect to the same Firebase project
- They don't need separate Firebase Console access (though it's recommended for security)

### 2. **What Your Boss Needs to Do**

**Step 1: Place the Configuration Files**

```bash
# Copy the files to the correct locations
cp google-services.json android/app/
cp google-services.json .firebase/development/
cp google-services.json .firebase/production/

cp GoogleService-Info.plist ios/Runner/
cp GoogleService-Info.plist .firebase/development/
cp GoogleService-Info.plist .firebase/production/
```

**Step 2: Run FlutterFire Configure**

```bash
# Install FlutterFire CLI if not already installed
dart pub global activate flutterfire_cli

# Configure Firebase - this will read your existing config files
flutterfire configure
```

**Step 3: Verify Configuration**
The `flutterfire configure` command will:

- Read your existing `google-services.json` and `GoogleService-Info.plist` files
- Generate/update `lib/firebase_options.dart` with the correct configuration
- Confirm the connection to your Firebase project

### 3. **What Happens During Configuration**

When your Boss runs `flutterfire configure`:

1. **Reads Existing Config**: FlutterFire CLI reads the configuration files you provided
2. **Validates Connection**: It connects to your Firebase project using the project ID
3. **Generates Options**: Creates/updates `lib/firebase_options.dart` with your project's settings
4. **Confirms Setup**: Shows success message with your project details

### 4. **Example Output**

```bash
$ flutterfire configure
i Found 1 Firebase project.
? Select a Firebase project to configure your Flutter application with · mobile-app-stg-50d79 (Mobile App STG)
i Firebase android app "com.ioaholdings.mobile.splitpayment.dev" is not registered on Firebase project "mobile-app-stg-50d79".
i Firebase android app "com.ioaholdings.mobile.splitpayment.prd" is not registered on Firebase project "mobile-app-stg-50d79".
i Firebase ios app "com.ioaholdings.mobile.splitpayment.dev" is not registered on Firebase project "mobile-app-stg-50d79".
i Firebase ios app "com.ioaholdings.mobile.splitpayment.prd" is not registered on Firebase project "mobile-app-stg-50d79".
✓ Generated firebase_options.dart successfully.
```

### 5. **Security Considerations**

**✅ What's Safe to Share:**

- `google-services.json` and `GoogleService-Info.plist` (they're designed to be public)
- `firebase.json` (contains project structure, not sensitive data)
- Project ID and API keys (they're meant to be in client apps)

**⚠️ What to Be Careful About:**

- **Firebase Console Access**: Don't share your Firebase Console login credentials
- **Service Account Keys**: Don't share any `.json` files with private keys
- **Database Rules**: Be careful about sharing Firestore/Firebase Database rules

### 6. **Recommended Sharing Process**

**Option A: Direct File Sharing (Quick)**

```bash
# Create a zip file with configuration
zip firebase-config.zip \
  android/app/google-services.json \
  ios/Runner/GoogleService-Info.plist \
  .firebase/development/google-services.json \
  .firebase/development/GoogleService-Info.plist \
  .firebase/production/google-services.json \
  .firebase/production/GoogleService-Info.plist \
  firebase.json
```

**Option B: Firebase Console Access (More Secure)**

1. Add your partner as a **Project Member** in Firebase Console
2. Give them **Viewer** or **Editor** permissions
3. They can download the config files themselves

### 7. **Verification Steps for Your Partner**

After receiving the files, your partner should:

```bash
# 1. Place files in correct locations
# 2. Run configuration
flutterfire configure

# 3. Test the connection
flutter run --flavor development

# 4. Check Firebase options are generated
cat lib/firebase_options.dart
```

### 8. **Troubleshooting**

If your partner encounters issues:

**Error: "Project not found"**

- Check if the project ID in config files matches your Firebase project
- Verify the Firebase project is active and accessible

**Error: "App not registered"**

- The apps might not be registered in Firebase Console
- Your partner can register them using `flutterfire configure`

**Error: "Permission denied"**

- The Firebase project might have restricted access
- Consider adding your partner as a project member

### Summary

**Yes, your partner can definitely connect to your Firebase project** using the configuration files you provide. The `flutterfire configure` command will read those files and establish the connection to your Firebase project. This is actually the standard way Firebase is designed to work - the configuration files are meant to be shared with team members who need to connect to the same Firebase project.

Just make sure to share the files securely (not through public repositories) and consider adding your partner as a Firebase Console member for better collaboration.
**Error: "Permission denied"**

- The Firebase project might have restricted access
- Consider adding your partner as a project member

### Summary

**Yes, your partner can definitely connect to your Firebase project** using the configuration files you provide. The `flutterfire configure` command will read those files and establish the connection to your Firebase project. This is actually the standard way Firebase is designed to work - the configuration files are meant to be shared with team members who need to connect to the same Firebase project.

Just make sure to share the files securely (not through public repositories) and consider adding your partner as a Firebase Console member for better collaboration.
