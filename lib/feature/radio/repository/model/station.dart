import 'package:freezed_annotation/freezed_annotation.dart';

part 'station.freezed.dart';
part 'station.g.dart';

@freezed
class Station with _$Station {
  const factory Station({
    // @JsonKey(name: "changeuuid")
    // required String changeuuid,
    @JsonKey(name: "stationuuid") required String stationUuid,
    // required String stationuuid,
    // @JsonKey(name: "serveruuid")
    // required String serveruuid,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "url") required String url,
    // @JsonKey(name: "url_resolved")
    // required String urlResolved,
    // @JsonKey(name: "homepage")
    // required String homepage,
    @JsonKey(name: "favicon") required String favIcon,
    @JsonKey(name: "tags") required String tags,
    @JsonKey(name: "country") required String country,
    // @JsonKey(name: "countrycode")
    // required String countrycode,
    // @JsonKey(name: "iso_3166_2")
    // required String iso31662,
    // @JsonKey(name: "state")
    // required String state,
    @JsonKey(name: "language") required String language,
    // @JsonKey(name: "languagecodes")
    // required String languagecodes,
    // @JsonKey(name: "votes")
    // required int votes,
    // @JsonKey(name: "lastchangetime")
    // required DateTime lastchangetime,
    // @JsonKey(name: "lastchangetime_iso8601")
    // required DateTime lastchangetimeIso8601,
    @JsonKey(name: "codec") required String codec,
    @JsonKey(name: "bitrate") required int bitrate,
    @JsonKey(name: "hls") required int hls,
    @JsonKey(name: "lastcheckok") required int lastCheckOk,
    // @JsonKey(name: "lastchecktime")
    // required DateTime lastchecktime,
    // @JsonKey(name: "lastchecktime_iso8601")
    // required DateTime lastchecktimeIso8601,
    // @JsonKey(name: "lastcheckoktime")
    // required DateTime lastcheckoktime,
    // @JsonKey(name: "lastcheckoktime_iso8601")
    // required DateTime lastcheckoktimeIso8601,
    // @JsonKey(name: "lastlocalchecktime")
    // required DateTime lastlocalchecktime,
    // @JsonKey(name: "lastlocalchecktime_iso8601")
    // required DateTime lastlocalchecktimeIso8601,
    // @JsonKey(name: "clicktimestamp")
    // required DateTime clicktimestamp,
    // @JsonKey(name: "clicktimestamp_iso8601")
    // required DateTime clicktimestampIso8601,
    // @JsonKey(name: "clickcount")
    // required int clickcount,
    // @JsonKey(name: "clicktrend")
    // required int clicktrend,
    // @JsonKey(name: "ssl_error")
    // required int sslError,
    // @JsonKey(name: "geo_lat")
    // required double geoLat,
    // @JsonKey(name: "geo_long")
    // required double geoLong,
    // @JsonKey(name: "has_extended_info")
    // required bool hasExtendedInfo,
  }) = _Station;

  factory Station.fromJson(Map<String, dynamic> json) =>
      _$StationFromJson(json);
}
