import 'package:breaking_bad_quote_app/models/character.dart';
import 'package:breaking_bad_quote_app/models/character_details.dart';
import 'package:breaking_bad_quote_app/models/episode.dart';
import 'package:breaking_bad_quote_app/models/quote.dart';
import 'package:http/http.dart' as http;


const CHARACTER_BASE_URL = 'https://www.breakingbadapi.com/api/characters';
const TRIAL_BASE_URL = 'https://www.breakingbadapi.com/api/characters';
const EPISODE_BASE_URL = 'https://www.breakingbadapi.com/api/episodes';
class BreakingBadApi {

  //fetch BB Character
  static Future<List<Character>?> getCharacters() async {
    http.Response characterUrl = await http.get(Uri.parse(CHARACTER_BASE_URL));
    var charString = (characterUrl.body);
    // print(charString);
    return characterFromJson(charString);
    // return jsonString.map((json) => Character.fromJson(json)).toList();
  }

  //fetch BB Episodes
  static Future<List<Episode>?> getEpisodes() async {
    http.Response episodeUrl = await http.get(Uri.parse(EPISODE_BASE_URL));
    var epString = (episodeUrl.body);
    // print(epString);
    return episodeFromJson(epString);
  }
//fetch BB Quotes
static Future<List<Quote>?> getQuotes() async{
    http.Response quoteUrl = await http.get(Uri.parse('https://www.breakingbadapi.com/api/quotes'));
    var quoteString = quoteUrl.body;
    // print(quoteString);
    return quoteFromJson(quoteString);
}
static Future<List<CharacterDetails>?> getDetails(int charId) async{
  http.Response detailsUrl = await http.get(Uri.parse('https://www.breakingbadapi.com/api/characters/${charId.toString()}'));
    if(detailsUrl.statusCode == 200){
      var detailsString =detailsUrl.body;
      // print(detailsString);
      return characterDetailsFromJson(detailsString);
    }
}

//search BB Character
   static Future<List<Character>?> searchCharacter(String query) async {
    http.Response searchUrl = await http.get(Uri.parse('https://www.breakingbadapi.com/api/characters?name=$query'));
    var searchString = (searchUrl.body);
    print(searchString);
    return characterFromJson(searchString);
    // return jsonString.map((json) => Character.fromJson(json)).toList();
  }


}


