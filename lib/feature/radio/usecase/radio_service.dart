import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/api_result.dart';
import '../model/radio_const.dart';
import '../repository/model/country.dart';
import '../repository/model/language.dart';
import '../repository/model/tag.dart';
import '../repository/radiobrowser/radiobrowser_api.dart';
import '../repository/model/station.dart';

class RadioService {
  late final Dio _dio;
  late final RadioBrowserApi _client;

  RadioService._internal() {
    _dio = Dio();
    _client = RadioBrowserApi(_dio);
  }
  static final RadioService _instance = RadioService._internal();
  factory RadioService() => _instance;

  Future<ApiResult<List<Country>>> getCountries() async {
    return _getData(_client.getCountries);
  }

  Future<ApiResult<List<Language>>> getLanguages() async {
    return _getData(_client.getLanguages);
  }

  Future<ApiResult<List<Tag>>> getTags() async {
    return _getData(_client.getTags);
  }

  Future<ApiResult<List<Station>>> getStationsPaging(
      {int offset = 0,
      String order = RadioConst.queryStationOrderByVotes}) async {
    try {
      final result =
          await _client.getStationsPaging(offset: offset, order: order);
      return Success(data: result);
    } on SocketException catch (e) {
      return Failure(e);
    } on DioException catch (e) {
      return Failure(
          ApiException(e.toString(), errorCode: e.response?.statusCode));
    } catch (e) {
      return Failure(Exception(e.toString()));
    }
  }

  Future<ApiResult<List<Station>>> getStationsByLanguage(String term) async {
    return _getDataBy(_client.getStationsByLanguage, term: term);
  }

  Future<ApiResult<List<Station>>> getStationsByCountry(String term) async {
    return _getDataBy(_client.getStationsByCountry, term: term);
  }

  Future<ApiResult<List<Station>>> getStationsByTag(String term) async {
    return _getDataBy(_client.getStationsByTag, term: term);
  }

  Future<ApiResult<List<Station>>> getStationsByCountryPaging(String term,
      {int offset = 0}) async {
    return _getDataByPaging(_client.getStationsByCountryPaging,
        term: term, offset: offset);
  }

  Future<ApiResult<List<Station>>> getStationsByLanguagePaging(String term,
      {int offset = 0}) async {
    return _getDataByPaging(_client.getStationsByLanguagePaging,
        term: term, offset: offset);
  }

  Future<ApiResult<List<Station>>> getStationsByTagPaging(String term,
      {int offset = 0}) async {
    return _getDataByPaging(_client.getStationsByTagPaging,
        term: term, offset: offset);
  }

  Future<ApiResult<T>> _getDataByPaging<T>(
    Future<T> Function(String term, {int offset}) get, {
    required String term,
    int offset = 0,
  }) async {
    try {
      final result = await get(term, offset: offset);
      return Success(data: result);
    } on SocketException catch (e) {
      return Failure(e);
    } on DioException catch (e) {
      return Failure(
          ApiException(e.toString(), errorCode: e.response?.statusCode));
    } catch (e) {
      return Failure(Exception(e.toString()));
    }
  }

  Future<ApiResult<T>> _getData<T>(Future<T> Function() get) async {
    try {
      final result = await get();
      return Success(data: result);
    } on SocketException catch (e) {
      return Failure(e);
    } on DioException catch (e) {
      return Failure(
          ApiException(e.toString(), errorCode: e.response?.statusCode));
    } catch (e) {
      return Failure(Exception(e.toString()));
    }
  }

  Future<ApiResult<T>> _getDataBy<T>(Future<T> Function(String term) get,
      {required String term}) async {
    try {
      final result = await get(term);
      return Success(data: result);
    } on SocketException catch (e) {
      return Failure(e);
    } on DioException catch (e) {
      return Failure(
          ApiException(e.toString(), errorCode: e.response?.statusCode));
    } catch (e) {
      return Failure(Exception(e.toString()));
    }
  }
}

final radioServiceProvider = Provider((ref) => RadioService());
