import 'package:breaking_bad_quote_app/contollers/character_details_controller.dart';
import 'package:breaking_bad_quote_app/models/character.dart';
import 'package:breaking_bad_quote_app/models/character_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CharDetails extends StatelessWidget {
  final CharacterDetailsController characterDetailsController =
  Get.put(CharacterDetailsController());

   // CharDetails({Key? key, required Character character}) : super(key: key);
   //
   // final CharacterDetails character = CharacterDetails();

  var data = Get.arguments;

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          title: Text(data[0]),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(data[3]),
            ),
          ),
        ),
        ),
    );
  }
}
