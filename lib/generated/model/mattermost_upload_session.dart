//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostUploadSession {
  /// Returns a new [MattermostUploadSession] instance.
  MattermostUploadSession({
    this.id,
    this.type,
    this.createAt,
    this.userId,
    this.channelId,
    this.filename,
    this.fileSize,
    this.fileOffset,
  });

  /// The unique identifier for the upload.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The type of the upload.
  MattermostUploadSessionTypeEnum? type;

  /// The time the upload was created in milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createAt;

  /// The ID of the user performing the upload.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  /// The ID of the channel to upload to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channelId;

  /// The name of the file to upload.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filename;

  /// The size of the file to upload in bytes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fileSize;

  /// The amount of data uploaded in bytes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fileOffset;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MattermostUploadSession &&
          other.id == id &&
          other.type == type &&
          other.createAt == createAt &&
          other.userId == userId &&
          other.channelId == channelId &&
          other.filename == filename &&
          other.fileSize == fileSize &&
          other.fileOffset == fileOffset;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (createAt == null ? 0 : createAt!.hashCode) +
      (userId == null ? 0 : userId!.hashCode) +
      (channelId == null ? 0 : channelId!.hashCode) +
      (filename == null ? 0 : filename!.hashCode) +
      (fileSize == null ? 0 : fileSize!.hashCode) +
      (fileOffset == null ? 0 : fileOffset!.hashCode);

  @override
  String toString() =>
      'MattermostUploadSession[id=$id, type=$type, createAt=$createAt, userId=$userId, channelId=$channelId, filename=$filename, fileSize=$fileSize, fileOffset=$fileOffset]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (type != null) {
      _json[r'type'] = type;
    }
    if (createAt != null) {
      _json[r'create_at'] = createAt;
    }
    if (userId != null) {
      _json[r'user_id'] = userId;
    }
    if (channelId != null) {
      _json[r'channel_id'] = channelId;
    }
    if (filename != null) {
      _json[r'filename'] = filename;
    }
    if (fileSize != null) {
      _json[r'file_size'] = fileSize;
    }
    if (fileOffset != null) {
      _json[r'file_offset'] = fileOffset;
    }
    return _json;
  }

  /// Returns a new [MattermostUploadSession] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MattermostUploadSession? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MattermostUploadSession[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MattermostUploadSession[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MattermostUploadSession(
        id: mapValueOfType<String>(json, r'id'),
        type: MattermostUploadSessionTypeEnum.fromJson(json[r'type']),
        createAt: mapValueOfType<int>(json, r'create_at'),
        userId: mapValueOfType<String>(json, r'user_id'),
        channelId: mapValueOfType<String>(json, r'channel_id'),
        filename: mapValueOfType<String>(json, r'filename'),
        fileSize: mapValueOfType<int>(json, r'file_size'),
        fileOffset: mapValueOfType<int>(json, r'file_offset'),
      );
    }
    return null;
  }

  static List<MattermostUploadSession>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MattermostUploadSession>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostUploadSession.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MattermostUploadSession> mapFromJson(dynamic json) {
    final map = <String, MattermostUploadSession>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostUploadSession.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MattermostUploadSession-objects as value to a dart map
  static Map<String, List<MattermostUploadSession>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MattermostUploadSession>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MattermostUploadSession.listFromJson(
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

/// The type of the upload.
class MattermostUploadSessionTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MattermostUploadSessionTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const attachment = MattermostUploadSessionTypeEnum._(r'attachment');
  static const import_ = MattermostUploadSessionTypeEnum._(r'import');

  /// List of all possible values in this [enum][MattermostUploadSessionTypeEnum].
  static const values = <MattermostUploadSessionTypeEnum>[
    attachment,
    import_,
  ];

  static MattermostUploadSessionTypeEnum? fromJson(dynamic value) =>
      MattermostUploadSessionTypeEnumTypeTransformer().decode(value);

  static List<MattermostUploadSessionTypeEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MattermostUploadSessionTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MattermostUploadSessionTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MattermostUploadSessionTypeEnum] to String,
/// and [decode] dynamic data back to [MattermostUploadSessionTypeEnum].
class MattermostUploadSessionTypeEnumTypeTransformer {
  factory MattermostUploadSessionTypeEnumTypeTransformer() =>
      _instance ??= const MattermostUploadSessionTypeEnumTypeTransformer._();

  const MattermostUploadSessionTypeEnumTypeTransformer._();

  String encode(MattermostUploadSessionTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MattermostUploadSessionTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MattermostUploadSessionTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'attachment':
          return MattermostUploadSessionTypeEnum.attachment;
        case r'import':
          return MattermostUploadSessionTypeEnum.import_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MattermostUploadSessionTypeEnumTypeTransformer] instance.
  static MattermostUploadSessionTypeEnumTypeTransformer? _instance;
}
