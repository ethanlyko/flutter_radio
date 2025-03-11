abstract class RadioConst {
  static const int queryLimit = 20;

  static const String radioQueryTag = "tag";
  static const String radioQueryLanguage = "language";
  static const String radioQueryCountry = "country";
  static const String radioQueryStation = "station";

  static const String queryStationOrderByName = "name";
  static const String queryStationOrderByClickcount = "clickcount";
  static const String queryStationOrderByRandom = "random";
  static const String queryStationOrderByVotes = "votes";

  static const List<String> radioStationQueries = [
    queryStationOrderByName,
    queryStationOrderByClickcount,
    queryStationOrderByRandom,
    queryStationOrderByVotes,
  ];

  static const List<String> radioTagQueries = [
    "adult",
    "ambient",
    "blues",
    "catholic",
    "chill",
    "christian",
    "classical",
    "college",
    "community",
    "country",
    "culture",
    "dance",
    "decades",
    "disco",
    "easy",
    "electronic",
    "entertainment",
    "folk",
    "heavy metal",
    "hiphop",
    "hits",
    "house",
    "instrumental",
    "jazz",
    "latin",
    "lounge",
    "mainstream",
    "metal",
    "music",
    "news",
    "party",
    "pop",
    "r&b",
    "radio",
    "regional",
    "relax",
    "religious",
    "rock",
    "romantic",
    "soul",
    "sports",
    "talk",
    "top",
    "university",
    "urban",
  ];
}
