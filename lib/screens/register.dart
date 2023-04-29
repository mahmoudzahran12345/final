import 'package:conditional_builder/conditional_builder.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/register/register cubit.dart';
import '../logic/register/register state.dart';
import '../resources/assets.dart';
import '../resources/color.dart';
import '../resources/constant.dart';
import '../resources/marign.dart';
import '../resources/stringmanger.dart';
import '../resources/widgets.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({Key? key}) : super(key: key);
  var formKeyRegister = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>CubitRegister(),
      child: BlocConsumer<CubitRegister,FacebookRegister>(
        listener: (context,state){
          if(state is FacebookCreateSuccessfulState){
          }
           if(state is FacebookCreateErrorState){
          }
        },
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
                      key: formKeyRegister,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          textFormFaild(
                              name: AppStrings.name,
                              obscure: false,
                              edit: ConstantApp.nameController,
                              type: TextInputType.name,
                              iconData: Icons.person_add,
                              function: (value){
                                if(value!.isEmpty)
                                {
                                  return AppStrings.enterName;
                                }
                                return null;
                              }
                          ),

                          textFormFaild(
                              name: AppStrings.email,
                              obscure: false,
                              edit: ConstantApp.emailControllerRegister,
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
                              obscure: true,
                              edit: ConstantApp.passwordControllerRegister,
                              type: TextInputType.visiblePassword,
                              iconData: Icons.lock,
                              function: (value){
                                if(value!.isEmpty)
                                {
                                  return AppStrings.enterPassword;
                                }
                                return null;
                              }
                          ),
                          textFormFaild(
                              name: AppStrings.phone,
                              obscure: false,
                              edit: ConstantApp.phoneController,
                              type: TextInputType.phone,
                              iconData: Icons.phone_android,
                              function: (value){
                                if(value!.isEmpty)
                                {
                                  return AppStrings.enterPhone;
                                }
                                return null;
                              }
                          ),
                          const SizedBox(height: 50.0,),
                          ConditionalBuilder(
                            condition: true,
                            builder: (context)=>MaterialButton(
                                onPressed: (){
                                  if(formKeyRegister.currentState!.validate()){

                                  }

                                },
                                child:showContainer(width: double.infinity,
                                  height: 60,
                                  colorDecoration: ColorManger.primaryColor1,
                                  textColor: ColorManger.primaryColor3,
                                  text: AppStrings.signUp,
                                  size: AppSize.s20,
                                  border: 25.0,
                                )


                            ),
                            fallback: (context)=> CircularProgressIndicator(color: ColorManger.primaryColor1),
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
