import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';

part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() {}

  @observable
  String? name;

  @action
  void changeName(String name) {
    this.name = name;
  }
}
