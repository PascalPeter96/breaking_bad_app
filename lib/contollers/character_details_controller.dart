
import 'package:breaking_bad_quote_app/models/character_details.dart';
import 'package:breaking_bad_quote_app/services/breaking_bad_api.dart';
import 'package:get/get.dart';

class CharacterDetailsController extends GetxController{
  var charDetailsList = <CharacterDetails>[].obs;
  var isLoading = true.obs;



  @override
  void onInit() {
    super.onInit();

  }

    Future<void> getDetails(int charId) async{
    try {
      isLoading(true);
      var charDetails = await BreakingBadApi.getDetails(charId);
      if(charDetails != null){
        charDetailsList.value = charDetails;
      }
    } finally {
      isLoading(false);
    }

  }
}