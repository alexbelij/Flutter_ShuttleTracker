import 'ShuttlePoint.dart';

class ShuttleStop extends ShuttlePoint {
  /// ID associated with stop
  int id;

  /// Name of the stop
  String name;

  /// Timestamp of when stop was created
  String created;

  /// Timestamp ofr when stop was updated
  String updated;

  /// Brief description of the stop
  String description;

  /// Uses a super constructor to define lat/lng attributes
  ShuttleStop(latitude, longitude, this.name, this.created, this.updated,
      this.description)
      : super(0.0, 0.0);

  ShuttleStop.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
    id = json['id'];
    name = json['name'];
    created = json['created'];
    updated = json['updated'];
    description = json['description'];
  }
}