//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostServerBusy {
  /// Returns a new [MattermostServerBusy] instance.
  MattermostServerBusy({
    this.busy,
    this.expires,
  });

  /// True if the server is marked as busy (under high load)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? busy;

  /// timestamp - number of seconds since Jan 1, 1970 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expires;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MattermostServerBusy && other.busy == busy && other.expires == expires;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (busy == null ? 0 : busy!.hashCode) + (expires == null ? 0 : expires!.hashCode);

  @override
  String toString() => 'MattermostServerBusy[busy=$busy, expires=$expires]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (busy != null) {
      _json[r'busy'] = busy;
    }
    if (expires != null) {
      _json[r'expires'] = expires;
    }
    return _json;
  }

  /// Returns a new [MattermostServerBusy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostServerBusy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostServerBusy[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostServerBusy[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostServerBusy(
        busy: mapValueOfType<bool>(json, r'busy'),
        expires: mapValueOfType<int>(json, r'expires'),
      );
    }
    return null;
  }

  static List<MattermostServerBusy>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MattermostServerBusy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostServerBusy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostServerBusy> mapFromJson(dynamic json) {
    final map = <String, MattermostServerBusy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostServerBusy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostServerBusy-objects as value to a dart map
  static Map<String, List<MattermostServerBusy>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MattermostServerBusy>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostServerBusy.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
