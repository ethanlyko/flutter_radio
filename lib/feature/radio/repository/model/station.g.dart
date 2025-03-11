// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StationImpl _$$StationImplFromJson(Map<String, dynamic> json) =>
    _$StationImpl(
      stationUuid: json['stationuuid'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      favIcon: json['favicon'] as String,
      tags: json['tags'] as String,
      country: json['country'] as String,
      language: json['language'] as String,
      codec: json['codec'] as String,
      bitrate: (json['bitrate'] as num).toInt(),
      hls: (json['hls'] as num).toInt(),
      lastCheckOk: (json['lastcheckok'] as num).toInt(),
    );

Map<String, dynamic> _$$StationImplToJson(_$StationImpl instance) =>
    <String, dynamic>{
      'stationuuid': instance.stationUuid,
      'name': instance.name,
      'url': instance.url,
      'favicon': instance.favIcon,
      'tags': instance.tags,
      'country': instance.country,
      'language': instance.language,
      'codec': instance.codec,
      'bitrate': instance.bitrate,
      'hls': instance.hls,
      'lastcheckok': instance.lastCheckOk,
    };
