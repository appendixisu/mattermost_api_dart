//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostUpdateUserMfaRequest {
  /// Returns a new [MattermostUpdateUserMfaRequest] instance.
  MattermostUpdateUserMfaRequest({
    required this.activate,
    this.code,
  });

  /// Use `true` to activate, `false` to deactivate
  bool activate;

  /// The code produced by your MFA client. Required if `activate` is true
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostUpdateUserMfaRequest &&
     other.activate == activate &&
     other.code == code;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activate.hashCode) +
    (code == null ? 0 : code!.hashCode);

  @override
  String toString() => 'MattermostUpdateUserMfaRequest[activate=$activate, code=$code]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'activate'] = activate;
    if (code != null) {
      _json[r'code'] = code;
    }
    return _json;
  }

  /// Returns a new [MattermostUpdateUserMfaRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostUpdateUserMfaRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostUpdateUserMfaRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostUpdateUserMfaRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostUpdateUserMfaRequest(
        activate: mapValueOfType<bool>(json, r'activate')!,
        code: mapValueOfType<String>(json, r'code'),
      );
    }
    return null;
  }

  static List<MattermostUpdateUserMfaRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostUpdateUserMfaRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostUpdateUserMfaRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostUpdateUserMfaRequest> mapFromJson(dynamic json) {
    final map = <String, MattermostUpdateUserMfaRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostUpdateUserMfaRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostUpdateUserMfaRequest-objects as value to a dart map
  static Map<String, List<MattermostUpdateUserMfaRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostUpdateUserMfaRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostUpdateUserMfaRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'activate',
  };
}

