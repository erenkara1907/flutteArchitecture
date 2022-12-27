import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/core/components/button/icon_button.dart';

class MVVMLoginButton extends StatelessWidget {

  final Function(String data)? onComplete;

  const MVVMLoginButton({Key? key, this.onComplete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconNormalButton(
      icon: Icons.person,
      onPressed: (){
        onComplete!("Okey");
      },
    );
  }
}
