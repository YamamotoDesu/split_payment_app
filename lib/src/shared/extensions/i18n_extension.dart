import 'package:flutter/material.dart';
import 'package:split_payment_app/l10n/app_localizations.dart';

extension I18nExtension on BuildContext {
  /// Get the localized strings for the current context
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
