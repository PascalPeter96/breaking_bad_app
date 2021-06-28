import 'package:breaking_bad_quote_app/contollers/character_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screenshot/screenshot.dart';


class CharDetails extends StatelessWidget {
  final CharacterDetailsController characterDetailsController =
  Get.put(CharacterDetailsController());
  final _screenShotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var data = Get.arguments;

    return Scaffold(
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
                    children: [

                    ],
                  ),
                ),
                Positioned(
                  right: 30,
                  top: height*0.45,
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.amber
                    ),
                  ),),
              ],
            ),
          ),
        ),
        );
  }

}

