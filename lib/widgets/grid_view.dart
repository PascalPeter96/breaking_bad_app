import 'package:breaking_bad_quote_app/contollers/character_controller.dart';
import 'package:breaking_bad_quote_app/contollers/homepage_controller.dart';
import 'package:breaking_bad_quote_app/models/character_details.dart';
import 'package:breaking_bad_quote_app/screens/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CharacterGridView extends StatelessWidget {
  final CharacterController characterController = Get.put(
      CharacterController());
  final HomePageController homePageController = Get.put(
      HomePageController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() {
          return Expanded(
              child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                   itemCount: characterController.characterList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: MediaQuery.of(context).size.width>500? 3:2,
                      crossAxisSpacing: 14,
                      mainAxisSpacing: 14

                  ),
                  itemBuilder: (context, index) {
                    var character = characterController.characterList[index];
                    return GestureDetector(
                      onTap: (){
                        Get.to(() => CharDetails(), arguments: [
                          "${character.name}",
                          "${character.birthday}",
                          "${character.occupation}",
                          "${character.img}",
                          "${character.status}",
                          "${character.nickname}",
                          "${character.appearance}",
                          "${character.portrayed}",
                        ]);
                      },
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.network(character.img.toString(),
                            fit: MediaQuery.of(context).size.width>400? BoxFit.cover : BoxFit.fill,
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(character.name.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.width>400? 25:14,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                padding: EdgeInsets.all(8),
                                child: Text(character.status.toString(),
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width>600? 17:7,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),),
                                decoration: BoxDecoration(
                                  color: (character.status.toString() =="Alive")
                                      ? Colors.green
                                  : Colors.red,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }));
        }),
      ],
    );
  }

}
