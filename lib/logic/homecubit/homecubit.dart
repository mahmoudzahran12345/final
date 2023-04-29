import 'dart:convert';
import 'package:bloc/bloc.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/drawermodel.dart';
import '../../models/model message.dart';
import '../../models/usermodel.dart';
import 'homestate.dart';


class FacebookHomeCubit extends Cubit<FacebookHomeState>{
  FacebookHomeCubit (): super (FacebookHomeInatialState());
  static FacebookHomeCubit get(context)=> BlocProvider.of(context);
  List <DrawerModel>sections = [];
  loadSection(BuildContext context)async {
    emit(FacebookHomeLoadDataLoading());
    await DefaultAssetBundle.of(context).loadString('assets/images/drawer.json').then((value) {
      var response = json.decode(value);
      response.forEach((section){
        DrawerModel sectionModel = DrawerModel.fromJson(section);
        print(sectionModel.image);
          sections.add(sectionModel);
          emit(FacebookHomeLoadDataSusseful());

      });

    }).catchError((error){
         emit(FacebookHomeLoadDataError(error.toString()));
    });
  }
  int currentIndex = 0;
  List<Widget> screen = [

  ];
  List<dynamic>home = [];
  List<dynamic>friends = [];
  List<dynamic>market = [];
  List<BottomNavigationBarItem>bottomItem =[
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.home,


        ),
      label: "Home"

    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.group,

      ),
      label: "Friends"
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.account_balance,

      ),
      label: "MarketPlace"
    ),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.groups,

        ),
      label: "Groups"

    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.notifications,

      ),
      label: "Notification"
    ),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.person,

        ),
        label: "Profile"
    ),
  ];
  List<BottomNavigationBarItem>bottomItemChat =[
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.chat_outlined,


        ),
        label: "Chats"

    ),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.call_sharp,

        ),
        label: "Calls"
    ),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.group_sharp,

        ),
        label: "People"
    ),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.auto_stories_rounded,

        ),
        label: "Stories"

    ),

  ];
  FacebookUserModel? model;
  //////////////////////////////////////////////////////////////////////

// Function send message

// function get nessage



}

