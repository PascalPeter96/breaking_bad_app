// To parse this JSON data, do
//
//     final quote = quoteFromJson(jsonString);

import 'dart:convert';

List<Quote> quoteFromJson(String str) => List<Quote>.from(json.decode(str).map((x) => Quote.fromJson(x)));

String quoteToJson(List<Quote> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Quote {
  Quote({
    this.quoteId,
    this.quote,
    this.author,
    this.series,
  });

  int? quoteId;
  String? quote;
  String? author;
  Series? series;

  factory Quote.fromJson(Map<String, dynamic> json) => Quote(
    quoteId: json["quote_id"],
    quote: json["quote"],
    author: json["author"],
    series: seriesValues.map[json["series"]]!,
  );

  Map<String, dynamic> toJson() => {
    "quote_id": quoteId,
    "quote": quote,
    "author": author,
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
