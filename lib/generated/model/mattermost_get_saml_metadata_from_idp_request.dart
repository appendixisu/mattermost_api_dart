//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostGetSamlMetadataFromIdpRequest {
  /// Returns a new [MattermostGetSamlMetadataFromIdpRequest] instance.
  MattermostGetSamlMetadataFromIdpRequest({
    this.samlMetadataUrl,
  });

  /// The URL from which to retrieve the SAML IDP data.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? samlMetadataUrl;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MattermostGetSamlMetadataFromIdpRequest && other.samlMetadataUrl == samlMetadataUrl;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (samlMetadataUrl == null ? 0 : samlMetadataUrl!.hashCode);

  @override
  String toString() => 'MattermostGetSamlMetadataFromIdpRequest[samlMetadataUrl=$samlMetadataUrl]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (samlMetadataUrl != null) {
      _json[r'saml_metadata_url'] = samlMetadataUrl;
    }
    return _json;
  }

  /// Returns a new [MattermostGetSamlMetadataFromIdpRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostGetSamlMetadataFromIdpRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MattermostGetSamlMetadataFromIdpRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MattermostGetSamlMetadataFromIdpRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostGetSamlMetadataFromIdpRequest(
        samlMetadataUrl: mapValueOfType<String>(json, r'saml_metadata_url'),
      );
    }
    return null;
  }

  static List<MattermostGetSamlMetadataFromIdpRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MattermostGetSamlMetadataFromIdpRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostGetSamlMetadataFromIdpRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostGetSamlMetadataFromIdpRequest> mapFromJson(dynamic json) {
    final map = <String, MattermostGetSamlMetadataFromIdpRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostGetSamlMetadataFromIdpRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostGetSamlMetadataFromIdpRequest-objects as value to a dart map
  static Map<String, List<MattermostGetSamlMetadataFromIdpRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MattermostGetSamlMetadataFromIdpRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostGetSamlMetadataFromIdpRequest.listFromJson(
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
