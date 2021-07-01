
import 'package:breaking_bad_quote_app/models/character.dart';
import 'package:breaking_bad_quote_app/services/breaking_bad_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SearchController extends GetxController{
  var searchList = <Character>[].obs;
  var isLoading = true.obs;
  var folded = true.obs;
  late TextEditingController searchTextController;

  @override
  void onInit() {
    searchTextController = TextEditingController();
    super.onInit();
    searchCharacter();
  }

  @override
  void onClose() {
    searchTextController.dispose();
  }

  void searchCharacter() async{
    folded(false);
    try {
      isLoading(true);
      var search = await BreakingBadApi.searchCharacter(searchTextController.text);
      if(search !=null){
        searchList.value = search;
      }
    } finally {
      isLoading(false);
    }
  }
}