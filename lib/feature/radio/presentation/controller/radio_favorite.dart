import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/radio_station.dart';
import '../../repository/realm/realm_manager.dart';

part 'radio_favorite.g.dart';

@riverpod
class RadioFavorite extends _$RadioFavorite {
  @override
  Future<List<RadioStation>> build() async {
    final result = await RealmManager().retrieveFavorite();
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
}
