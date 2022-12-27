

import '../../init/network/interface_response_model.dart';

class BaseError extends MyErrorModel {
  final String? message;

  BaseError(this.message) : super();
}