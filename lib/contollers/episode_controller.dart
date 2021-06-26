

import 'package:breaking_bad_quote_app/models/episode.dart';
import 'package:breaking_bad_quote_app/services/breaking_bad_api.dart';
import 'package:get/get.dart';

class EpisodeController extends GetxController{
  var episodeList = <Episode>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getEpisodes();
  }

  void getEpisodes() async{

    try {
      isLoading(true);
      var episodes = await BreakingBadApi.getEpisodes();
      if(episodes !=null){
        episodeList.value = episodes;
      }
    } finally {
      isLoading(false);
    }
  }

}