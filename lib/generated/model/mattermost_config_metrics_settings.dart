//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostConfigMetricsSettings {
  /// Returns a new [MattermostConfigMetricsSettings] instance.
  MattermostConfigMetricsSettings({
    this.enable,
    this.blockProfileRate,
    this.listenAddress,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? blockProfileRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? listenAddress;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MattermostConfigMetricsSettings &&
          other.enable == enable &&
          other.blockProfileRate == blockProfileRate &&
          other.listenAddress == listenAddress;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (enable == null ? 0 : enable!.hashCode) +
      (blockProfileRate == null ? 0 : blockProfileRate!.hashCode) +
      (listenAddress == null ? 0 : listenAddress!.hashCode);

  @override
  String toString() =>
      'MattermostConfigMetricsSettings[enable=$enable, blockProfileRate=$blockProfileRate, listenAddress=$listenAddress]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (enable != null) {
      _json[r'Enable'] = enable;
    }
    if (blockProfileRate != null) {
      _json[r'BlockProfileRate'] = blockProfileRate;
    }
    if (listenAddress != null) {
      _json[r'ListenAddress'] = listenAddress;
    }
    return _json;
  }

  /// Returns a new [MattermostConfigMetricsSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostConfigMetricsSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostConfigMetricsSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostConfigMetricsSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostConfigMetricsSettings(
        enable: mapValueOfType<bool>(json, r'Enable'),
        blockProfileRate: mapValueOfType<int>(json, r'BlockProfileRate'),
        listenAddress: mapValueOfType<String>(json, r'ListenAddress'),
      );
    }
    return null;
  }

  static List<MattermostConfigMetricsSettings>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MattermostConfigMetricsSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostConfigMetricsSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostConfigMetricsSettings> mapFromJson(dynamic json) {
    final map = <String, MattermostConfigMetricsSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostConfigMetricsSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostConfigMetricsSettings-objects as value to a dart map
  static Map<String, List<MattermostConfigMetricsSettings>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MattermostConfigMetricsSettings>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostConfigMetricsSettings.listFromJson(
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
