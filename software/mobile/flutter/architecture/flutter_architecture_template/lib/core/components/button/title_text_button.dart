import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/core/components/button/normal_button.dart';

class TitleTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const TitleTextButton({
    Key? key,
    this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NormalButton(
      onPressed: onPressed,
      child: Center(child: Text(text)),
    );
  }
}
