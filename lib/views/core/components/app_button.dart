import 'package:flutter/material.dart';
class AppButton extends StatelessWidget {
  AppButton({required this.text,  this.onPressed,  this.color});

  final String text;
  final Color? color ;

  final  VoidCallback? onPressed ;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child: Text(text),
      style: FilledButton.styleFrom(
        fixedSize: Size(270, 65),
        backgroundColor: color??Color(0xffD75D72),
      ),
    );
  }
}