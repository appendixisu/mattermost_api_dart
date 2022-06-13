//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostMigrateIdLdapRequest {
  /// Returns a new [MattermostMigrateIdLdapRequest] instance.
  MattermostMigrateIdLdapRequest({
    required this.toAttribute,
  });

  /// New IdAttribute value
  String toAttribute;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MattermostMigrateIdLdapRequest && other.toAttribute == toAttribute;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (toAttribute.hashCode);

  @override
  String toString() => 'MattermostMigrateIdLdapRequest[toAttribute=$toAttribute]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'toAttribute'] = toAttribute;
    return _json;
  }

  /// Returns a new [MattermostMigrateIdLdapRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostMigrateIdLdapRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostMigrateIdLdapRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostMigrateIdLdapRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostMigrateIdLdapRequest(
        toAttribute: mapValueOfType<String>(json, r'toAttribute')!,
      );
    }
    return null;
  }

  static List<MattermostMigrateIdLdapRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MattermostMigrateIdLdapRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostMigrateIdLdapRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostMigrateIdLdapRequest> mapFromJson(dynamic json) {
    final map = <String, MattermostMigrateIdLdapRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostMigrateIdLdapRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostMigrateIdLdapRequest-objects as value to a dart map
  static Map<String, List<MattermostMigrateIdLdapRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MattermostMigrateIdLdapRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostMigrateIdLdapRequest.listFromJson(
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
  static const requiredKeys = <String>{
    'toAttribute',
  };
}
