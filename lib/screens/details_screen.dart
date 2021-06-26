import 'package:breaking_bad_quote_app/contollers/character_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CharDetails extends StatelessWidget {
  final CharacterDetailsController characterDetailsController =
  Get.put(CharacterDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('details'),
      ),
      body: Obx(() {
        return Column(
          children: [
            Text('hji'),
          ],
        );
      }),
    );
  }
}

