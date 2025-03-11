import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../model/radio_const.dart';
import '../model/country.dart';
import '../model/language.dart';
import '../model/station.dart';
import '../model/tag.dart';

part 'radiobrowser_api.g.dart';

@RestApi(baseUrl: 'https://de1.api.radio-browser.info')
abstract class RadioBrowserApi {
  factory RadioBrowserApi(Dio dio) = _RadioBrowserApi;

  @GET('/json/countries')
  Future<List<Country>> getCountries();

  @GET('/json/languages')
  Future<List<Language>> getLanguages();

  @GET('/json/tags')
  Future<List<Tag>> getTags();

  @GET('/json/stations/bytag/{term}')
  Future<List<Station>> getStationsByTag(
    @Path('term') String term,
  );

  @GET('/json/stations/bycountry/{term}')
  Future<List<Station>> getStationsByCountry(
    @Path('term') String term,
  );

  @GET('/json/stations/bylanguage/{term}')
  Future<List<Station>> getStationsByLanguage(
    @Path('term') String term,
  );

  @FormUrlEncoded()
  @POST('/json/stations/bytag/{term}')
  Future<List<Station>> getStationsByTagPaging(
    @Path('term') String term, {
    @Field("offset") int offset = 0,
    @Field("order") String order = RadioConst.queryStationOrderByVotes,
    @Field("limit") int limit = RadioConst.queryLimit,
    @Field("reverse") bool reverse = true,
  });

  @FormUrlEncoded()
  @POST('/json/stations/bycountry/{term}')
  Future<List<Station>> getStationsByCountryPaging(
    @Path('term') String term, {
    @Field("offset") int offset = 0,
    @Field("order") String order = RadioConst.queryStationOrderByVotes,
    @Field("limit") int limit = RadioConst.queryLimit,
    @Field("reverse") bool reverse = true,
  });

  @FormUrlEncoded()
  @POST('/json/stations/bylanguage/{term}')
  Future<List<Station>> getStationsByLanguagePaging(
    @Path('term') String term, {
    @Field("offset") int offset = 0,
    @Field("order") String order = RadioConst.queryStationOrderByVotes,
    @Field("limit") int limit = RadioConst.queryLimit,
    @Field("reverse") bool reverse = true,
  });

  @FormUrlEncoded()
  @POST('/json/stations')
  Future<List<Station>> getStationsPaging({
    @Field("offset") int offset = 0,
    @Field("order") String order = RadioConst.queryStationOrderByVotes,
    @Field("limit") int limit = RadioConst.queryLimit,
    @Field("reverse") bool reverse = true,
  });
}
