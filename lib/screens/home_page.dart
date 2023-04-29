

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/homecubit/homecubit.dart';
import '../logic/homecubit/homestate.dart';
import '../resources/assets.dart';
import '../resources/color.dart';
import '../resources/marign.dart';
import '../resources/stringmanger.dart';
import '../resources/widgets.dart';

class FacebookHome extends StatelessWidget {
  const FacebookHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  BlocProvider(
      create: (context)=>FacebookHomeCubit(
      ),
      child: BlocConsumer<FacebookHomeCubit,FacebookHomeState>(
        listener: (context,state){

        },
        builder: (context,state){
          return Padding(
            padding: const EdgeInsets.only(top: AppPadding.p8),
            child: Scaffold(
              backgroundColor: ColorManger.facebookBody,
              appBar: AppBar(
                backgroundColor:ColorManger.facebookBody,
                title: Text( AppStrings.facebook,style: TextStyle(color: ColorManger.primaryColor3,fontSize: AppSize.s30), ),
                actions: [
                  CircleAvatar(
                    backgroundColor: ColorManger.facebookPost,
                    child:  IconButton(onPressed: (){
                    }, icon:  Icon(Icons.search,size: AppSize.s30,color: ColorManger.primaryColor3,)),
                  ),
                  const SizedBox(width: AppSize.s20,),
                  CircleAvatar(

                    backgroundColor: ColorManger.facebookPost,
                    child:   InkWell(
                      onTap: (){
                      },
                      child: const Image(image: AssetImage(AssetImageManger.iconMessanger,),fit: BoxFit.cover,width: AppSize.s60,height: AppSize.s60
                        ,),
                    ),
                  )
                ],


              ),

              body:
              SingleChildScrollView(
                child: Column(
                  //mainAxisSize: MainAxisSize.min,
                  children:  [
                    Container(height: AppSize.s2, color: ColorManger.facebookPost2,),
                    const SizedBox(height: AppSize.s12),
                    SizedBox(
                      width: double.infinity,
                      height: AppSize.s50,
                      child: Row(children:  [
                        CircleAvatar(
                          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                          child:  const CircleAvatar(
                            backgroundImage: AssetImage(AssetImageManger.profile),
                          ),
                        ),

                        const SizedBox(width: AppSize.s20,),
                        Expanded(
                          child: Container(
                            height: AppSize.s40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.circular(AppPadding.p16),

                              color: ColorManger.facebookPost,



                            ),
                            child: showText(text: AppStrings.mind, color: ColorManger.primaryColor3,size: AppSize.s20,),

                          ),
                        ),
                        const SizedBox(width: AppSize.s20,),
                        CircleAvatar(backgroundColor: ColorManger.facebookPost,child:const Icon(
                          Icons.image,
                          color: Colors.green,
                          size: AppSize.s30,
                        )),
                      ],),
                    ),
                    const SizedBox(height: AppSize.s30,),
                    SizedBox(height: AppSize.s250,
                        child: Row(
                          children: [
                            Container(
                              width: AppSize.s150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.circular(AppSize.s20),
                                color: ColorManger.facebookPost,


                              ),
                              child: Column(
                                children: [
                                  Stack(
                                    alignment: const Alignment(0.0, 1.3),
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional.topCenter,
                                        child: Container(
                                          height: 185.0,
                                          width: double.infinity,
                                          decoration:   const BoxDecoration(
                                              borderRadius:  BorderRadius.all(
                                                  Radius.circular(20)
                                              ),
                                              image: DecorationImage(image:AssetImage(AssetImageManger.profile ),
                                                fit: BoxFit.fill,

                                              )
                                          ),

                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 23,
                                        backgroundColor: ColorManger.facebookPost,
                                        child:  CircleAvatar(
                                          backgroundColor: ColorManger.primaryColor1,

                                          radius: 20.0,
                                          child: IconButton(
                                              onPressed: (){},
                                              icon:const Icon(Icons.add,)
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: showText(text: "Create store", color: ColorManger.primaryColor3,size: 20),
                                  )
                                ],
                              ),


                            ),
                            const SizedBox(width: AppSize.s20,),
                            Expanded(
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  physics: const ClampingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context,index)=>Container(
                                    width: MediaQuery.of(context).size.width*0.4,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadiusDirectional.circular(AppSize.s20),
                                        color: ColorManger.facebookPost
                                    ),
                                    child: Stack(
                                      alignment: AlignmentDirectional.bottomCenter,
                                      children: [
                                        Align(
                                          alignment: AlignmentDirectional.topCenter,
                                          child: Container(
                                            height: double.infinity,
                                            width: double.infinity,
                                            decoration:   const BoxDecoration(
                                                borderRadius:  BorderRadius.all(
                                                    Radius.circular(20)
                                                ),
                                                image: DecorationImage(image:AssetImage(AssetImageManger.story2 ),
                                                  fit: BoxFit.fill,

                                                )
                                            ),

                                          ),
                                        ),
                                        Text( "KareemElkashef", style: TextStyle(color: ColorManger.primaryColor3,fontSize: 18)),
                                      ],
                                    ),
                                  ),
                                  separatorBuilder:(context,index)=> const SizedBox(width: AppSize.s20,),
                                  itemCount: 5),
                            ),
                          ],
                        )
                    ),
                    const SizedBox(height: AppSize.s20,),
                    ListView.separated(
                        scrollDirection: Axis.vertical,
                        physics: const ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context,index)=>Container(color: ColorManger.facebookPost,
                          child: SizedBox(
                            width: double.infinity,
                            child:  Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: AppPadding.p10),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: (){},
                                        child: CircleAvatar(
                                          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                                          child:  const CircleAvatar(
                                            backgroundImage: AssetImage(AssetImageManger.profile),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: AppSize.s20,),
                                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            child: showText(text: "MahmoudZahran", color: ColorManger.primaryColor3,size: AppSize.s20),
                                            onTap: (){},

                                          ),
                                          Row(
                                            children: [
                                              showText(text: "57m.", color: ColorManger.primaryColor2),
                                              const SizedBox(width: AppSize.s4),
                                              Icon(Icons.settings,color: ColorManger.primaryColor2,size: AppSize.s14)

                                            ],
                                          )



                                        ],
                                      ),
                                      const Spacer(),
                                      IconButton(onPressed: (){},icon: Icon(Icons.keyboard_control,color: ColorManger.primaryColor3)),
                                      IconButton(onPressed: (){},icon: Icon(Icons.close,color: ColorManger.primaryColor3)),



                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(child: Text("  اخواتى",style: TextStyle(color: ColorManger.primaryColor3,fontSize: 18,),textAlign: TextAlign.left)),
                                    ],
                                  ),
                                ),

                                const SizedBox(height: AppPadding.p10,),
                                InkWell(child: Image.asset(AssetImageManger.tower,fit: BoxFit.cover),onTap: (){},),
                                const SizedBox(height: AppPadding.p10,),
                                Padding(
                                  padding: const EdgeInsets.only(left: AppPadding.p10),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap:() {},
                                        child: CircleAvatar(radius: AppSize.s12,
                                          //backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                                          child:   CircleAvatar(radius: AppSize.s14,
                                            backgroundColor: ColorManger.primaryColor1,
                                            child: Image(
                                              image: const AssetImage(AssetImageManger.like),
                                              color: ColorManger.primaryColor3,
                                              fit: BoxFit.cover,
                                              width: AppSize.s20,
                                              height: AppSize.s20,
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: (){},
                                        child: const CircleAvatar(radius: AppSize.s12,
                                          child:   CircleAvatar(
                                              radius: AppSize.s14,
                                              backgroundColor: Colors.red,
                                              child: Icon(
                                                Icons.favorite,size: AppSize.s16,
                                                color: Colors.white,

                                              )
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: AppPadding.p10),
                                      showText(text: "500", color: ColorManger.primaryColor2),
                                      const Spacer(),
                                      InkWell(
                                          onTap: (){},
                                          child: showText(text: "50 comments ", color: ColorManger.primaryColor2)),
                                      InkWell(
                                          onTap: (){},
                                          child: showText(text: ".20 shares", color: ColorManger.primaryColor2)),


                                    ],
                                  ),
                                ),
                                const SizedBox(height:AppPadding.p10 ),
                                Container(height: AppSize.s2, color: ColorManger.facebookPost2,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        onTap: (){},
                                        child: Row(
                                          children: [
                                            Image(
                                              image: const AssetImage(AssetImageManger.like),width: AppSize.s50,height: AppSize.s40,color: ColorManger.primaryColor2,

                                            ),
                                            showText(text: "Like", color: ColorManger.primaryColor2),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        onTap: (){},
                                        child: Row(
                                          children: [
                                            Image(
                                              image: const AssetImage(AssetImageManger.comment),width: AppSize.s50,height: AppSize.s40,color: ColorManger.primaryColor2,

                                            ),
                                            showText(text: "Comment", color: ColorManger.primaryColor2),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: AppSize.s40),
                                    Expanded(
                                      child: InkWell(
                                        onTap: (){},
                                        child: Row(
                                          children: [
                                            Image(
                                              image: const AssetImage(AssetImageManger.share),width: AppSize.s50,height: AppSize.s40,color: ColorManger.primaryColor2,

                                            ),
                                            showText(text: "Share", color: ColorManger.primaryColor2),
                                          ],
                                        ),
                                      ),
                                    ),



                                  ],
                                )



                              ],
                            ),



                          ),
                        ),
                        separatorBuilder:(context,index)=>  const SizedBox(height: AppSize.s4),
                        itemCount: 5),
                  ],
                ),
              ),


              bottomNavigationBar: BottomNavigationBar(
                items: FacebookHomeCubit.get(context).bottomItem,
                currentIndex: FacebookHomeCubit.get(context).currentIndex,
                selectedItemColor: ColorManger.primaryColor1,
                unselectedItemColor: ColorManger.primaryColor3,
                type: BottomNavigationBarType.fixed, // Fixed
                backgroundColor: ColorManger.facebookBody,
                elevation: AppSize.s20,
                onTap: (index){
                },

              ),


            ),
          );
        },
      ),
    );

  }


}
