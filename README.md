# Split Payment App

## Development Setup

### Prerequisites

- [FVM (Flutter Version Management)](https://fvm.app/)
- Flutter 3.32.0 or higher
- Dart SDK 3.5.0 or higher
- [`flutter_flavorizr: ^2.4.1`](https://pub.dev/packages/flutter_flavorizr)

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
