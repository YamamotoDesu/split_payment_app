import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'locale_provider.g.dart';

@riverpod
class AppLocale extends _$AppLocale {
  @override
  Locale build() {
    // Get the device's locale setting
    final platformLocale = WidgetsBinding.instance.platformDispatcher.locale;

    // Check if the language is supported
    if (platformLocale.languageCode == 'ja') {
      return const Locale('ja');
    }

    // Default to English
    return const Locale('en');
  }

  void toggle() {
    state =
        state.languageCode == 'en' ? const Locale('ja') : const Locale('en');
  }
}
