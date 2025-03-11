import 'package:realm/realm.dart';

import '../../model/radio_const.dart';
import 'schema.dart';

class RealmManager {
  RealmManager._internal();
  static final RealmManager _instance = RealmManager._internal();
  factory RealmManager() => _instance;

  var realm = Realm(Configuration.local([
    ModelInfoRealm.schema,
    CountryRealm.schema,
    LanguageRealm.schema,
    StationRealm.schema,
  ]));

  void close() {
    realm.close();
  }

  void updateInfo(String name) {
    var infoRealm = realm.find<ModelInfoRealm>(name);
    ModelInfoRealm newItem;
    if (infoRealm != null) {
      newItem = infoRealm;
      newItem.updated = DateTime.now().toIso8601String();
    } else {
      String now = DateTime.now().toIso8601String();
      newItem = ModelInfoRealm(name, now, now);
    }

    realm.add<ModelInfoRealm>(newItem, update: true);
  }

  Future<void> createStation(StationRealm station) async {
    realm.writeAsync(() {
      realm.add(station, update: true);
    });
  }

  StationRealm? retrieveStation(String stationUuid) {
    return realm.find<StationRealm>(stationUuid);
  }

  void deleteStation(String stationUuid) {
    final station = retrieveStation(stationUuid);
    if (station != null) {
      realm.writeAsync(() => realm.delete(station));
    }
  }

  Future<List<StationRealm>> retrieveFavorite() async {
    return realm.query<StationRealm>("favorite == \$0", [true]).toList();
  }

  int retrieveFavoriteCount() {
    return realm.query<StationRealm>("favorite == \$0", [true]).length;
  }

  int retrieveStationCount() {
    return realm.all<StationRealm>().length;
  }

  void createStations(List<StationRealm> stations) {
    if (stations.isNotEmpty) {
      realm.writeAsync(() {
        realm.addAll(stations, update: true);

        updateInfo(AppRealModel.radioStation.name);
      });
    }
  }

  Future<List<StationRealm>> retrieveStations({
    int page = 0,
    int limit = RadioConst.queryLimit,
  }) async {
    final stations =
        realm.query<StationRealm>("TRUEPREDICATE SORT(dateTime DESC)").toList();
    final start = page * limit;
    final end =
        (start + limit) > stations.length ? stations.length : (start + limit);
    return stations.sublist(start, end);
  }

  Future<void> deleteStations() async {
    realm.writeAsync(() {
      realm.deleteAll<StationRealm>();

      var infoRealm =
          realm.find<ModelInfoRealm>(AppRealModel.radioStation.name);
      if (infoRealm != null) {
        realm.delete<ModelInfoRealm>(infoRealm);
      }
    });
  }

  void createCountries(List<CountryRealm> countries) {
    if (countries.isNotEmpty) {
      realm.writeAsync(() {
        realm.addAll(countries, update: true);

        updateInfo(AppRealModel.radioCountry.name);
      });
    }
  }

  Future<List<CountryRealm>> retrieveCountries() async {
    return realm.all<CountryRealm>().toList();
  }

  void createLanguages(List<LanguageRealm> list) {
    if (list.isNotEmpty) {
      realm.writeAsync(() {
        realm.addAll(list, update: true);

        updateInfo(AppRealModel.radioLanguage.name);
      });
    }
  }

  Future<List<LanguageRealm>> retrieveLanguages() async {
    return realm.all<LanguageRealm>().toList();
  }

  void createTags(List<TagRealm> list) {
    if (list.isNotEmpty) {
      realm.writeAsync(() {
        realm.addAll(list, update: true);

        updateInfo(AppRealModel.radioTag.name);
      });
    }
  }

  Future<List<TagRealm>> retrieveTags() async {
    return realm.all<TagRealm>().toList();
  }

  Future<ModelInfoRealm?> _retrieveRadioInfo(String type) async {
    return realm.find<ModelInfoRealm>(type);
  }

  Future<List<T>> retrieveRadioOfToday<T extends RealmObject>(
      String type) async {
    final info = await _retrieveRadioInfo(type);
    if (info != null) {
      final lastQuery = DateTime.parse(info.lastQuery);
      if (lastQuery.day == DateTime.now().day) {
        return realm.all<T>().toList();
      }
    }

    return List.empty();
  }

  Future<List<TagRealm>> retrieveTagsOfToday() async {
    return retrieveRadioOfToday<TagRealm>(AppRealModel.radioTag.name);
  }

  Future<List<CountryRealm>> retrieveCountriesOfToday() async {
    return retrieveRadioOfToday<CountryRealm>(AppRealModel.radioCountry.name);
  }

  Future<List<LanguageRealm>> retrieveLanguagesOfToday() async {
    return retrieveRadioOfToday<LanguageRealm>(AppRealModel.radioLanguage.name);
  }

  Future<List<StationRealm>> retrieveStationsOfToday() async {
    return retrieveRadioOfToday<StationRealm>(AppRealModel.radioStation.name);
  }

  Future<ModelInfoRealm?> _retrieveRadioStationInfo() async {
    return _retrieveRadioInfo(AppRealModel.radioStation.name);
  }

  Future<List<StationRealm>> retrieveStationsOfToday2() async {
    final info = await _retrieveRadioStationInfo();
    if (info != null) {
      final lastQuery = DateTime.parse(info.lastQuery);
      if (lastQuery.day == DateTime.now().day) {
        return realm.all<StationRealm>().toList();
      }
    }

    return List.empty();
  }
}
