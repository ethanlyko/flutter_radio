import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/api_result.dart';
import '../../model/radio_const.dart';
import '../../model/radio_station.dart';
import '../../repository/model/station.dart';
import '../../usecase/radio_service.dart';
import '../../util/radio_preference.dart';

part 'radio_stations.g.dart';

@Riverpod(keepAlive: true)
class RadioStations extends _$RadioStations {
  @override
  Future<List<RadioStation>> build({int page = 0}) async {
    final offset = page * RadioConst.queryLimit;
    final queryType = RadioPreference.getQueryType();
    final queryKey = RadioPreference.getQueryKey();
    ApiResult<List<Station>> result;
    switch (queryType) {
      case RadioConst.radioQueryCountry:
        result = await ref
            .watch(radioServiceProvider)
            .getStationsByCountryPaging(queryKey, offset: offset);
        break;

      case RadioConst.radioQueryTag:
        result = await ref
            .watch(radioServiceProvider)
            .getStationsByTagPaging(queryKey, offset: offset);
        break;

      case RadioConst.radioQueryLanguage:
        result = await ref
            .watch(radioServiceProvider)
            .getStationsByLanguagePaging(queryKey, offset: offset);
        break;

      default:
        result = await ref
            .watch(radioServiceProvider)
            .getStationsPaging(offset: offset);
        break;
    }

    return handleApiResult(result);
  }

  List<RadioStation> handleApiResult(ApiResult<List<Station>> result) {
    final radioStations = List<RadioStation>.empty(growable: true);
    switch (result) {
      case Success<List<Station>>():
        for (var e in result.data) {
          final radioStation = RadioStation(
            stationUuid: e.stationUuid,
            name: e.name,
            url: e.url,
            favicon: e.favIcon,
          );
          radioStations.add(radioStation);
        }

        break;

      case Failure<List<Station>>():
        switch (result.e) {
          case ApiException():
            print(
                "ApiException: error=${(result.e as ApiException).errorCode}, msg=${(result.e as ApiException).message}");
            break;

          default:
            print(
                "failure result.e type: ${result.e.runtimeType}"); // ApiException
            break;
        }
        break;
    }

    return radioStations;
  }

  Future<List<RadioStation>> queryStationByTag(String term) async {
    return _queryStation(
      ref.watch(radioServiceProvider).getStationsByTag,
      term: term,
    );
  }

  Future<List<RadioStation>> queryStationByCountry(String term) async {
    final stations = await _queryStation(
      ref.watch(radioServiceProvider).getStationsByCountry,
      term: term,
    );
    state = AsyncData(stations);
    return stations;
  }

  Future<List<RadioStation>> queryStationByLanguage(String term) async {
    return _queryStation(
      ref.watch(radioServiceProvider).getStationsByLanguage,
      term: term,
    );
  }

  Future<List<RadioStation>> _queryStation<T>(
      Future<T> Function(String term) get,
      {required String term}) async {
    var result = await get(term);
    switch (result) {
      case Success<List<Station>>():
        final radioStations = List<RadioStation>.empty(growable: true);
        for (var e in result.data) {
          final radioStation = RadioStation(
            stationUuid: e.stationUuid,
            name: e.name,
            url: e.url,
            favicon: e.favIcon,
          );
          radioStations.add(radioStation);
        }

        return radioStations;

      case Failure<List<Station>>():
        print("failure result.e type: ${result.e.runtimeType}");
        return List.empty();
    }

    return List.empty();
  }

  queryStationPaging({int offset = 0}) async {
    final queryType = RadioPreference.getQueryType();
    if (queryType != RadioConst.radioQueryStation) {
      await RadioPreference.setQueryType(RadioConst.radioQueryStation);
      await RadioPreference.setQueryKey("");

      final result = await ref
          .watch(radioServiceProvider)
          .getStationsPaging(offset: offset);

      final value = handleApiResult(result);
      state = AsyncData(value);
    }
  }

  queryStationByTagPaging(String term, {int offset = 0}) async {
    await RadioPreference.setQueryType(RadioConst.radioQueryTag);
    await RadioPreference.setQueryKey(term);

    final value = await _queryStationPaging(
      ref.watch(radioServiceProvider).getStationsByTagPaging,
      term: term,
      offset: offset,
    );

    state = AsyncData(value);
  }

  queryStationByCountryPaging(String term, {int offset = 0}) async {
    await RadioPreference.setQueryType(RadioConst.radioQueryCountry);
    await RadioPreference.setQueryKey(term);

    final value = await _queryStationPaging(
      ref.watch(radioServiceProvider).getStationsByCountryPaging,
      term: term,
      offset: offset,
    );

    state = AsyncData(value);
  }

  queryStationByLanguagePaging(String term, {int offset = 0}) async {
    await RadioPreference.setQueryType(RadioConst.radioQueryLanguage);
    await RadioPreference.setQueryKey(term);

    final value = await _queryStationPaging(
      ref.watch(radioServiceProvider).getStationsByLanguagePaging,
      term: term,
      offset: offset,
    );

    state = AsyncData(value);
  }

  Future<List<RadioStation>> _queryStationPaging<T>(
      Future<T> Function(String term, {int offset}) get,
      {required String term,
      required int offset}) async {
    var result = await get(term, offset: offset);
    switch (result) {
      case Success<List<Station>>():
        final radioStations = List<RadioStation>.empty(growable: true);
        for (var e in result.data) {
          final radioStation = RadioStation(
            stationUuid: e.stationUuid,
            name: e.name,
            url: e.url,
            favicon: e.favIcon,
          );
          radioStations.add(radioStation);
        }

        return radioStations;

      case Failure<List<Station>>():
        print("failure result.e type: ${result.e.runtimeType}");
        return List.empty();
    }

    return List.empty();
  }
}
