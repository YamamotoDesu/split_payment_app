// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => '割り勘アプリ';

  @override
  String get welcome => 'ようこそ';

  @override
  String get addExpense => '支出を追加';

  @override
  String get expenseTitle => '支出タイトル';

  @override
  String get amount => '金額';

  @override
  String get save => '保存';

  @override
  String get cancel => 'キャンセル';

  @override
  String get delete => '削除';

  @override
  String get edit => '編集';

  @override
  String get total => '合計';

  @override
  String get perPerson => '一人あたり';

  @override
  String get noExpenses => '支出がまだありません';

  @override
  String get addYourFirstExpense => '最初の支出を追加して始めましょう';
}
