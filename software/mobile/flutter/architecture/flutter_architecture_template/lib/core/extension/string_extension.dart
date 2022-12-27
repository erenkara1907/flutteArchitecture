import 'package:easy_localization/easy_localization.dart';

extension StringLocalization on String {
  String get locale => this.tr();

  // ignore: null_check_always_fails
  String get isValidEmail => contains(RegExp(r'[A-Z]')) ? null! : "Email does not valid";
  

}
