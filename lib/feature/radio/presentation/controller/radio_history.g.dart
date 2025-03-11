// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'radio_history.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$radioHistoryHash() => r'30c08932fb453b35c9f746f2613522f885437b3d';

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

abstract class _$RadioHistory
    extends BuildlessAutoDisposeAsyncNotifier<List<RadioStation>> {
  late final int page;

  FutureOr<List<RadioStation>> build({
    int page = 0,
  });
}

/// See also [RadioHistory].
@ProviderFor(RadioHistory)
const radioHistoryProvider = RadioHistoryFamily();

/// See also [RadioHistory].
class RadioHistoryFamily extends Family<AsyncValue<List<RadioStation>>> {
  /// See also [RadioHistory].
  const RadioHistoryFamily();

  /// See also [RadioHistory].
  RadioHistoryProvider call({
    int page = 0,
  }) {
    return RadioHistoryProvider(
      page: page,
    );
  }

  @override
  RadioHistoryProvider getProviderOverride(
    covariant RadioHistoryProvider provider,
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
  String? get name => r'radioHistoryProvider';
}

/// See also [RadioHistory].
class RadioHistoryProvider extends AutoDisposeAsyncNotifierProviderImpl<
    RadioHistory, List<RadioStation>> {
  /// See also [RadioHistory].
  RadioHistoryProvider({
    int page = 0,
  }) : this._internal(
          () => RadioHistory()..page = page,
          from: radioHistoryProvider,
          name: r'radioHistoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$radioHistoryHash,
          dependencies: RadioHistoryFamily._dependencies,
          allTransitiveDependencies:
              RadioHistoryFamily._allTransitiveDependencies,
          page: page,
        );

  RadioHistoryProvider._internal(
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
    covariant RadioHistory notifier,
  ) {
    return notifier.build(
      page: page,
    );
  }

  @override
  Override overrideWith(RadioHistory Function() create) {
    return ProviderOverride(
      origin: this,
      override: RadioHistoryProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<RadioHistory, List<RadioStation>>
      createElement() {
    return _RadioHistoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RadioHistoryProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RadioHistoryRef
    on AutoDisposeAsyncNotifierProviderRef<List<RadioStation>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _RadioHistoryProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<RadioHistory,
        List<RadioStation>> with RadioHistoryRef {
  _RadioHistoryProviderElement(super.provider);

  @override
  int get page => (origin as RadioHistoryProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
