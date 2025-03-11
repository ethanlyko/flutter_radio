// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Station _$StationFromJson(Map<String, dynamic> json) {
  return _Station.fromJson(json);
}

/// @nodoc
mixin _$Station {
// @JsonKey(name: "changeuuid")
// required String changeuuid,
  @JsonKey(name: "stationuuid")
  String get stationUuid =>
      throw _privateConstructorUsedError; // required String stationuuid,
// @JsonKey(name: "serveruuid")
// required String serveruuid,
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String get url =>
      throw _privateConstructorUsedError; // @JsonKey(name: "url_resolved")
// required String urlResolved,
// @JsonKey(name: "homepage")
// required String homepage,
  @JsonKey(name: "favicon")
  String get favIcon => throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  String get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String get country =>
      throw _privateConstructorUsedError; // @JsonKey(name: "countrycode")
// required String countrycode,
// @JsonKey(name: "iso_3166_2")
// required String iso31662,
// @JsonKey(name: "state")
// required String state,
  @JsonKey(name: "language")
  String get language =>
      throw _privateConstructorUsedError; // @JsonKey(name: "languagecodes")
// required String languagecodes,
// @JsonKey(name: "votes")
// required int votes,
// @JsonKey(name: "lastchangetime")
// required DateTime lastchangetime,
// @JsonKey(name: "lastchangetime_iso8601")
// required DateTime lastchangetimeIso8601,
  @JsonKey(name: "codec")
  String get codec => throw _privateConstructorUsedError;
  @JsonKey(name: "bitrate")
  int get bitrate => throw _privateConstructorUsedError;
  @JsonKey(name: "hls")
  int get hls => throw _privateConstructorUsedError;
  @JsonKey(name: "lastcheckok")
  int get lastCheckOk => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StationCopyWith<Station> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationCopyWith<$Res> {
  factory $StationCopyWith(Station value, $Res Function(Station) then) =
      _$StationCopyWithImpl<$Res, Station>;
  @useResult
  $Res call(
      {@JsonKey(name: "stationuuid") String stationUuid,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "favicon") String favIcon,
      @JsonKey(name: "tags") String tags,
      @JsonKey(name: "country") String country,
      @JsonKey(name: "language") String language,
      @JsonKey(name: "codec") String codec,
      @JsonKey(name: "bitrate") int bitrate,
      @JsonKey(name: "hls") int hls,
      @JsonKey(name: "lastcheckok") int lastCheckOk});
}

/// @nodoc
class _$StationCopyWithImpl<$Res, $Val extends Station>
    implements $StationCopyWith<$Res> {
  _$StationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationUuid = null,
    Object? name = null,
    Object? url = null,
    Object? favIcon = null,
    Object? tags = null,
    Object? country = null,
    Object? language = null,
    Object? codec = null,
    Object? bitrate = null,
    Object? hls = null,
    Object? lastCheckOk = null,
  }) {
    return _then(_value.copyWith(
      stationUuid: null == stationUuid
          ? _value.stationUuid
          : stationUuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      favIcon: null == favIcon
          ? _value.favIcon
          : favIcon // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      codec: null == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String,
      bitrate: null == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as int,
      hls: null == hls
          ? _value.hls
          : hls // ignore: cast_nullable_to_non_nullable
              as int,
      lastCheckOk: null == lastCheckOk
          ? _value.lastCheckOk
          : lastCheckOk // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StationImplCopyWith<$Res> implements $StationCopyWith<$Res> {
  factory _$$StationImplCopyWith(
          _$StationImpl value, $Res Function(_$StationImpl) then) =
      __$$StationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "stationuuid") String stationUuid,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "favicon") String favIcon,
      @JsonKey(name: "tags") String tags,
      @JsonKey(name: "country") String country,
      @JsonKey(name: "language") String language,
      @JsonKey(name: "codec") String codec,
      @JsonKey(name: "bitrate") int bitrate,
      @JsonKey(name: "hls") int hls,
      @JsonKey(name: "lastcheckok") int lastCheckOk});
}

/// @nodoc
class __$$StationImplCopyWithImpl<$Res>
    extends _$StationCopyWithImpl<$Res, _$StationImpl>
    implements _$$StationImplCopyWith<$Res> {
  __$$StationImplCopyWithImpl(
      _$StationImpl _value, $Res Function(_$StationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationUuid = null,
    Object? name = null,
    Object? url = null,
    Object? favIcon = null,
    Object? tags = null,
    Object? country = null,
    Object? language = null,
    Object? codec = null,
    Object? bitrate = null,
    Object? hls = null,
    Object? lastCheckOk = null,
  }) {
    return _then(_$StationImpl(
      stationUuid: null == stationUuid
          ? _value.stationUuid
          : stationUuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      favIcon: null == favIcon
          ? _value.favIcon
          : favIcon // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      codec: null == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String,
      bitrate: null == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as int,
      hls: null == hls
          ? _value.hls
          : hls // ignore: cast_nullable_to_non_nullable
              as int,
      lastCheckOk: null == lastCheckOk
          ? _value.lastCheckOk
          : lastCheckOk // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StationImpl implements _Station {
  const _$StationImpl(
      {@JsonKey(name: "stationuuid") required this.stationUuid,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "url") required this.url,
      @JsonKey(name: "favicon") required this.favIcon,
      @JsonKey(name: "tags") required this.tags,
      @JsonKey(name: "country") required this.country,
      @JsonKey(name: "language") required this.language,
      @JsonKey(name: "codec") required this.codec,
      @JsonKey(name: "bitrate") required this.bitrate,
      @JsonKey(name: "hls") required this.hls,
      @JsonKey(name: "lastcheckok") required this.lastCheckOk});

  factory _$StationImpl.fromJson(Map<String, dynamic> json) =>
      _$$StationImplFromJson(json);

// @JsonKey(name: "changeuuid")
// required String changeuuid,
  @override
  @JsonKey(name: "stationuuid")
  final String stationUuid;
// required String stationuuid,
// @JsonKey(name: "serveruuid")
// required String serveruuid,
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "url")
  final String url;
// @JsonKey(name: "url_resolved")
// required String urlResolved,
// @JsonKey(name: "homepage")
// required String homepage,
  @override
  @JsonKey(name: "favicon")
  final String favIcon;
  @override
  @JsonKey(name: "tags")
  final String tags;
  @override
  @JsonKey(name: "country")
  final String country;
// @JsonKey(name: "countrycode")
// required String countrycode,
// @JsonKey(name: "iso_3166_2")
// required String iso31662,
// @JsonKey(name: "state")
// required String state,
  @override
  @JsonKey(name: "language")
  final String language;
// @JsonKey(name: "languagecodes")
// required String languagecodes,
// @JsonKey(name: "votes")
// required int votes,
// @JsonKey(name: "lastchangetime")
// required DateTime lastchangetime,
// @JsonKey(name: "lastchangetime_iso8601")
// required DateTime lastchangetimeIso8601,
  @override
  @JsonKey(name: "codec")
  final String codec;
  @override
  @JsonKey(name: "bitrate")
  final int bitrate;
  @override
  @JsonKey(name: "hls")
  final int hls;
  @override
  @JsonKey(name: "lastcheckok")
  final int lastCheckOk;

  @override
  String toString() {
    return 'Station(stationUuid: $stationUuid, name: $name, url: $url, favIcon: $favIcon, tags: $tags, country: $country, language: $language, codec: $codec, bitrate: $bitrate, hls: $hls, lastCheckOk: $lastCheckOk)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StationImpl &&
            (identical(other.stationUuid, stationUuid) ||
                other.stationUuid == stationUuid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.favIcon, favIcon) || other.favIcon == favIcon) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.codec, codec) || other.codec == codec) &&
            (identical(other.bitrate, bitrate) || other.bitrate == bitrate) &&
            (identical(other.hls, hls) || other.hls == hls) &&
            (identical(other.lastCheckOk, lastCheckOk) ||
                other.lastCheckOk == lastCheckOk));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stationUuid, name, url, favIcon,
      tags, country, language, codec, bitrate, hls, lastCheckOk);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StationImplCopyWith<_$StationImpl> get copyWith =>
      __$$StationImplCopyWithImpl<_$StationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StationImplToJson(
      this,
    );
  }
}

abstract class _Station implements Station {
  const factory _Station(
          {@JsonKey(name: "stationuuid") required final String stationUuid,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "url") required final String url,
          @JsonKey(name: "favicon") required final String favIcon,
          @JsonKey(name: "tags") required final String tags,
          @JsonKey(name: "country") required final String country,
          @JsonKey(name: "language") required final String language,
          @JsonKey(name: "codec") required final String codec,
          @JsonKey(name: "bitrate") required final int bitrate,
          @JsonKey(name: "hls") required final int hls,
          @JsonKey(name: "lastcheckok") required final int lastCheckOk}) =
      _$StationImpl;

  factory _Station.fromJson(Map<String, dynamic> json) = _$StationImpl.fromJson;

  @override // @JsonKey(name: "changeuuid")
// required String changeuuid,
  @JsonKey(name: "stationuuid")
  String get stationUuid;
  @override // required String stationuuid,
// @JsonKey(name: "serveruuid")
// required String serveruuid,
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "url")
  String get url;
  @override // @JsonKey(name: "url_resolved")
// required String urlResolved,
// @JsonKey(name: "homepage")
// required String homepage,
  @JsonKey(name: "favicon")
  String get favIcon;
  @override
  @JsonKey(name: "tags")
  String get tags;
  @override
  @JsonKey(name: "country")
  String get country;
  @override // @JsonKey(name: "countrycode")
// required String countrycode,
// @JsonKey(name: "iso_3166_2")
// required String iso31662,
// @JsonKey(name: "state")
// required String state,
  @JsonKey(name: "language")
  String get language;
  @override // @JsonKey(name: "languagecodes")
// required String languagecodes,
// @JsonKey(name: "votes")
// required int votes,
// @JsonKey(name: "lastchangetime")
// required DateTime lastchangetime,
// @JsonKey(name: "lastchangetime_iso8601")
// required DateTime lastchangetimeIso8601,
  @JsonKey(name: "codec")
  String get codec;
  @override
  @JsonKey(name: "bitrate")
  int get bitrate;
  @override
  @JsonKey(name: "hls")
  int get hls;
  @override
  @JsonKey(name: "lastcheckok")
  int get lastCheckOk;
  @override
  @JsonKey(ignore: true)
  _$$StationImplCopyWith<_$StationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
