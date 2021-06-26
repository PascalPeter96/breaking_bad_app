
import 'package:breaking_bad_quote_app/models/quote.dart';
import 'package:breaking_bad_quote_app/services/breaking_bad_api.dart';
import 'package:get/get.dart';

class QuoteController extends GetxController{
  var quotesList = <Quote>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getQuotes();
  }

  void getQuotes()async{
    try {
      isLoading(true);
      var quotes = await BreakingBadApi.getQuotes();
      if(quotes != null){
        quotesList.value = quotes;
      }
    } finally {
      isLoading(false);
    }
  }

}