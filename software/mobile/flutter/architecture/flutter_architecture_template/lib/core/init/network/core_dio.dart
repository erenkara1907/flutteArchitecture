import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_architecture_template/core/base/model/base_error.dart';
import 'package:flutter_architecture_template/core/base/model/base_model.dart';
import 'package:flutter_architecture_template/core/constants/enums/http_request_enum.dart';
import 'package:flutter_architecture_template/core/extension/network_extension.dart';
import 'package:flutter_architecture_template/core/init/network/interface_core_dio.dart';
import 'interface_response_model.dart';
part './network_core/core_operations.dart';

class CoreDio with DioMixin implements Dio, ICoreDio {
  @override
  // ignore: overridden_fields
  final BaseOptions options;

  CoreDio(this.options) {
    options = options;
    interceptors.add(InterceptorsWrapper());
    httpClientAdapter = DefaultHttpClientAdapter();
  }

  @override
  Future<IResponseModel<R>> fetchDio<R,T extends BaseModel>(
    String path, {
    required HttpTypes type,
    required T parseModel,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    void Function(int, int)? onReceiveProgress,
  }) async {
    final response = await request(path,
        data: data, options: Options(method: type.rawValue));

    switch (response.statusCode) {
      case HttpStatus.ok:
      case HttpStatus.accepted:
        final model = _responseParser<R>(parseModel, data);
        return ResponseModel<R>(data: model);
        
        default: 
        return ResponseModel(error: BaseError("message"));
    }
  }
}
