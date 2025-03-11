import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/app_style.dart';
import '../../model/radio_const.dart';
import '../../repository/realm/realm_manager.dart';
import '../controller/radio_history.dart';
import 'radio_station_row.dart';

class RadioHistoryWidget extends ConsumerStatefulWidget {
  const RadioHistoryWidget({super.key});

  @override
  ConsumerState<RadioHistoryWidget> createState() => _RadioHistoryState();
}

class _RadioHistoryState extends ConsumerState<RadioHistoryWidget> {
  @override
  Widget build(BuildContext context) {
    final count = RealmManager().retrieveStationCount();

    Widget w;
    w = ListView.builder(
      itemCount: count,
      itemBuilder: (context, index) {
        final page = index ~/ RadioConst.queryLimit;
        final indexInPage = index % RadioConst.queryLimit;
        final radioStations = ref.watch(radioHistoryProvider(page: page));
        return radioStations.when(
          data: (data) {
            if (indexInPage >= data.length) {
              return null;
            }

            return RadioStationRow(
              data[indexInPage],
            );
          },
          loading: () => Center(
            child: CircularProgressIndicator(
              color: AppStyle.iconColor,
            ),
          ),
          error: (e, s) {
            return Center(child: Text(e.toString()));
          },
        );
      },
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: w,
    );
  }
}
