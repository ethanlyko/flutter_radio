import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/radio_favorite.dart';
import 'radio_station_row.dart';

class RadioFavoritesWidget extends ConsumerStatefulWidget {
  const RadioFavoritesWidget({super.key});

  @override
  ConsumerState<RadioFavoritesWidget> createState() => _RadioFavoritesState();
}

class _RadioFavoritesState extends ConsumerState<RadioFavoritesWidget> {
  @override
  Widget build(BuildContext context) {
    final radioStations = ref.watch(radioFavoriteProvider);
    Widget w;
    w = radioStations.when(
      data: (data) {
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return RadioStationRow(
              data[index],
            );
          },
        );
      },
      loading: () => Center(
        child: CircularProgressIndicator(
          // color: context.theme.colorScheme.primaryContainer,
          color: Colors.red,
        ),
      ),
      error: (e, s) {
        return Center(child: Text(e.toString()));
      },
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: w,
    );
  }
}
