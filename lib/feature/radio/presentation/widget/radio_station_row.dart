import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/app_style.dart';
import '../../model/radio_station.dart';
import '../../repository/realm/realm_manager.dart';
import '../../repository/realm/schema.dart';
import '../controller/current_station.dart';
import '../controller/radio_player.dart';

class RadioStationRow extends ConsumerStatefulWidget {
  final RadioStation station;
  final int? index;

  const RadioStationRow(this.station, {this.index, super.key});

  @override
  ConsumerState<RadioStationRow> createState() => _RadioStationsRowState();
}

class _RadioStationsRowState extends ConsumerState<RadioStationRow> {
  late RadioPlayer _audioPlayer;
  final ValueNotifier<bool> _favorite = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _checkFavorite();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentStation = ref.watch(currentStationProvider);
    _audioPlayer = ref.watch(radioPlayerProvider.notifier);
    final isPlaying = _audioPlayer.isPlaying &&
        widget.station.stationUuid == currentStation.stationUuid;

    final name = (widget.index != null)
        ? "${widget.index! + 1}. ${widget.station.name}"
        : widget.station.name;

    Widget w = Column(
      children: [
        Row(
          children: [
            widget.station.favicon != null
                ? CachedNetworkImage(
                    imageUrl: widget.station.favicon!,
                    width: 48,
                    height: 48,
                    errorWidget: (context, url, error) => Icon(
                      Icons.radio,
                      size: 48,
                      color: AppStyle.iconColor,
                    ),
                  )
                : Icon(
                    Icons.radio,
                    size: 48,
                    color: AppStyle.iconColor,
                  ),
            const SizedBox(width: 10),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 200),
              child: Text(
                name,
                overflow: TextOverflow.ellipsis,
                style: AppStyle.textSmaller,
              ),
            ),
            const Spacer(),
            ValueListenableBuilder(
              valueListenable: _favorite,
              builder: (context, value, _) {
                return IconButton(
                  onPressed: () => _toggleFavorite(),
                  icon: const Icon(Icons.favorite, size: 28),
                  color: (_favorite.value) ? Colors.blueGrey : Colors.grey,
                );
              },
            ),
            InkWell(
              onTap: isPlaying ? null : _play,
              child: Icon(
                Icons.play_arrow,
                size: 32,
                color: isPlaying ? Colors.blueGrey : Colors.grey,
              ),
            ),
            InkWell(
              onTap: isPlaying ? _stop : null,
              child: const Icon(
                Icons.stop,
                size: 32,
                color: Colors.grey,
              ),
            )
          ],
        ),
        const Divider(),
      ],
    );

    return w;
  }

  _checkFavorite() {
    final station = RealmManager().retrieveStation(widget.station.stationUuid);
    _favorite.value = (station != null && station.favorite);
  }

  _toggleFavorite() {
    _favorite.value = !_favorite.value;
    RealmManager().createStation(StationRealm(
      widget.station.stationUuid,
      name: widget.station.name,
      url: widget.station.url,
      favIcon: widget.station.favicon,
      favorite: _favorite.value,
      dateTime: DateTime.now(),
    ));
  }

  Future<void> _play() async {
    await _audioPlayer.play(widget.station);

    setState(() {});

    RealmManager().createStation(StationRealm(
      widget.station.stationUuid,
      name: widget.station.name,
      url: widget.station.url,
      favIcon: widget.station.favicon,
      favorite: _favorite.value,
      dateTime: DateTime.now(),
    ));
  }

  Future<void> _stop() async {
    await _audioPlayer.stop();

    setState(() {});
  }
}
