import 'models_constants/planets_info_keys.dart';

class Planets {
  int? count;
  String? next;
  String? previous;
  dynamic results;

  Planets({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  factory Planets.fromJson(Map<String, dynamic> json) => Planets(
    count: json[PlanetsInfoKeys.count],
    next: json[PlanetsInfoKeys.next],
    previous: json[PlanetsInfoKeys.previous],
    results: json[PlanetsInfoKeys.results],
  );
}