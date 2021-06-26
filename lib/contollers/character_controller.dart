

import 'package:breaking_bad_quote_app/models/character.dart';
import 'package:breaking_bad_quote_app/models/character_details.dart';
import 'package:breaking_bad_quote_app/services/breaking_bad_api.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class CharacterController extends GetxController{
  var characterList =<Character>[].obs;
  var isLoading = true.obs;


  @override
  void onInit() {
    super.onInit();
    getCharacters();

  }

  void getCharacters() async{
    try {
      isLoading(true);
      var characters = await BreakingBadApi.getCharacters();
      if(characters !=null){
        characterList.value = characters;
      }
    } finally {
      isLoading(false);
    }
  }
}