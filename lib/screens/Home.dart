import 'package:finilproject/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/constant.dart';
import '../components/shape.dart';
import '../resources/color.dart';
import '../resources/marign.dart';
import '../resources/stringmanger.dart';
import '../resources/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: headerHeight,
            child: HeaderWidget(headerHeight, true, Icons.login_rounded), //let's create a common header widget
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
          const SizedBox(height: 20,),
          Padding(
            padding:  EdgeInsets.only(left: 20.0,right: 20.0),
            child: InkWell(
              onTap: (){
                navigatorTo(context, LoginScreen());
              },
              child: showContainer(width: double.infinity,
                  height: 60,
                  colorDecoration: ColorManger.primaryColor1,
                  textColor: ColorManger.primaryColor3,
                  text: AppStrings.logIn,
                  size: AppSize.s20,
                  border: 20.0
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0),
            child: showContainer(width: double.infinity,
                height: 60,
                colorDecoration: ColorManger.primaryColor5,
                textColor: ColorManger.primaryColor7,
                text: AppStrings.google,
                size: AppSize.s20,
                border: 0.0
            ),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
            child: showContainer(width: double.infinity,
                height: 60,
                colorDecoration: ColorManger.primaryColor1,
                textColor: ColorManger.primaryColor3,
                text: AppStrings.createAccount,
                size: AppSize.s20,
                border: 20.0
            ),
          )





        ],
      ),
    );
  }
}
