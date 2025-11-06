import 'package:cosmetics_app/views/core/app_button.dart';
import 'package:cosmetics_app/views/core/logic/helper_method.dart';
import 'package:cosmetics_app/views/home/pages/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffffffff)),
      backgroundColor: Color(0xffffffff),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset('assets/images/Layer.png'),
            SizedBox(height: 40),

            Text(
              'Verify Code',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Color(0xff434C6D),
              ),
            ),

            SizedBox(height: 40),

            Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8E8EA9),
                ),
                children: [
                  TextSpan(
                    text: 'We just sent a 4-digit verification code to\n',
                  ),
                  TextSpan(
                    text: '+20 1022658997 ',
                    style: TextStyle(
                      color: Color(0xff434C6D),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: 'Enter the code in the box\n below to continue.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8E8EA9),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            Align(
              alignment: Alignment.bottomLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Edit the number',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                ),
              ),
            ),

            SizedBox(height: 28,),
Center(
  child: SizedBox(
    width: 230,
    child: PinCodeTextField(
      appContext: context,
      length: 4,
      backgroundColor: Colors.transparent,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      keyboardType: TextInputType.number,
      enableActiveFill: true,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        fieldHeight: 55,
        fieldWidth: 50,
        borderRadius: BorderRadius.circular(16),
        activeFillColor: Colors.white,
        inactiveFillColor: Colors.white,
        inactiveColor: Color(0xffD75D72), // اللون الخارجي للمربع
        selectedFillColor: Colors.white,
        selectedColor: Theme.of(context).primaryColor,
        activeColor: Theme.of(context).primaryColor,
      ),
    ),
  ),
),

            Row(
              children: [
                Text(
                  'Didn’t receive a code? ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0xff434C6D),
                  ),
                ),
                TextButton(onPressed: (){}, child:  Text(
                  'Resend ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    
                  ),
                ),),
                Spacer(),
                 Text(
                  '0:36',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0xff434C6D),
                  ),
                ),
                            SizedBox(height: 42,)

              ],
            ),
            SizedBox(height: 128,),
            AppButton(text: 'Done',onPressed:() {
               goTo(HomePage());
            },)
          ],
        ),
      ),
    );
  }
}


