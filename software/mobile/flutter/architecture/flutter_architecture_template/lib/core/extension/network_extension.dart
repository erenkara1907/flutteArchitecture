import 'package:flutter_architecture_template/core/constants/enums/http_request_enum.dart';

extension NetworkTypeExtension on HttpTypes {
  String get rawValue {
    switch (this) {
      case HttpTypes.GET:
        return "GET";

      case HttpTypes.POST:
        return "POST";
      default:
        throw "Error Type";
    }
  }
}
