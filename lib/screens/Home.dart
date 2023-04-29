import 'package:finilproject/components/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/constant.dart';
import '../components/shape.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: headerHeight,
            child: const HeaderWidget(headerHeight, true, Icons.login_rounded), //let's create a common header widget
          ),

         Expanded(
           child: ListView.separated(
               scrollDirection: Axis.horizontal,
               itemBuilder: (context,index)=>Padding(
                 padding: const EdgeInsets.only(top: 70.0,
                     left: 10.0
                 ),
                 child: Column(
                   children: [
                     InkWell(
                       onTap: (){
                         print('Hello world');
                       },
                       child: Container(
                         width: 120,
                         height: 190,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20.0),
                             color: Colors.grey,
                             image: DecorationImage(image: NetworkImage("https://imglarger.com/Images/before-after/ai-image-enlarger-1-after-2.jpg"),fit: BoxFit.cover)
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
               separatorBuilder: (context,index)=>Container(width: 0,height: 10,),
               itemCount: 10),
         ),
          SizedBox(height: 20,),
          MaterialButton(
            onPressed: (){

            },
            child: const Text(
              'Signin',
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25.0),
            ),

          ),


        ],
      ),
    );
  }
}
