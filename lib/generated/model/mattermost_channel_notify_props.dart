//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostChannelNotifyProps {
  /// Returns a new [MattermostChannelNotifyProps] instance.
  MattermostChannelNotifyProps({
    this.email,
    this.push,
    this.desktop,
    this.markUnread,
  });

  /// Set to \"true\" to enable email notifications, \"false\" to disable, or \"default\" to use the global user notification setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? email;

  /// Set to \"all\" to receive push notifications for all activity, \"mention\" for mentions and direct messages only, \"none\" to disable, or \"default\" to use the global user notification setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? push;

  /// Set to \"all\" to receive desktop notifications for all activity, \"mention\" for mentions and direct messages only, \"none\" to disable, or \"default\" to use the global user notification setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? desktop;

  /// Set to \"all\" to mark the channel unread for any new message, \"mention\" to mark unread for new mentions only. Defaults to \"all\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? markUnread;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MattermostChannelNotifyProps &&
          other.email == email &&
          other.push == push &&
          other.desktop == desktop &&
          other.markUnread == markUnread;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (email == null ? 0 : email!.hashCode) +
      (push == null ? 0 : push!.hashCode) +
      (desktop == null ? 0 : desktop!.hashCode) +
      (markUnread == null ? 0 : markUnread!.hashCode);

  @override
  String toString() =>
      'MattermostChannelNotifyProps[email=$email, push=$push, desktop=$desktop, markUnread=$markUnread]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (email != null) {
      _json[r'email'] = email;
    }
    if (push != null) {
      _json[r'push'] = push;
    }
    if (desktop != null) {
      _json[r'desktop'] = desktop;
    }
    if (markUnread != null) {
      _json[r'mark_unread'] = markUnread;
    }
    return _json;
  }

  /// Returns a new [MattermostChannelNotifyProps] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostChannelNotifyProps? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostChannelNotifyProps[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostChannelNotifyProps[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostChannelNotifyProps(
        email: mapValueOfType<bool>(json, r'email'),
        push: mapValueOfType<String>(json, r'push'),
        desktop: mapValueOfType<String>(json, r'desktop'),
        markUnread: mapValueOfType<String>(json, r'mark_unread'),
      );
    }
    return null;
  }

  static List<MattermostChannelNotifyProps>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MattermostChannelNotifyProps>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostChannelNotifyProps.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostChannelNotifyProps> mapFromJson(dynamic json) {
    final map = <String, MattermostChannelNotifyProps>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostChannelNotifyProps.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostChannelNotifyProps-objects as value to a dart map
  static Map<String, List<MattermostChannelNotifyProps>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MattermostChannelNotifyProps>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostChannelNotifyProps.listFromJson(
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
