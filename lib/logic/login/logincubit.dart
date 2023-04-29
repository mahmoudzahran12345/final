import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:io';

import 'loginstate.dart';

class FacebookLoginCubit extends Cubit<FacebookLoginStates>{
  FacebookLoginCubit() : super (FacebookLoginInatialState());
  static FacebookLoginCubit get(context) => BlocProvider.of(context);
  IconData suffix = Icons.lock;
  bool ispassword = true;
  dynamic ChangeIconsPassword(){
    ispassword = !ispassword;
    emit(ChangePassword());
  }

 /* void userLogin({
    required String email,
    required String password,
  }){
    emit(FacebookLoginLoadingState());
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email
        , password: password
    ).then((value) {

      emit(FacebookLoginSuccessfulState(value.user!.uid));

    }).catchError((error){
      emit(FacebookLoginErrorState(error.toString()));
    });

  }*/
  //////////////////////////////////////////////////
 // final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
 // FirebaseAuth firebaseAuth = FirebaseAuth.instance;
 /* Future googleSignIn()async{
    emit(CuraLoginGoogleLoadingState());
    final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication=await googleSignInAccount?.authentication as GoogleSignInAuthentication;
     AuthCredential credential =GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken
    );
    await firebaseAuth.signInWithCredential(credential).then((value) {
      emit(SignGoggleSuccessfulState(value.user!.uid));
    }).catchError((error){
      emit(SignGoggleErrorState(error.toString()));
    });
  }*/
  /////////////////////////////////////////
/*  Future resetPassword({required String email})async{
    emit(ResetpasswordLoadingState());
    await firebaseAuth.sendPasswordResetEmail(
        email: email
    ).then((value) {
      emit(ResetpasswordSuccessfulState());
    }).catchError((error){
      print(error.toString());
      emit(ResetpasswordErrorState(error.toString()));
    });
  }*/


}