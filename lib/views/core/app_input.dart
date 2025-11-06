import 'package:flutter/material.dart';


class AppInput extends StatelessWidget {
  AppInput({required this.text, required this.flexnum,this.passIcon});
  final String text;
  final int flexnum;
  final Widget? passIcon;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flexnum,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: text,
suffixIcon: passIcon != null
    ? IconButton(
        onPressed: () {
        },
        icon: passIcon!,
      )
    : null,
          labelStyle: TextStyle(color: Color(0xff8E8EA9)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}