import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class AppImage extends StatelessWidget {
   AppImage( {
    super.key,
    required this.image,
    this.width,
    this.height,
    this.color,
    this.fit =BoxFit.scaleDown,
  });

  final String image;
  final double? width, height;
  final Color? color;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    if (image.toLowerCase().endsWith(".svg")) {
      return SvgPicture.asset(
        'assets/images/$image',
        color: color,
        width: width,
        height: height,
        fit: fit ,
      );
    } else if (image.startsWith('http')) {
      return Image.network(
        image,
        color: color,
        width: width,
        height: height,
        fit: fit ,
      );
    } else if (image.endsWith('json')) 
    {
      return Lottie.asset('assets/images/$image', 
        width: width,
        height: height,
        fit: fit ,);

    }
    else {
      return Image.asset(
        'assets/images/$image',
        color: color,
        width: width,
        height: height,
        fit: fit ,
      );
    }
  }
}






