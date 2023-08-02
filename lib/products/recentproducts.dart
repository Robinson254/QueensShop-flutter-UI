import 'package:flutter/material.dart';
import 'package:queens/screens/constants.dart';
class Recents extends StatelessWidget {
   Recents({super.key});
 final productList=[
  {
    'name':'Chain',
    'image':'assets/1.png',
    'price':'KEs 500',
    'descr':'A golden Chain',
  },
   {
    'name':'Bungle',
    'image':'assets/2.png',
    'price':'KEs 540',
    'descr':'A golden Bungle',
  },
   {
    'name':'NeckLace',
    'image':'assets/3.png',
    'price':'KEs 245',
    'descr':'Beauty lady necklace',
  },
   {
    'name':'NeckLace',
    'image':'assets/4.png',
    'price':'KEs 350',
    'descr':'Chinas finest',
  },
   {
    'name':'Earrings',
    'image':'assets/5.png',
    'price':'KEs 634',
    'descr':'Russian earings',
  },
   {
    'name':'Earings',
    'image':'assets/6.png',
    'price':'KEs 840',
    'descr':'Fast wears',
  },
   {
    'name':'Necklace',
    'image':'assets/7.png',
    'price':'KEs 560',
    'descr':'A golden Chain',
  },
   {
    'name':'America Bungle',
    'image':'assets/8.png',
    'price':'KEs 740',
    'descr':'A golden Chain',
  },
   {
    'name':'America Necklace',
    'image':'assets/9.png',
    'price':'KEs 430',
    'descr':'A golden Chain',
  },
   {
    'name':'Chain',
    'image':'assets/10.png',
    'price':'KEs 500',
    'descr':'A golden Chain',
  },
   {
    'name':'Chain',
    'image':'assets/11.png',
    'price':'KEs 500',
    'descr':'A golden Chain',
  },
   {
    'name':'NeckChain',
    'image':'assets/12.png',
    'price':'KEs 500',
    'descr':'A golden Chain',
  },
   {
    'name':'NeckChain',
    'image':'assets/13.png',
    'price':'KEs 500',
    'descr':'A golden Chain',
  },
   {
    'name':'Chain',
    'image':'assets/14.png',
    'price':'KEs 500',
    'descr':'A golden Chain',
  },
   {
    'name':'Nike Chains',
    'image':'assets/15.png',
    'price':'KEs 860',
    'descr':'A golden Chain',
  },
   {
    'name':'Chain',
    'image':'assets/16.png',
    'price':'KEs 500',
    'descr':'A golden Chain',
  },
   {
    'name':'Bungle',
    'image':'assets/bb.png',
    'price':'KEs 390',
    'descr':'A golden Chain',
  },

  
 ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        childAspectRatio: 0.60,
        ),
        itemBuilder: (BuildContext context,int index){
          return RecentSingleProducts(
            recent_single_prod_descr: productList[index]['descr'],
            recent_single_prod_name: productList[index]['name'],
            recent_single_prod_image: productList[index]['image'],
            recent_single_prod_price: productList[index]['price'],

          );
        },
    );
  }
}

class RecentSingleProducts extends StatefulWidget {
  
  final Color inactiveColor= Colors.black38;
  

  final recent_single_prod_name;
  final recent_single_prod_image;
  final recent_single_prod_price;
  final recent_single_prod_descr;

  const RecentSingleProducts({super.key, 
  required this.recent_single_prod_name,
   required this.recent_single_prod_image, 
   required this.recent_single_prod_price, 
   required this.recent_single_prod_descr});

  @override
  State<RecentSingleProducts> createState() => _RecentSingleProductsState();
}

class _RecentSingleProductsState extends State<RecentSingleProducts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Image.asset( widget.recent_single_prod_image),
        ),
        ListTile(
          title: Text(widget.recent_single_prod_name),
          subtitle: Text(widget.recent_single_prod_price),
          trailing: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kPrimaryColor,
            ),
            child: IconButton(onPressed: 
            (){}, icon: Icon(Icons.favorite_border_outlined,
            size: 16,)),
          ),
        )
      ],
    );
  }
}