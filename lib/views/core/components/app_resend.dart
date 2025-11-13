import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class AppResend extends StatefulWidget {
  const AppResend({super.key});

  @override
  State<AppResend> createState() => _AppResendState();
}

class _AppResendState extends State<AppResend> {
  @override
  bool isSent = true;
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Didn’t receive a code?'),
        TextButton(
          onPressed: isSent
              ? null
              : () {
                  isSent = true;
                  setState(() {});
                },
          child: Text('Resend'),
        ),
        Spacer(),
        CircularCountDownTimer(
          width: 50,
          height: 40,
          duration: 5,
          onComplete: () {
            isSent = false;
            setState(() {});
          },
          textFormat: CountdownTextFormat.MM_SS,
          textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          isReverse: true,
          fillColor: Colors.transparent,
          ringColor: Colors.transparent,
        ),
      ],
    );
  }
}
