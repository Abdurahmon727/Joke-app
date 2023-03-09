import 'package:dio/dio.dart';

import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:joke_app/core/data/storage_repository.dart';

import 'dio_interceptor.dart';
import 'dio_request_retrier.dart';

class DioSettings {
  Dio _dioBaseOptions = Dio(BaseOptions(
    baseUrl: 'https://www.ihyo.uz/api/v1',
    connectTimeout: const Duration(milliseconds: 35000),
    receiveTimeout: const Duration(milliseconds: 35000),
    followRedirects: false,
    headers: <String, dynamic>{
      'Accept-Language': StorageRepository.getString('language', defValue: 'en')
    },
    validateStatus: (status) => status != null && status <= 500,
  ))
    ..interceptors.addAll([
      DioInterceptor(
        requestRetrier: DioConnectivityRequestRetrier(
          connectivity: InternetConnectionChecker(),
        ),
      )
    ]);

  void setBaseOptions({String? lang, String? baseUrl}) {
    _dioBaseOptions = Dio(BaseOptions(
      baseUrl: baseUrl ?? 'https://www.ihyo.uz/api/v1',
      connectTimeout: const Duration(milliseconds: 35000),
      receiveTimeout: const Duration(milliseconds: 35000),
      headers: <String, dynamic>{'Accept-Language': lang},
      followRedirects: false,
      validateStatus: (status) => status != null && status <= 500,
    ))
      ..interceptors.addAll(
        [
          DioInterceptor(
            requestRetrier: DioConnectivityRequestRetrier(
              connectivity: InternetConnectionChecker(),
            ),
          )
        ],
      );
  }

  Dio get dio => _dioBaseOptions;
}
