# Split Payment App

## Development Setup

### Prerequisites

- [FVM (Flutter Version Management)](https://fvm.app/)
- [Flutter](https://flutter.dev/)
- [Dart](https://dart.dev/)

### Flutter Version
- Flutter: 3.19.3
- Dart: 3.3.1

This project uses FVM to manage Flutter SDK versions. To set up the development environment:

1. Install FVM:
   ```bash
   dart pub global activate fvm
   ```

2. Install the specified Flutter version:
   ```bash
   fvm install
   ```

3. Use the installed Flutter version:
   ```bash
   fvm use
   ```

### Running the App

Use FVM to run Flutter commands:

```bash
# Run the app
fvm flutter run

# Get dependencies
fvm flutter pub get

# Build the app
fvm flutter build ios  # For iOS
fvm flutter build apk  # For Android
```
