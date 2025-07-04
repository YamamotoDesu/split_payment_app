// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Split Payment App';

  @override
  String get welcome => 'Welcome';

  @override
  String get addExpense => 'Add Expense';

  @override
  String get expenseTitle => 'Expense Title';

  @override
  String get amount => 'Amount';

  @override
  String get save => 'Save';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Edit';

  @override
  String get total => 'Total';

  @override
  String get perPerson => 'Per Person';

  @override
  String get noExpenses => 'No expenses yet';

  @override
  String get addYourFirstExpense => 'Add your first expense to get started';
}
