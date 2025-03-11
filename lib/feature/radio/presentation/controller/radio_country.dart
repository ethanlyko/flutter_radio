import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/api_result.dart';
import '../../model/radio_country.dart';
import '../../repository/model/country.dart';
import '../../repository/realm/realm_manager.dart';
import '../../repository/realm/schema.dart';
import '../../usecase/radio_service.dart';

part 'radio_country.g.dart';

@riverpod
class RadioCountry extends _$RadioCountry {
  @override
  Future<List<RadioCountryModel>> build() async {
    final modelList = List<RadioCountryModel>.empty(growable: true);
    final realms = await RealmManager().retrieveCountriesOfToday();
    if (realms.isEmpty) {
      var realmList = List<CountryRealm>.empty(growable: true);
      var result = await ref.watch(radioServiceProvider).getCountries();
      switch (result) {
        case Success<List<Country>>():
          for (var e in result.data) {
            if (e.stationcount < 5) {
              continue;
            }

            final realm = CountryRealm(e.name, e.stationcount);
            realmList.add(realm);

            final model =
                RadioCountryModel(name: e.name, count: e.stationcount);
            modelList.add(model);
          }

          RealmManager().createCountries(realms);
          break;

        case Failure<List<Country>>():
          print("failure result.e type: ${result.e.runtimeType}");
          break;
      }
    } else {
      for (var e in realms) {
        final model = RadioCountryModel(name: e.name, count: e.stationCount);
        modelList.add(model);
      }
    }

    return modelList;
  }
}
