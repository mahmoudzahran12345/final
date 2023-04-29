import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:finilproject/logic/register/register%20state.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';






class CubitRegister extends Cubit<FacebookRegister>{
  CubitRegister() : super (FacebookRegisterInatialState());
  static CubitRegister get(context) => BlocProvider.of(context);

 /* void userRegister({
    required String name,
    required String email,
    required String password,
    required String phone
  })async{
    emit(FacebookRegisterLoadingState());
    await FirebaseAuth.instance.
    createUserWithEmailAndPassword(
        email: email,
        password: password
    )
        .then((value) {

      createUser(name: name, email: email, phone: phone, uId: value.user!.uid);

    }).catchError((error){
      print(error.toString());
      emit(FacebookRegisterErrorState(error.toString()));
    });

  }*/

  /*void createUser({required String name,required String email,required String phone,required String uId}){
    FacebookUserModel model = FacebookUserModel(
      name: name,
      email: email,
      phone: phone,
      uId: uId,

    );
    FirebaseFirestore.instance.collection('Users').doc(uId).set(model.tomap()).then((value) {
      emit(FacebookCreateSuccessfulState());

    }).catchError((error){
      emit(FacebookCreateErrorState(error));
    });
  }*/

  IconData suffix = Icons.visibility;
  bool ispassword = true;
  void changeiconspassword(){
    ispassword = !ispassword;
    suffix = ispassword ?Icons.visibility:Icons.visibility_off;
    emit(changepasswordRegister());
  }
  //////////////////////////////////////////////////
  /*Future isLoggedIn() async {
    emit(EmailVerifyLoading());
    await FirebaseAuth.instance.currentUser?.sendEmailVerification().then((value) {
      emit(EmailVerifySuccess());
    }).catchError((error){
      emit(EmailVerifyError());
    });
  }*/


}