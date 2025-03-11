// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'radio_stations.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$radioStationsHash() => r'c117cf537f6655a41efd221ea6c6422a41fa0298';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$RadioStations
    extends BuildlessAsyncNotifier<List<RadioStation>> {
  late final int page;

  FutureOr<List<RadioStation>> build({
    int page = 0,
  });
}

/// See also [RadioStations].
@ProviderFor(RadioStations)
const radioStationsProvider = RadioStationsFamily();

/// See also [RadioStations].
class RadioStationsFamily extends Family<AsyncValue<List<RadioStation>>> {
  /// See also [RadioStations].
  const RadioStationsFamily();

  /// See also [RadioStations].
  RadioStationsProvider call({
    int page = 0,
  }) {
    return RadioStationsProvider(
      page: page,
    );
  }

  @override
  RadioStationsProvider getProviderOverride(
    covariant RadioStationsProvider provider,
  ) {
    return call(
      page: provider.page,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'radioStationsProvider';
}

/// See also [RadioStations].
class RadioStationsProvider
    extends AsyncNotifierProviderImpl<RadioStations, List<RadioStation>> {
  /// See also [RadioStations].
  RadioStationsProvider({
    int page = 0,
  }) : this._internal(
          () => RadioStations()..page = page,
          from: radioStationsProvider,
          name: r'radioStationsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$radioStationsHash,
          dependencies: RadioStationsFamily._dependencies,
          allTransitiveDependencies:
              RadioStationsFamily._allTransitiveDependencies,
          page: page,
        );

  RadioStationsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  FutureOr<List<RadioStation>> runNotifierBuild(
    covariant RadioStations notifier,
  ) {
    return notifier.build(
      page: page,
    );
  }

  @override
  Override overrideWith(RadioStations Function() create) {
    return ProviderOverride(
      origin: this,
      override: RadioStationsProvider._internal(
        () => create()..page = page,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<RadioStations, List<RadioStation>>
      createElement() {
    return _RadioStationsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RadioStationsProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RadioStationsRef on AsyncNotifierProviderRef<List<RadioStation>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _RadioStationsProviderElement
    extends AsyncNotifierProviderElement<RadioStations, List<RadioStation>>
    with RadioStationsRef {
  _RadioStationsProviderElement(super.provider);

  @override
  int get page => (origin as RadioStationsProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
