// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Setting`
  String get setting_title {
    return Intl.message(
      'Setting',
      name: 'setting_title',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get setting_about {
    return Intl.message(
      'About',
      name: 'setting_about',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get setting_lang {
    return Intl.message(
      'Language',
      name: 'setting_lang',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get setting_lang_en {
    return Intl.message(
      'English',
      name: 'setting_lang_en',
      desc: '',
      args: [],
    );
  }

  /// `繁中`
  String get setting_lang_hant {
    return Intl.message(
      '繁中',
      name: 'setting_lang_hant',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about_title {
    return Intl.message(
      'About',
      name: 'about_title',
      desc: '',
      args: [],
    );
  }

  /// `This is my app`
  String get about_content {
    return Intl.message(
      'This is my app',
      name: 'about_content',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get nav_home {
    return Intl.message(
      'Home',
      name: 'nav_home',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get nav_setting {
    return Intl.message(
      'Setting',
      name: 'nav_setting',
      desc: '',
      args: [],
    );
  }

  /// `Station`
  String get radio_station {
    return Intl.message(
      'Station',
      name: 'radio_station',
      desc: '',
      args: [],
    );
  }

  /// `Favorite`
  String get radio_favorite {
    return Intl.message(
      'Favorite',
      name: 'radio_favorite',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get radio_history {
    return Intl.message(
      'History',
      name: 'radio_history',
      desc: '',
      args: [],
    );
  }

  /// `Tag`
  String get radio_tag {
    return Intl.message(
      'Tag',
      name: 'radio_tag',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get radio_country {
    return Intl.message(
      'Country',
      name: 'radio_country',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get radio_language {
    return Intl.message(
      'Language',
      name: 'radio_language',
      desc: '',
      args: [],
    );
  }

  /// `No network`
  String get err_no_network {
    return Intl.message(
      'No network',
      name: 'err_no_network',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get common_close {
    return Intl.message(
      'Close',
      name: 'common_close',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Radio`
  String get app_title {
    return Intl.message(
      'Flutter Radio',
      name: 'app_title',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
