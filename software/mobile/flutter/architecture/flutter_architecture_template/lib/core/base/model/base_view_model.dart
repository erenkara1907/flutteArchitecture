import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/core/init/network/interface_core_dio.dart';
import 'package:flutter_architecture_template/core/init/network/network_manager.dart';

abstract class BaseViewModel {
  BuildContext? context;

  ICoreDio coreDio = NetworkManager.instance.coreDio!;
  void setContext(BuildContext context);
  void init();
}