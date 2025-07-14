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
