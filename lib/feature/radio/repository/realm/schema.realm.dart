// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class CountryRealm extends _CountryRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  CountryRealm(
    String name,
    int stationCount,
  ) {
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'stationCount', stationCount);
  }

  CountryRealm._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  int get stationCount => RealmObjectBase.get<int>(this, 'stationCount') as int;
  @override
  set stationCount(int value) =>
      RealmObjectBase.set(this, 'stationCount', value);

  @override
  Stream<RealmObjectChanges<CountryRealm>> get changes =>
      RealmObjectBase.getChanges<CountryRealm>(this);

  @override
  Stream<RealmObjectChanges<CountryRealm>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<CountryRealm>(this, keyPaths);

  @override
  CountryRealm freeze() => RealmObjectBase.freezeObject<CountryRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
      'stationCount': stationCount.toEJson(),
    };
  }

  static EJsonValue _toEJson(CountryRealm value) => value.toEJson();
  static CountryRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'name': EJsonValue name,
        'stationCount': EJsonValue stationCount,
      } =>
        CountryRealm(
          fromEJson(name),
          fromEJson(stationCount),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CountryRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, CountryRealm, 'CountryRealm', [
      SchemaProperty('name', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('stationCount', RealmPropertyType.int),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class LanguageRealm extends _LanguageRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  LanguageRealm(
    String name,
    int stationCount,
  ) {
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'stationCount', stationCount);
  }

  LanguageRealm._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  int get stationCount => RealmObjectBase.get<int>(this, 'stationCount') as int;
  @override
  set stationCount(int value) =>
      RealmObjectBase.set(this, 'stationCount', value);

  @override
  Stream<RealmObjectChanges<LanguageRealm>> get changes =>
      RealmObjectBase.getChanges<LanguageRealm>(this);

  @override
  Stream<RealmObjectChanges<LanguageRealm>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<LanguageRealm>(this, keyPaths);

  @override
  LanguageRealm freeze() => RealmObjectBase.freezeObject<LanguageRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
      'stationCount': stationCount.toEJson(),
    };
  }

  static EJsonValue _toEJson(LanguageRealm value) => value.toEJson();
  static LanguageRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'name': EJsonValue name,
        'stationCount': EJsonValue stationCount,
      } =>
        LanguageRealm(
          fromEJson(name),
          fromEJson(stationCount),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(LanguageRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, LanguageRealm, 'LanguageRealm', [
      SchemaProperty('name', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('stationCount', RealmPropertyType.int),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class StationRealm extends _StationRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  StationRealm(
    String stationUuid, {
    String? name,
    String? url,
    String? favIcon,
    String? country,
    String? language,
    String? codec,
    int? bitrate,
    int? hls,
    int? lastCheckOk,
    bool favorite = false,
    DateTime? dateTime,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<StationRealm>({
        'favorite': false,
      });
    }
    RealmObjectBase.set(this, 'stationUuid', stationUuid);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'url', url);
    RealmObjectBase.set(this, 'favIcon', favIcon);
    RealmObjectBase.set(this, 'country', country);
    RealmObjectBase.set(this, 'language', language);
    RealmObjectBase.set(this, 'codec', codec);
    RealmObjectBase.set(this, 'bitrate', bitrate);
    RealmObjectBase.set(this, 'hls', hls);
    RealmObjectBase.set(this, 'lastCheckOk', lastCheckOk);
    RealmObjectBase.set(this, 'favorite', favorite);
    RealmObjectBase.set(this, 'dateTime', dateTime);
  }

  StationRealm._();

  @override
  String get stationUuid =>
      RealmObjectBase.get<String>(this, 'stationUuid') as String;
  @override
  set stationUuid(String value) =>
      RealmObjectBase.set(this, 'stationUuid', value);

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;
  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

  @override
  String? get url => RealmObjectBase.get<String>(this, 'url') as String?;
  @override
  set url(String? value) => RealmObjectBase.set(this, 'url', value);

  @override
  String? get favIcon =>
      RealmObjectBase.get<String>(this, 'favIcon') as String?;
  @override
  set favIcon(String? value) => RealmObjectBase.set(this, 'favIcon', value);

  @override
  String? get country =>
      RealmObjectBase.get<String>(this, 'country') as String?;
  @override
  set country(String? value) => RealmObjectBase.set(this, 'country', value);

  @override
  String? get language =>
      RealmObjectBase.get<String>(this, 'language') as String?;
  @override
  set language(String? value) => RealmObjectBase.set(this, 'language', value);

  @override
  String? get codec => RealmObjectBase.get<String>(this, 'codec') as String?;
  @override
  set codec(String? value) => RealmObjectBase.set(this, 'codec', value);

  @override
  int? get bitrate => RealmObjectBase.get<int>(this, 'bitrate') as int?;
  @override
  set bitrate(int? value) => RealmObjectBase.set(this, 'bitrate', value);

  @override
  int? get hls => RealmObjectBase.get<int>(this, 'hls') as int?;
  @override
  set hls(int? value) => RealmObjectBase.set(this, 'hls', value);

  @override
  int? get lastCheckOk => RealmObjectBase.get<int>(this, 'lastCheckOk') as int?;
  @override
  set lastCheckOk(int? value) =>
      RealmObjectBase.set(this, 'lastCheckOk', value);

  @override
  bool get favorite => RealmObjectBase.get<bool>(this, 'favorite') as bool;
  @override
  set favorite(bool value) => RealmObjectBase.set(this, 'favorite', value);

  @override
  DateTime? get dateTime =>
      RealmObjectBase.get<DateTime>(this, 'dateTime') as DateTime?;
  @override
  set dateTime(DateTime? value) => RealmObjectBase.set(this, 'dateTime', value);

  @override
  Stream<RealmObjectChanges<StationRealm>> get changes =>
      RealmObjectBase.getChanges<StationRealm>(this);

  @override
  Stream<RealmObjectChanges<StationRealm>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<StationRealm>(this, keyPaths);

  @override
  StationRealm freeze() => RealmObjectBase.freezeObject<StationRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'stationUuid': stationUuid.toEJson(),
      'name': name.toEJson(),
      'url': url.toEJson(),
      'favIcon': favIcon.toEJson(),
      'country': country.toEJson(),
      'language': language.toEJson(),
      'codec': codec.toEJson(),
      'bitrate': bitrate.toEJson(),
      'hls': hls.toEJson(),
      'lastCheckOk': lastCheckOk.toEJson(),
      'favorite': favorite.toEJson(),
      'dateTime': dateTime.toEJson(),
    };
  }

  static EJsonValue _toEJson(StationRealm value) => value.toEJson();
  static StationRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'stationUuid': EJsonValue stationUuid,
      } =>
        StationRealm(
          fromEJson(stationUuid),
          name: fromEJson(ejson['name']),
          url: fromEJson(ejson['url']),
          favIcon: fromEJson(ejson['favIcon']),
          country: fromEJson(ejson['country']),
          language: fromEJson(ejson['language']),
          codec: fromEJson(ejson['codec']),
          bitrate: fromEJson(ejson['bitrate']),
          hls: fromEJson(ejson['hls']),
          lastCheckOk: fromEJson(ejson['lastCheckOk']),
          favorite: fromEJson(ejson['favorite'], defaultValue: false),
          dateTime: fromEJson(ejson['dateTime']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(StationRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, StationRealm, 'StationRealm', [
      SchemaProperty('stationUuid', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string, optional: true),
      SchemaProperty('url', RealmPropertyType.string, optional: true),
      SchemaProperty('favIcon', RealmPropertyType.string, optional: true),
      SchemaProperty('country', RealmPropertyType.string, optional: true),
      SchemaProperty('language', RealmPropertyType.string, optional: true),
      SchemaProperty('codec', RealmPropertyType.string, optional: true),
      SchemaProperty('bitrate', RealmPropertyType.int, optional: true),
      SchemaProperty('hls', RealmPropertyType.int, optional: true),
      SchemaProperty('lastCheckOk', RealmPropertyType.int, optional: true),
      SchemaProperty('favorite', RealmPropertyType.bool),
      SchemaProperty('dateTime', RealmPropertyType.timestamp, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class ModelInfoRealm extends _ModelInfoRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  ModelInfoRealm(
    String name,
    String lastQuery,
    String updated, {
    int count = 0,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<ModelInfoRealm>({
        'count': 0,
      });
    }
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'count', count);
    RealmObjectBase.set(this, 'lastQuery', lastQuery);
    RealmObjectBase.set(this, 'updated', updated);
  }

  ModelInfoRealm._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  int get count => RealmObjectBase.get<int>(this, 'count') as int;
  @override
  set count(int value) => RealmObjectBase.set(this, 'count', value);

  @override
  String get lastQuery =>
      RealmObjectBase.get<String>(this, 'lastQuery') as String;
  @override
  set lastQuery(String value) => RealmObjectBase.set(this, 'lastQuery', value);

  @override
  String get updated => RealmObjectBase.get<String>(this, 'updated') as String;
  @override
  set updated(String value) => RealmObjectBase.set(this, 'updated', value);

  @override
  Stream<RealmObjectChanges<ModelInfoRealm>> get changes =>
      RealmObjectBase.getChanges<ModelInfoRealm>(this);

  @override
  Stream<RealmObjectChanges<ModelInfoRealm>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<ModelInfoRealm>(this, keyPaths);

  @override
  ModelInfoRealm freeze() => RealmObjectBase.freezeObject<ModelInfoRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
      'count': count.toEJson(),
      'lastQuery': lastQuery.toEJson(),
      'updated': updated.toEJson(),
    };
  }

  static EJsonValue _toEJson(ModelInfoRealm value) => value.toEJson();
  static ModelInfoRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'name': EJsonValue name,
        'lastQuery': EJsonValue lastQuery,
        'updated': EJsonValue updated,
      } =>
        ModelInfoRealm(
          fromEJson(name),
          fromEJson(lastQuery),
          fromEJson(updated),
          count: fromEJson(ejson['count'], defaultValue: 0),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(ModelInfoRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, ModelInfoRealm, 'ModelInfoRealm', [
      SchemaProperty('name', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('count', RealmPropertyType.int),
      SchemaProperty('lastQuery', RealmPropertyType.string),
      SchemaProperty('updated', RealmPropertyType.string),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class TagRealm extends _TagRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  TagRealm(
    String name,
    int stationCount,
  ) {
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'stationCount', stationCount);
  }

  TagRealm._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  int get stationCount => RealmObjectBase.get<int>(this, 'stationCount') as int;
  @override
  set stationCount(int value) =>
      RealmObjectBase.set(this, 'stationCount', value);

  @override
  Stream<RealmObjectChanges<TagRealm>> get changes =>
      RealmObjectBase.getChanges<TagRealm>(this);

  @override
  Stream<RealmObjectChanges<TagRealm>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<TagRealm>(this, keyPaths);

  @override
  TagRealm freeze() => RealmObjectBase.freezeObject<TagRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
      'stationCount': stationCount.toEJson(),
    };
  }

  static EJsonValue _toEJson(TagRealm value) => value.toEJson();
  static TagRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'name': EJsonValue name,
        'stationCount': EJsonValue stationCount,
      } =>
        TagRealm(
          fromEJson(name),
          fromEJson(stationCount),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(TagRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, TagRealm, 'TagRealm', [
      SchemaProperty('name', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('stationCount', RealmPropertyType.int),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
