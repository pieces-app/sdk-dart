//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import '/api_helper.dart';


class AnalyticsTrackedSegmentEventContextApp {
  /// Returns a new [AnalyticsTrackedSegmentEventContextApp] instance.
  AnalyticsTrackedSegmentEventContextApp({
    required this.name,
    required this.version,
  });

  /// The name of the current app
  String name;

  /// The version of the application
  String version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnalyticsTrackedSegmentEventContextApp &&
     other.name == name &&
     other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (version.hashCode);

  @override
  String toString() => 'AnalyticsTrackedSegmentEventContextApp[name=$name, version=$version]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'name'] = name;
    _json[r'version'] = version;
    return _json;
  }

  /// Returns a new [AnalyticsTrackedSegmentEventContextApp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnalyticsTrackedSegmentEventContextApp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnalyticsTrackedSegmentEventContextApp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnalyticsTrackedSegmentEventContextApp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnalyticsTrackedSegmentEventContextApp(
        name: mapValueOfType<String>(json, r'name')!,
        version: mapValueOfType<String>(json, r'version')!,
      );
    }
    return null;
  }

  static List<AnalyticsTrackedSegmentEventContextApp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnalyticsTrackedSegmentEventContextApp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnalyticsTrackedSegmentEventContextApp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnalyticsTrackedSegmentEventContextApp> mapFromJson(dynamic json) {
    final map = <String, AnalyticsTrackedSegmentEventContextApp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnalyticsTrackedSegmentEventContextApp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnalyticsTrackedSegmentEventContextApp-objects as value to a dart map
  static Map<String, List<AnalyticsTrackedSegmentEventContextApp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnalyticsTrackedSegmentEventContextApp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnalyticsTrackedSegmentEventContextApp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  static Map<String, dynamic> mapToJson(Map<String, AnalyticsTrackedSegmentEventContextApp> map) {
    final jsonMap = <String, dynamic>{};
    map.forEach((key, value) {
      jsonMap[key] = value.toJson();
    });
    return jsonMap;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'version',
  };
}

