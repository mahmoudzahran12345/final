import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import 'constant.dart';

void navigatto(context,widget)=>Navigator.push(context,
  MaterialPageRoute(builder:
      (context)=>widget
  ),);
Widget ItemDrawer({
  required String title,
  required IconData iconData,
})=> Padding(
  padding: const EdgeInsets.all(15.0),
  child: Row(
    children:  [
      Expanded(
        child: Icon(
          iconData,
          size: 30,
          color:  pramcolor,
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          height: 50,
          decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(20),  color: pramcolor,
          ),
          child: Center(
            child: Text(
              title,
              style:  TextStyle(
                color:  seccolor,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    ],
  ),
);


hexcolor(String colorhexcode)
{
  String colornew = '0xff' + colorhexcode;
  colornew = colornew.replaceAll('#' , '');
  int colorint = int.parse(colornew);
  return colorint;
}
Widget textformfeild(
    {
  required String name,
  required IconData icon,
  required TextEditingController edit,
  IconData? iconData,
  required TextInputType type,
  required Function function,
})=>   Padding(
  padding: const EdgeInsets.only(
      right: 20.0,
      left: 20.0
  ),
  child: Container(
    height: 55.0,
    decoration: BoxDecoration(
        color: pramcolor,
        borderRadius: BorderRadius.circular(25.0)
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
  ),
);

/*void showtoast({required String text , required ToastState state})=> Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: choosetoast(state),
    textColor: Colors.white,
    fontSize: 16.0
);*/
enum ToastState{SUCCESS,ERROR,Warning}
Color? choosetoast(ToastState state){
  Color color ;
  switch(state)
  {

    case ToastState.SUCCESS:
      {
        color =  Colors.green;
        break;
      }
    case ToastState.ERROR:
      color =  Colors.red;
      break;
    case ToastState.Warning:
      color =  Colors.yellow;
      break;
  }
  return color;
}
void navigatandfinsh(context,widget)=>Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder:
        (context)=>widget
    ),
        (Route<dynamic> route)=>false
);
Widget defaultButton({

  //components that are common in each button does not need required
  double width = double.infinity ,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 16,
  //components that are required in each button and differ from one to another
  required Function function ,
  required String text ,
}) =>
    Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      width: width,


      child: MaterialButton(
        onPressed: function(),

        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

    );
Widget linearvater()=> Padding(
  padding: const EdgeInsets.only(left: 50.0),
  child: Container(
    width: 200.0,
    height: 2.0,
    color: Colors.grey[300],


  ),
);
 /*Widget renderContent(context) {
  return Card(
    elevation: 0.0,
    margin: const EdgeInsets.only(left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
    color: secondColor,
    child: FlipCard(
      //flipOnTouch: false,
      direction: FlipDirection.HORIZONTAL,
      speed: 1000,
      onFlipDone: (status) {
        print(status);
      },
      front: Container(
        decoration:  BoxDecoration(
          color: secondColor,
          borderRadius: BorderRadius.all(const Radius.circular(8.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Image(image: AssetImage('assets/Images/file3.png')),
            Text('Rotate',
                style: TextStyle(color: Colors.amber,fontSize: 40.0,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      back: Container(
        decoration:  BoxDecoration(
          color: secondColor,
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(image: AssetImage('assets/Images/file2.png')),
            Text('Back',
                style: TextStyle(color: Colors.amber,fontSize: 40.0,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    ),
  );
}*/


/*Future<dynamic> openMap(double latitude, double longitude) async {
  String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
  launch(googleUrl);
  }*/
