import 'package:flutter/material.dart';
import 'package:queens/screens/constants.dart';
class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
       child: ListView(
        scrollDirection: Axis.horizontal,
         children: [
           CategoryProducts(
            press: (){},
            image:'assets/6.png' ,
            text: 'Chains',
             ),
             SizedBox(
              width: 10,
             ),
             CategoryProducts(
            press: (){},
            image:'assets/aa.png' ,
            text: 'Rings',
             ),
                          SizedBox(
              width: 10,
             ),
             CategoryProducts(
            press: (){},
            image:'assets/1.png' ,
            text: 'Complete',
             ),
                          SizedBox(
              width: 10,
             ),
             CategoryProducts(
            press: (){},
            image:'assets/5.png' ,
            text: 'Necklace',
             ),
                          SizedBox(
              width: 10,
             ),
             CategoryProducts(
            press: (){},
            image:'assets/rr.png' ,
            text: 'Bungles',
             ),
       
         ],
       ),
     );
    
  }
}

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({
    super.key,
     required this.image, 
     required this.text,
      this.voidCallBack,
       this.press,
    
  });

 final String image,text;
 final voidCallBack, press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: () {
          press;
        },
        child: Container(
          child: Chip(
            backgroundColor:kPrimaryColor,
            label: Row(
            children: [
               Image.asset(image,height: 30.0,),
               SizedBox(width: 20,),
              Text(text),
           
             
            ],
          )),
        ),
      ),
    );
  }
}