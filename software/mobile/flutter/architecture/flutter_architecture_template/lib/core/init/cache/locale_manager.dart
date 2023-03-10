import 'package:shared_preferences/shared_preferences.dart';
import '../../constants/enums/preferences_keys_enum.dart';

class LocaleManager {
  static LocaleManager _instance = LocaleManager._init();

  SharedPreferences? _preferences;

  static LocaleManager? get instance => _instance;

  LocaleManager._init() {
    SharedPreferences.getInstance().then((value) {
      _preferences = value;
    });
  }

  static preferencesInit() async {
    if (instance!._preferences == null) {
      instance!._preferences = await SharedPreferences.getInstance();
    }
  }

  void setStringValue(PreferencesKeys key, String value) {
    _preferences!.setString(key.toString(), value);
  }

  String? getStringValue(PreferencesKeys key) =>
      _preferences!.getString(key.toString() ?? "");
}
