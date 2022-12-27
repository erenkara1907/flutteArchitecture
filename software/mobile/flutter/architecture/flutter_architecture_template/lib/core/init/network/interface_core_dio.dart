import 'package:flutter_architecture_template/core/base/model/base_model.dart';
import '../../constants/enums/http_request_enum.dart';
import 'interface_response_model.dart';

abstract class ICoreDio {
  Future<IResponseModel<R>> fetchDio<R, T extends BaseModel>(
    String path, {
    required HttpTypes type,
    dynamic data,
    required T parseModel,
    Map<String, dynamic>? queryParameters,
    void Function(int, int)? onReceiveProgress,
  });
}
