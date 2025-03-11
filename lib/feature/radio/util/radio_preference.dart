import '../../../util/preference/shared_preference.dart';
import '../model/radio_const.dart';

class RadioPreference {
  static const String _keyRadioQueryType = "radio_query_type";
  static const String _keyRadioQueryKey = "radio_query_key";

  static Future<bool> setQueryType(String value) async =>
      SharedPref.setKeyString(_keyRadioQueryType, value);
  static String? getQueryType() => SharedPref.getKeyString(_keyRadioQueryType,
      defaultValue: RadioConst.radioQueryStation);

  static Future<bool> setQueryKey(String value) async =>
      SharedPref.setKeyString(_keyRadioQueryKey, value);
  static String getQueryKey() => SharedPref.getKeyString(_keyRadioQueryKey);
}
