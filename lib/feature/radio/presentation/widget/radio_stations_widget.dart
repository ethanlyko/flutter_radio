import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../generated/l10n.dart';
import '../../../common/app_style.dart';
import '../../model/radio_const.dart';
import '../../model/radio_station.dart';
import '../../util/radio_preference.dart';
import '../controller/radio_country.dart';
import '../controller/radio_language.dart';
import '../controller/radio_stations.dart';
import 'filter_button.dart';
import 'radio_station_row.dart';

class RadioStationsWidget extends ConsumerStatefulWidget {
  const RadioStationsWidget({super.key});

  @override
  ConsumerState<RadioStationsWidget> createState() =>
      _RadioStationsWidgetState();
}

class _RadioStationsWidgetState extends ConsumerState<RadioStationsWidget> {
  final ScrollController scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final queryType = RadioPreference.getQueryType();

    Widget w = ListView.builder(
      controller: scrollController,
      prototypeItem: RadioStationRow(
        RadioStation(
          stationUuid: "uuid",
          name: "station",
          url: "url",
        ),
      ),
      itemBuilder: (context, index) {
        final page = index ~/ RadioConst.queryLimit;
        final indexInPage = index % RadioConst.queryLimit;
        final radioStations = ref.watch(radioStationsProvider(page: page));
        return radioStations.when(
          data: (data) {
            if (indexInPage >= data.length) {
              return null;
            }

            return RadioStationRow(
              data[indexInPage],
              index: index,
            );
          },
          loading: () {
            return Center(
              child: CircularProgressIndicator(
                color: AppStyle.iconColor,
              ),
            );
          },
          error: (e, s) {
            return Center(child: Text(e.toString()));
          },
        );
      },
    );

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  OutlinedButton(
                    onPressed: () {
                      ref.invalidate(radioStationsProvider);
                      scrollController.jumpTo(0);
                      ref
                          .read(radioStationsProvider().notifier)
                          .queryStationPaging();
                    },
                    style: (queryType == RadioConst.radioQueryStation)
                        ? AppStyle.selectedButtonStyle
                        : AppStyle.transparentButtonStyle,
                    child: Text(
                      S.of(context).radio_station,
                      style: AppStyle.textSmaller,
                    ),
                  ),
                  const SizedBox(width: 5),
                  FilterButton(
                    name: S.of(context).radio_tag,
                    isSelected: (queryType == RadioConst.radioQueryTag),
                    list: RadioConst.radioTagQueries,
                    onResult: (value) {
                      ref.invalidate(radioStationsProvider);
                      scrollController.jumpTo(0);
                      ref
                          .read(radioStationsProvider().notifier)
                          .queryStationByTagPaging(value);
                    },
                  ),
                  const SizedBox(width: 5),
                  Consumer(builder: (context, ref, child) {
                    final radioCountries = ref.watch(radioCountryProvider);

                    return (radioCountries.value != null)
                        ? FilterButton(
                            name: S.of(context).radio_country,
                            isSelected:
                                (queryType == RadioConst.radioQueryCountry),
                            list: radioCountries.value!
                                .where((e) =>
                                    e.name.startsWith(RegExp(r'[A-Za-z]')) &&
                                    e.name.length >= 4)
                                .map((e) => "${e.name}, ${e.count}")
                                .toList(),
                            onResult: (value) {
                              final term = value.split(",");
                              if (term.isNotEmpty) {
                                ref.invalidate(radioStationsProvider);
                                scrollController.jumpTo(0);
                                ref
                                    .read(radioStationsProvider().notifier)
                                    .queryStationByCountryPaging(term[0]);
                              }
                            },
                          )
                        : const SizedBox.shrink();
                  }),
                  const SizedBox(width: 5),
                  Consumer(builder: (context, ref, child) {
                    final radioLanguages = ref.watch(radioLanguageProvider);

                    return (radioLanguages.value != null)
                        ? FilterButton(
                            name: S.of(context).radio_language,
                            isSelected:
                                (queryType == RadioConst.radioQueryLanguage),
                            list: radioLanguages.value!
                                .where((e) {
                                  return e.name
                                          .startsWith(RegExp(r'[A-Za-z]')) &&
                                      e.name.length >= 4;
                                })
                                .map((e) => "${e.name}, ${e.count}")
                                .toList(),
                            onResult: (value) {
                              final term = value.split(",");
                              if (term.isNotEmpty) {
                                ref.invalidate(radioStationsProvider);
                                scrollController.jumpTo(0);
                                ref
                                    .read(radioStationsProvider().notifier)
                                    .queryStationByLanguagePaging(term[0]);
                              }
                            },
                          )
                        : const SizedBox.shrink();
                  }),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Expanded(child: w),
          ],
        ));
  }
}
