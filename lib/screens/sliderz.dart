import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:queens/screens/constants.dart';
class ProductSlider extends StatefulWidget {
  const ProductSlider({super.key});

  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          
        ),
        child: Carousel(
          images: [
            Image(image: AssetImage("assets/aa.png"),fit: BoxFit.fill,),
            Image(image: AssetImage("assets/bb.png"),fit: BoxFit.fill,),
            Image(image: AssetImage("assets/cc.png"),fit: BoxFit.fill,),
            Image(image: AssetImage("assets/dd.png"),fit: BoxFit.fill,),
            Image(image: AssetImage("assets/oo.png"),fit: BoxFit.fill,),
    
          ],
          //borderRadius: true,
          radius: Radius.circular(50),
          dotBgColor: Colors.transparent,
          dotIncreasedColor: kPrimaryColor,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 400),
          ),
      ),
    );
  }
}