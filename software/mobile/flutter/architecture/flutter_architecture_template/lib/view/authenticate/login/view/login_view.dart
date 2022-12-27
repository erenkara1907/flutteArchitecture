import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/core/components/button/icon_button.dart';
import 'package:flutter_architecture_template/core/extension/context_extension.dart';
import 'package:flutter_architecture_template/view/_widgets/button/facebook_button.dart';
import 'package:flutter_architecture_template/view/_widgets/button/login_button.dart';
import '../../../../core/base/view/base_view.dart';
import '../viewmodel/login_view_model.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, LoginViewModel value) =>
          buildScaffold(context),
    );
  }

  Scaffold buildScaffold(BuildContext context) => Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(  
              decoration: InputDecoration(enabledBorder: OutlineInputBorder()),
            ),
            FaceBookButton(
              onComplete: (data, {errorMessage}){
                // ignore: unnecessary_null_comparison
                if (data != null) {}
                else {
                  // ignore: deprecated_member_use
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text(errorMessage!)));
                }

              },
            )
          ],
        ),
      );

  Text buildText(BuildContext context) => Text(
        'Hello',
        style: context.textTheme.subtitle1,
      );
}
