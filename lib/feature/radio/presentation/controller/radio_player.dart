import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'current_station.dart';
import '../../model/radio_station.dart';

part 'radio_player.g.dart';

@Riverpod(keepAlive: true)
class RadioPlayer extends _$RadioPlayer {
  final AudioPlayer _audioPlayer = AudioPlayer();

  bool get isPlaying => (state == PlayerState.playing);

  @override
  PlayerState build() {
    _audioPlayer.onPlayerStateChanged.listen((newState) {
      state = newState;
    });

    return PlayerState.disposed;
  }

  Future<void> play(RadioStation station) async {
    final currentstationProvider = ref.read(currentStationProvider.notifier);
    currentstationProvider.setCurrentStation(station);

    await _audioPlayer.play(UrlSource(station.url));
  }

  Future<void> stop() async {
    final currentstationProvider = ref.read(currentStationProvider.notifier);
    currentstationProvider.setCurrentStation(RadioStation.empty());

    await _audioPlayer.stop();
  }
}
