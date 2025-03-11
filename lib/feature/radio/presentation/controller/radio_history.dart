import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/radio_station.dart';
import '../../repository/realm/realm_manager.dart';

part 'radio_history.g.dart';

@riverpod
class RadioHistory extends _$RadioHistory {
  @override
  Future<List<RadioStation>> build({int page = 0}) async {
    return _retrieveStations(page: page);
  }

  Future<List<RadioStation>> _retrieveStations({int page = 0}) async {
    final result = await RealmManager().retrieveStations(page: page);
    final radioStations = List<RadioStation>.empty(growable: true);
    for (var e in result) {
      final radioStation = RadioStation(
        stationUuid: e.stationUuid,
        name: e.name ?? "",
        url: e.url ?? "",
        favicon: e.favIcon,
      );
      radioStations.add(radioStation);
    }

    return radioStations;
  }

  void queryStations({int page = 0}) async {
    final value = await _retrieveStations(page: page);
    state = AsyncData(value);
  }
}
