import 'package:cosmetics_app/views/core/components/app_image.dart';
import 'package:cosmetics_app/views/core/components/app_search.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('categories'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              AppSearch(),
              ListView.separated(padding: EdgeInsets.symmetric(horizontal: 13,vertical: 30).copyWith(bottom: 100),physics: NeverScrollableScrollPhysics(),shrinkWrap: true,itemBuilder: (context, index) => _Item(), separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Divider(color: Colors.grey,),
              ), itemCount: 10)
            ],
          ),
        ),
      )

      




    );
  }
}

class _Item extends StatelessWidget {
  const _Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppImage(image: 'https://avatars.mds.yandex.net/i?id=27b0c2ed6f956fb7680d1efd1a35efe2583db492-5233069-images-thumbs&n=13',height: 64,width: 64,),SizedBox(width: 12,),
        Expanded(child: Text('Bundles',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xff434c6d)),)),
        AppImage(image: 'forward.svg')



      ],



    );
  }
}