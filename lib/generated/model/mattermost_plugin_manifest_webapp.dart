//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostPluginManifestWebapp {
  /// Returns a new [MattermostPluginManifestWebapp] instance.
  MattermostPluginManifestWebapp({
    this.bundlePath,
  });

  /// Path to the webapp JavaScript bundle.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bundlePath;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostPluginManifestWebapp &&
     other.bundlePath == bundlePath;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bundlePath == null ? 0 : bundlePath!.hashCode);

  @override
  String toString() => 'MattermostPluginManifestWebapp[bundlePath=$bundlePath]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (bundlePath != null) {
      _json[r'bundle_path'] = bundlePath;
    }
    return _json;
  }

  /// Returns a new [MattermostPluginManifestWebapp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostPluginManifestWebapp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostPluginManifestWebapp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostPluginManifestWebapp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostPluginManifestWebapp(
        bundlePath: mapValueOfType<String>(json, r'bundle_path'),
      );
    }
    return null;
  }

  static List<MattermostPluginManifestWebapp>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostPluginManifestWebapp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostPluginManifestWebapp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostPluginManifestWebapp> mapFromJson(dynamic json) {
    final map = <String, MattermostPluginManifestWebapp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostPluginManifestWebapp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostPluginManifestWebapp-objects as value to a dart map
  static Map<String, List<MattermostPluginManifestWebapp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostPluginManifestWebapp>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostPluginManifestWebapp.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

