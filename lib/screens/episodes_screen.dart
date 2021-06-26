import 'package:breaking_bad_quote_app/contollers/episode_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:http/http.dart';

class EpisodesScreen extends StatelessWidget {
  final EpisodeController episodeController = Get.put(
      EpisodeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListView.builder(
        physics: BouncingScrollPhysics(),
          itemCount: episodeController.episodeList.length,
          itemBuilder: (context, index) {
          var ep = episodeController.episodeList[index];
            return Padding(
              padding: EdgeInsets.only(top: 1.h, right: 0, bottom: 1.h,left: 2.h),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.w),
                ),
                clipBehavior: Clip.antiAlias,
                color: Colors.black,
                child: Row(
                  children: [
                    Container(
                      height: 12.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.w),
                          bottomRight: Radius.circular(10.w),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'S',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.sp,),),
                                      TextSpan(
                                        text: '0${ep.season} ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.sp,),),
                                    ]
                                )),
                              ],
                            ),
                          ),
                          SizedBox(height: 0.02.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'E',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22.sp,),),
                                    TextSpan(
                                      text: '0${ep.episode} ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,),),
                                  ]
                              )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 15.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.w),
                          bottomLeft: Radius.circular(5.w),
                          topRight: Radius.circular(5.w),
                          bottomRight: Radius.circular(5.w),
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 2.w,top: 1.w, bottom: 0.w),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(ep.title, style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(height: 0.9.h,),
                                  Text(ep.airDate, style: TextStyle(
                                      fontSize: 13.sp,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white60,
                                  ),),

                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.recent_actors_outlined,
                                  color: Colors.amber,
                                  ),
                                iconSize: 40.sp,
                                tooltip: 'Actors',

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
    });
  }
}
