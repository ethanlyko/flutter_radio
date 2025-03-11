import 'package:realm/realm.dart';

part 'schema.realm.dart';

@RealmModel()
class _CountryRealm {
  @PrimaryKey()
  late String name;
  late int stationCount;
}

@RealmModel()
class _LanguageRealm {
  @PrimaryKey()
  late String name;
  late int stationCount;
}

@RealmModel()
class _StationRealm {
  @PrimaryKey()
  late String stationUuid;

  late String? name;
  late String? url;
  late String? favIcon;
  late String? country;
  late String? language;
  late String? codec;
  late int? bitrate;
  late int? hls;
  late int? lastCheckOk;
  bool favorite = false;
  late DateTime? dateTime;
}

enum AppRealModel {
  radioTag,
  radioCountry,
  radioLanguage,
  radioStation,
}

@RealmModel()
class _ModelInfoRealm {
  @PrimaryKey()
  late String name;
  int count = 0;
  late String lastQuery;
  late String updated;
}

@RealmModel()
class _TagRealm {
  @PrimaryKey()
  late String name;
  late int stationCount;
}
