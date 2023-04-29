import 'dart:ffi';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart';
import 'fonts.dart';
import 'marign.dart';

Widget textformfeild({
  required String name,
   IconData? icon,
  required TextEditingController edit,
  IconData? iconData,
  required TextInputType type,
  required Function function,

})=>   Padding(
  padding: const EdgeInsets.only(
      right: 20.0,
      left: 20.0
  ),
  child: TextFormField(
    controller: edit,
    decoration:   InputDecoration(
        hintText: name,
        border: InputBorder.none,
        suffixIcon:Icon(
          icon,
          color: Colors.white,
        ) ,
        prefixIcon: Icon(iconData),
        hintStyle: const TextStyle(
            fontSize: 15,
            color: Colors.white

        )

    ) ,
    validator: (value){
      return function(value);
    },
    keyboardType:type,


  ),
);
/////////////////////////////////////////////////////////////////
Widget textFormFaild({required String name,
  required TextEditingController edit,
  IconData? iconData,
  required bool obscure,
  double ?size,
  required TextInputType type,
  Function ?functionbutton,
  required Function function,})=>Padding(
    padding: const EdgeInsets.all(15.0),
    child: TextFormField(
    controller: edit,
    keyboardType: type,
    obscureText: obscure,
    decoration:  InputDecoration(
        enabledBorder:  UnderlineInputBorder(
          borderSide: BorderSide(color: ColorManger.primaryColor5,width: 2),
        ),
        focusedBorder:  UnderlineInputBorder(
          borderSide: BorderSide(color: ColorManger.primaryColor5,width: 2),
        ),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorManger.primaryColor3)
        ),
        hintText: name,
        hintStyle: TextStyle(
          color: ColorManger.primaryColor2,
          fontSize: size,
        ),
        suffixIcon: Icon(iconData)

    ),
    validator: (value)
    {
      return function(value);
    },


),
  );
void navigatorTo(context,widget)=>Navigator.push(context,
  MaterialPageRoute(builder:
      (context)=>widget
  ),);

// Show Alert dialog
void showDialog2(BuildContext context,String title) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: ColorManger.primaryColor1,
        title:  const Text("Alert!!",style: TextStyle(color: Colors.white),),
        content:   Text(title,style: const TextStyle(color: Colors.white)),
        actions: <Widget>[
          TextButton(
            child:  const Text("OK",style: TextStyle(color: Colors.white)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

// widget show text
Widget showText({
  required String text,
  required Color color,
  TextAlign? textAlign,
  double?size

})=>Center(
  child: Text(
   text,
    style: TextStyle(color: color,fontSize: size,

  ),
    textAlign:textAlign ,
));
// show container
Widget showContainer(
{
  required double width,
  required double height,
  required Color colorDecoration,
  required Color textColor,
  required String text,
  required double size,
  required double border
}
    )=>Container(
    width: double.infinity,
    height: height,
    decoration: BoxDecoration(
        color: colorDecoration,

        borderRadius: BorderRadiusDirectional.circular(border)
    ),
    child: showText(text: text,
        color: textColor,
        size: size
    )

);



//////////////////////////////////

