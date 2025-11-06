import 'package:cosmetics_app/views/core/components/app_image.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Cart'), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'You have 4 products in your cart ',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff434c6d).withValues(alpha: .55),
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 33,
                ).copyWith(top: 8, bottom: 100),
                itemBuilder: (context, index) => _Item(),
                separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Divider(color: Colors.grey),
                ),
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Item extends StatefulWidget {
  _Item({super.key});

  @override
  State<_Item> createState() => _ItemState();
}

class _ItemState extends State<_Item> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(8),
          child: Stack(
            children: [
              AppImage(
                image:
                    'https://avatars.mds.yandex.net/i?id=f65cbe02f7631c110e9245a362ddf968ddf12bbd-9851898-images-thumbs&n=13',
                height: 100,
                width: 100,
              ),
              AppImage(image: 'delete.svg'),
            ],
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 18),
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3B4569),
                  ),

                  children: [
                    TextSpan(text: 'Note Cosmetics\n'),
                    TextSpan(
                      text: 'Ultra rich mascara for lashes\n\n',
                      style: TextStyle(
                        color: Color(0xff3B4569BA).withValues(alpha: .73),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(text: '350 EGP'),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff8e8ea9)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          if (count > 1) {
                            count--;

                            setState(() {});
                          }
                        },

                        icon: AppImage(image: 'minus.svg'),
                      ),
                      Text(
                        '$count',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff434c6d),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          count++;
                          setState(() {});
                        },
                        icon: AppImage(image: 'plus.svg'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
