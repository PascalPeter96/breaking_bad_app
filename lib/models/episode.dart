// To parse this JSON data, do
//
//     final episode = episodeFromJson(jsonString);

import 'dart:convert';

List<Episode> episodeFromJson(String str) => List<Episode>.from(json.decode(str).map((x) => Episode.fromJson(x)));

String episodeToJson(List<Episode> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Episode {
  Episode({
    required this.episodeId,
    required this.title,
    required this.season,
    required this.airDate,
    required this.characters,
    required this.episode,
    required this.series,
  });

  int episodeId;
  String title;
  String season;
  String airDate;
  List<String> characters;
  String episode;
  Series series;

  factory Episode.fromJson(Map<String, dynamic> json) => Episode(
    episodeId: json["episode_id"],
    title: json["title"],
    season: json["season"],
    airDate: json["air_date"],
    characters: List<String>.from(json["characters"].map((x) => x)),
    episode: json["episode"],
    series: seriesValues.map[json["series"]]!,
  );

  Map<String, dynamic> toJson() => {
    "episode_id": episodeId,
    "title": title,
    "season": season,
    "air_date": airDate,
    "characters": List<dynamic>.from(characters.map((x) => x)),
    "episode": episode,
    "series": seriesValues.reverse[series],
  };
}

enum Series { BREAKING_BAD, BETTER_CALL_SAUL }

final seriesValues = EnumValues({
  "Better Call Saul": Series.BETTER_CALL_SAUL,
  "Breaking Bad": Series.BREAKING_BAD
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    // ignore: unnecessary_null_comparison
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
