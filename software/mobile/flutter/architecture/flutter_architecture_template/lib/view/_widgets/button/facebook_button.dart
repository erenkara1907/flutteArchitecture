import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/core/components/button/title_text_button.dart';

class FaceBookButton extends StatelessWidget {

  final Function(FacebookModel data, {String? errorMessage})? onComplete;

  const FaceBookButton({Key? key, this.onComplete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TitleTextButton(
      text: 'Facebook Login',
      onPressed: (){
        final isLengthSixCharacter = 'asdasdasdas'.length == 6;

        if (isLengthSixCharacter) {
          onComplete!(FacebookModel("asdadas", "asdadasd"));
        }else {
          onComplete!(FacebookModel("", ""), errorMessage: "Facebook user not found");
        }
      },
    );
  }
}

class FacebookModel {
  final String? token;
  final String? mail;

  FacebookModel(this.token, this.mail);
}
