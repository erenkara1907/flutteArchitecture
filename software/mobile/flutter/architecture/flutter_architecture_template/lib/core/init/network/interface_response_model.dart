
abstract class IResponseModel<T> {
  T? data;
  MyErrorModel? error;
}

abstract class MyErrorModel<T> {
  void statusCode(){}
}

class ResponseModel<T> extends  IResponseModel<T> {
  @override
  // ignore: overridden_fields
  final T? data;
  @override
  // ignore: overridden_fields
  final MyErrorModel? error;

  ResponseModel({this.data, this.error});
}