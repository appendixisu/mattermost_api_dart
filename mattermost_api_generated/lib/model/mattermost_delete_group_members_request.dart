//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostDeleteGroupMembersRequest {
  /// Returns a new [MattermostDeleteGroupMembersRequest] instance.
  MattermostDeleteGroupMembersRequest({
    this.userIds = const [],
  });

  List<int> userIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MattermostDeleteGroupMembersRequest &&
     other.userIds == userIds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userIds.hashCode);

  @override
  String toString() => 'MattermostDeleteGroupMembersRequest[userIds=$userIds]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'user_ids'] = userIds;
    return _json;
  }

  /// Returns a new [MattermostDeleteGroupMembersRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostDeleteGroupMembersRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostDeleteGroupMembersRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostDeleteGroupMembersRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostDeleteGroupMembersRequest(
        userIds: json[r'user_ids'] is List
            ? (json[r'user_ids'] as List).cast<int>()
            : const [],
      );
    }
    return null;
  }

  static List<MattermostDeleteGroupMembersRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MattermostDeleteGroupMembersRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostDeleteGroupMembersRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostDeleteGroupMembersRequest> mapFromJson(dynamic json) {
    final map = <String, MattermostDeleteGroupMembersRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostDeleteGroupMembersRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostDeleteGroupMembersRequest-objects as value to a dart map
  static Map<String, List<MattermostDeleteGroupMembersRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MattermostDeleteGroupMembersRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostDeleteGroupMembersRequest.listFromJson(entry.value, growable: growable,);
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

