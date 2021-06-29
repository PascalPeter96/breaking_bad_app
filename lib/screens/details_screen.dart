import 'package:breaking_bad_quote_app/contollers/character_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';


class CharDetails extends StatelessWidget {
  final CharacterDetailsController characterDetailsController =
  Get.put(CharacterDetailsController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var data = Get.arguments;

    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              width: width,
              child: Stack(
                children: [
                  Container(
                      height: height * 0.55,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(data[3]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                  Container(
                    width: width,
                    margin: EdgeInsets.only(top: height*0.5),
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:13),
                              child: RichText(text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'C',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.sp,),),
                                    TextSpan(
                                      text: 'haracter : ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.sp,),),
                                    TextSpan(
                                      text: '${data[0]}',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 23.sp,
                                      fontWeight: FontWeight.bold),),
                                  ]
                              ),),
                            ),
                          ],
                        ),
                        Wrap(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: RichText(text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Ni',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.sp,),),
                                    TextSpan(
                                      text: 'ckname : ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.sp,),),
                                    TextSpan(
                                      text: '${data[5]}',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w400),),
                                  ]
                              ),),
                            ),
                          ],
                        ),
                        Wrap(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: RichText(text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'O',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.sp,),),
                                    TextSpan(
                                      text: 'ccupation(s) : ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.sp,),),
                                    TextSpan(
                                      text: '${data[2]}',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 23.sp,
                                          fontWeight: FontWeight.w300),),
                                  ]
                              ),),
                            ),
                          ],
                        ),
                        Wrap(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: RichText(text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Se',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.sp,),),
                                    TextSpan(
                                      text: 'ason(s) : ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13.sp,),),
                                    TextSpan(
                                      text: '${data[6]}',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 23.sp,
                                          fontWeight: FontWeight.w300),),
                                  ]
                              ),),
                            ),
                          ],
                        ),
                        ListTile(
                          leading: Wrap(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: RichText(text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'S',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.sp,),),
                                      TextSpan(
                                        text: 'tatus : ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13.sp,),),

                                    ]
                                ),),
                              ),
                            ],
                          ),
                          title: Container(
                            height: 14.h,
                            width: 55.w,
                            decoration: BoxDecoration(
                                color: (data[4] =="Alive")
                                    ? Colors.green
                                    : Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(35))
                            ),
                            child: Align(
                              alignment: Alignment.center,
                                child: Text(data[4],
                                  style: TextStyle(
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 30,
                    top: height*0.43,
                    child: Container(
                      height: 13.h,
                      width: 55.w,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                        borderRadius: BorderRadius.all(Radius.circular(30.sp)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(data[7], style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w400
                          ),),
                        ),
                      ),
                    ),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.arrow_back_outlined,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ),
    );
  }

}

