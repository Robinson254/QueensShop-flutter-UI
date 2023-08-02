import 'package:flutter/material.dart';
import 'package:queens/screens/constants.dart';
class CustAppBar extends StatefulWidget {
  const CustAppBar({super.key});

  @override
  State<CustAppBar> createState() => _CustAppBarState();
}

class _CustAppBarState extends State<CustAppBar> {
  @override
  Widget build(BuildContext context) {
    return  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Builder(
                      builder: (context)=>
                      IconButton(onPressed: (){
                        Scaffold.of(context).openDrawer();
                      }, icon: Icon(Icons.dashboard,color: kPrimaryColor,))),
                  ),
                  
                  Column(
                    children: [
                      Text('Robinrishie'),
                      Text('Nakuru,Kenya',style:TextStyle(
                        fontWeight: FontWeight.w500,fontSize: 16,
                      ) ,),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: kPrimaryColor,
                  )
                ],
              );
  }
}