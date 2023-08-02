import 'package:flutter/material.dart';
import 'package:queens/Category/category.dart';
import 'package:queens/products/recentproducts.dart';
import 'package:queens/screens/constants.dart';
import 'package:queens/screens/custom_appbar.dart';
import 'package:queens/screens/sliderz.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGColor,
      drawer: Drawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
             CustAppBar(),
              SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(
                            color: Colors.black38,
                            blurRadius: 4,
                          )],
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                        ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [BoxShadow(
                              color: Colors.black38,
                              blurRadius: 4,
                            )]
                          ),
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.sort_by_alpha)))
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                 ProductSlider(),
                 SizedBox(
                  height: 5,
                 ),
             
                ],
              ),
              Category(),
              SizedBox(
                height: 5.0,
              ),
              Container(
                height: 200,
                child: Recents()),
            ],
            
          ),
        ),
        
      ),
    );
  }
}