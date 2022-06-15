//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMDataRetentionPolicyAllOf {
  /// Returns a new [MMDataRetentionPolicyAllOf] instance.
  MMDataRetentionPolicyAllOf({
    this.id,
  });

  /// The ID of this retention policy.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MMDataRetentionPolicyAllOf && other.id == id;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode);

  @override
  String toString() => 'MMDataRetentionPolicyAllOf[id=$id]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    return _json;
  }

  /// Returns a new [MMDataRetentionPolicyAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMDataRetentionPolicyAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMDataRetentionPolicyAllOf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMDataRetentionPolicyAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMDataRetentionPolicyAllOf(
        id: mapValueOfType<String>(json, r'id'),
      );
    }
    return null;
  }

  static List<MMDataRetentionPolicyAllOf>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMDataRetentionPolicyAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMDataRetentionPolicyAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMDataRetentionPolicyAllOf> mapFromJson(dynamic json) {
    final map = <String, MMDataRetentionPolicyAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMDataRetentionPolicyAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMDataRetentionPolicyAllOf-objects as value to a dart map
  static Map<String, List<MMDataRetentionPolicyAllOf>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMDataRetentionPolicyAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMDataRetentionPolicyAllOf.listFromJson(
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
