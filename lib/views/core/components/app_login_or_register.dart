import 'package:cosmetics_app/views/auth/create_account.dart';
import 'package:cosmetics_app/views/core/logic/helper_method.dart';
import 'package:flutter/material.dart';

class AppLoginOrRegister extends StatelessWidget {
  const AppLoginOrRegister({super.key,  this.isLogin = false});

  final bool isLogin ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: isLogin?'Don’t have an account?':"Have an account?"),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: TextButton(
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  padding: EdgeInsets.zero
                ),
                onPressed: () {
                  if (isLogin)
                  {
                    goTo(CreateAccountView());
                  }else{
                    Navigator.pop(context);
                  }


                },
                child: Text(isLogin?'Register':'Login'),
              ),
            ),
          ],
        ),

        textAlign: TextAlign.center,
      ),
    );
  }
}
