import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/radio_station.dart';

part 'current_station.g.dart';

@Riverpod(keepAlive: true)
class CurrentStation extends _$CurrentStation {
  @override
  RadioStation build() {
    return RadioStation.empty();
  }

  void setCurrentStation(RadioStation station) {
    state = station;
  }
}
