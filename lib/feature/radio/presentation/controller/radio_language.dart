import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/api_result.dart';
import '../../model/radio_language.dart';
import '../../repository/model/language.dart';
import '../../repository/realm/realm_manager.dart';
import '../../repository/realm/schema.dart';
import '../../usecase/radio_service.dart';

part 'radio_language.g.dart';

@riverpod
class RadioLanguage extends _$RadioLanguage {
  @override
  Future<List<RadioLanguageModel>> build() async {
    final modelList = List<RadioLanguageModel>.empty(growable: true);
    final realms = await RealmManager().retrieveLanguagesOfToday();
    if (realms.isEmpty) {
      var realmList = List<LanguageRealm>.empty(growable: true);
      var result = await ref.watch(radioServiceProvider).getLanguages();
      switch (result) {
        case Success<List<Language>>():
          for (var e in result.data) {
            if (e.stationcount < 5) {
              continue;
            }

            final realm = LanguageRealm(e.name, e.stationcount);
            realmList.add(realm);

            final model =
                RadioLanguageModel(name: e.name, count: e.stationcount);
            modelList.add(model);
          }

          RealmManager().createLanguages(realms);
          break;

        case Failure<List<Language>>():
          print("failure result.e type: ${result.e.runtimeType}");
          break;
      }
    } else {
      for (var e in realms) {
        final model = RadioLanguageModel(name: e.name, count: e.stationCount);
        modelList.add(model);
      }
    }

    return modelList;
  }
}
