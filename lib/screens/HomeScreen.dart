import 'package:flutter/material.dart';
import 'package:queens/screens/homeBody.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),

      bottomNavigationBar: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
                      ),
                      boxShadow: [BoxShadow(
                        //offset: Offset(0, -15),
                        blurRadius: 2,
                      )]
        ),
        child: SafeArea(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeScreen())));
            }, icon: Icon(Icons.home)),
              IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeScreen())));
            }, icon: Icon(Icons.shopping_cart)),
              IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeScreen())));
            }, icon: Icon(Icons.person)),
              IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeScreen())));
            }, icon: Icon(Icons.settings)),
          ],
        )),
      ),
    );
  }
}