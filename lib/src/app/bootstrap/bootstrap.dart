import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:split_payment_app/src/app/bootstrap/app.dart';

/// Initialize the application
Future<void> bootstrap() async {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Add any additional initialization logic here
  // For example:
  // - Firebase initialization
  // - Shared preferences setup
  // - Error handling setup
  // - Analytics setup

  // Run the app
  runApp(const ProviderScope(child: MyApp()));
}
