import 'package:cosmetics_app/views/core/components/app_image.dart';
import 'package:cosmetics_app/views/core/components/search_input.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppInput(hint: 'search',),
              SizedBox(height: 13),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AppImage(
                      
                      image:
                          'https://avatars.mds.yandex.net/i?id=e533f857ca8050594965b1b16899eb6180ac557a-9181148-images-thumbs&n=13',
                      height: 320,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(18),
                        color: Color(0xffE9DCD3).withValues(alpha: .80),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '50% OFF DISCOUNT\nCUPON CODE : 125865 ',
                                    style: TextStyle(
                                      color: Color(0xff62322D),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                ),
                                AppImage(image: 'offer.svg'),
                              ],
                            ),
                            Row(
                              children: [
                                AppImage(image: 'offer.svg'),
                                Expanded(
                                  child: Text(
                                    'Hurry up!\nSkin care only !',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      color: Color(0xff434C6D),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Text(
                'Top rated products',
                style: TextStyle(
                  color: Color(0xff434C6D),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 14),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) => _Item(),
                itemCount: 10,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class _Item extends StatelessWidget {
  const _Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 10,
            spreadRadius: 0,
            blurStyle: BlurStyle.inner,
            color: Colors.black.withValues(alpha: .25),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(4),
              child: AppImage(
                width: double.infinity,
                fit: BoxFit.cover,
                image:
                    'https://i.pinimg.com/474x/11/f5/22/11f522c7f8ead5519a4b102723f0a89c.jpg',
              ),
            ),
          ),
          SizedBox(height: 11),
          Text(
            'Face tint / lip tint',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xff434c60),
            ),
          ),
          SizedBox(height: 11),
          Text(
            '\$44.99',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xff70839c),
            ),
          ),
        ],
      ),
    );
  }
}
