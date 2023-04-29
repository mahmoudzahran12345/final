import 'package:conditional_builder/conditional_builder.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/login/logincubit.dart';
import '../logic/login/loginstate.dart';
import '../resources/assets.dart';
import '../resources/color.dart';
import '../resources/constant.dart';
import '../resources/marign.dart';
import '../resources/stringmanger.dart';
import '../resources/widgets.dart';

class LoginScreen extends StatelessWidget {

   LoginScreen({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>FacebookLoginCubit(),

      child: BlocConsumer<FacebookLoginCubit,FacebookLoginStates>(
        listener:(context,state){
          if(state is FacebookLoginSuccessfulState){
           // navigatorTo(context, const FacebookHome());

          }
           if(state is FacebookLoginErrorState){
                 showDialog2(context, AppStrings.emailAndPassword);
          }
           if(state is SignGoggleSuccessfulState){
             //navigatto(context, const FacebookHome());

           }
           if(state is SignGoggleErrorState){
             showDialog2(context,"Email  is not correct");

           }

        } ,
        builder: (context,state){
          return Scaffold(
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:  [
                     Image(
                      width: double.infinity,
                      image: AssetImage(AssetImageManger.tower),
                      fit: BoxFit.cover ,
                    ),
                    const SizedBox(height: AppSize.s8,),
                    Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          textFormFaild(
                              name: AppStrings.email,
                              obscure: false,
                              edit: ConstantApp.emailControllerLogin,
                              type: TextInputType.emailAddress,
                              iconData: Icons.email_sharp,
                              function: (value){
                                if(value!.isEmpty)
                                {
                                  return AppStrings.enterEmail;
                                }
                                return null;
                              }
                          ),

                          textFormFaild(
                              name: AppStrings.password,
                              edit: ConstantApp.passwordControllerLogin,
                              type: TextInputType.visiblePassword,
                              obscure: FacebookLoginCubit.get(context).ispassword,
                              iconData: FacebookLoginCubit.get(context).suffix,

                              function: (value){
                                if(value!.isEmpty)
                                {
                                  return AppStrings.enterPassword;
                                }
                                return null;
                              }
                          ),
                          InkWell(
                              onTap: (){FacebookLoginCubit.get(context).ChangeIconsPassword();},
                              child: showText(text: AppStrings.showPassword, color: ColorManger.primaryColor7,size: AppSize.s20)),
                          const SizedBox(height: AppSize.s12,),

                          ConditionalBuilder(
                            condition: state is !FacebookLoginLoadingState,
                            builder: (context)=>MaterialButton(
                                onPressed: (){
                                  if(formKey.currentState!.validate()) {

                                  }
                                },
                                child:showContainer(width: double.infinity,
                                    height: 60,
                                    colorDecoration: ColorManger.primaryColor1,
                                    textColor: ColorManger.primaryColor3,
                                    text: AppStrings.logIn,
                                    size: AppSize.s20,
                                    border: 20.0
                                )


                            ),
                            fallback: (context)=> CircularProgressIndicator(color: ColorManger.primaryColor1,),
                          ),
                          const SizedBox(height: AppSize.s4,),
                          TextButton(
                              onPressed: (){
                              },
                              child: showText(text: AppStrings.forgotPass,
                                  color: ColorManger.primaryColor7,
                                  size: AppSize.s20)
                          ),
                          Icon(Icons.arrow_circle_down_outlined,color: ColorManger.primaryColor7,size: AppSize.s40,),
                          ConditionalBuilder(
                            condition: state is !CuraLoginGoogleLoadingState,
                            builder: (context)=>MaterialButton(
                                onPressed: (){
                                },
                                child:showContainer(width: double.infinity,
                                    height: 60,
                                    colorDecoration: ColorManger.primaryColor5,
                                    textColor: ColorManger.primaryColor7,
                                    text: AppStrings.google,
                                    size: AppSize.s20,
                                    border: 0.0
                                )


                            ),
                            fallback: (context)=> CircularProgressIndicator(color: ColorManger.primaryColor1,),
                          ),
                          const SizedBox(height: AppSize.s25,),
                          ConditionalBuilder(
                            condition: true,
                            builder: (context)=>MaterialButton(
                                onPressed: (){
                                },
                                child:showContainer(width: double.infinity,
                                    height: 60,
                                    colorDecoration: ColorManger.primaryColor1,
                                    textColor: ColorManger.primaryColor3,
                                    text: AppStrings.createAccount,
                                    size: AppSize.s20,
                                    border: 20.0
                                )


                            ),
                            fallback: (context)=> CircularProgressIndicator(color: ColorManger.primaryColor1,),
                          ),







                        ],
                      ),
                    ),

                  ],

                ),


              )


          );
        },
      ),
    );
  }
}
