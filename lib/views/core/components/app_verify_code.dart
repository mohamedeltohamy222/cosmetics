import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AppVerifyCode extends StatelessWidget {
  const AppVerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(appContext: context ,
     length: 4,
     hintCharacter: '-',
     inputFormatters: [
      FilteringTextInputFormatter.digitsOnly
     ],
     cursorColor: Color(0xff101010).withValues(alpha: 0.22),
     pinTheme: PinTheme(
      shape: PinCodeFieldShape.box,
      borderRadius: BorderRadius.circular(8),
      activeColor: Color(0xffD75D72),selectedColor: Color(0xffD75D72),
      inactiveColor: Color(0xff898992).withValues(alpha: 0.36)
     ),
     mainAxisAlignment: MainAxisAlignment.center,
     separatorBuilder: (context, index) => SizedBox(width: 12,),

    
    
    
    );
  }
}
