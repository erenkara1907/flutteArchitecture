import 'package:dio/dio.dart';
import 'package:flutter_architecture_template/core/constants/enums/preferences_keys_enum.dart';
import 'package:flutter_architecture_template/core/init/cache/locale_manager.dart';
import 'package:flutter_architecture_template/core/init/network/core_dio.dart';
import 'package:flutter_architecture_template/core/init/network/interface_core_dio.dart';

class NetworkManager {
  static NetworkManager? _instance;

  static NetworkManager get instance {
    _instance ??= NetworkManager._init();
    return _instance!;
  }

  ICoreDio? coreDio;

  NetworkManager._init() {
    final baseOptions = BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com/',
      headers: {
        "val": LocaleManager.instance!.getStringValue(PreferencesKeys.TOKEN)
      },
    );

    coreDio = CoreDio(baseOptions);

/*    _dio!.interceptors.add(InterceptorsWrapper(
        onRequest: (options) {
          options.path += 'eren';
        },
        onResponse: (e) {
          return e.data;
        },
        onError: (e) {
          return BaseError(e.message);
        }));*/
  }
}
