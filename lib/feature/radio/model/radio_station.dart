class RadioStation {
  final String stationUuid;
  final String name;
  final String url;
  final String? favicon;

  RadioStation({
    required this.stationUuid,
    required this.name,
    required this.url,
    this.favicon,
  });

  factory RadioStation.empty() {
    return RadioStation(stationUuid: "", name: "", url: "");
  }

  @override
  String toString() {
    return "Station: $name, $url, $favicon";
  }
}
