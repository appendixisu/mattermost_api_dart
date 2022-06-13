//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostTermsOfServiceApi {
  MattermostTermsOfServiceApi([MattermostApiClient? apiClient]) : apiClient = apiClient ?? defaultMattermostApiClient;

  final MattermostApiClient apiClient;

  /// Creates a new terms of service
  ///
  /// Creates new terms of service  __Minimum server version__: 5.4 ##### Permissions Must have `manage_system` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> createTermsOfServiceWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/terms_of_service';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Creates a new terms of service
  ///
  /// Creates new terms of service  __Minimum server version__: 5.4 ##### Permissions Must have `manage_system` permission.
  Future<MattermostTermsOfService?> createTermsOfService() async {
    final response = await createTermsOfServiceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostTermsOfService',
      ) as MattermostTermsOfService;
    }
    return null;
  }

  /// Get latest terms of service
  ///
  /// Get latest terms of service from the server  __Minimum server version__: 5.4 ##### Permissions Must be authenticated.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTermsOfServiceWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/terms_of_service';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get latest terms of service
  ///
  /// Get latest terms of service from the server  __Minimum server version__: 5.4 ##### Permissions Must be authenticated.
  Future<MattermostTermsOfService?> getTermsOfService() async {
    final response = await getTermsOfServiceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostTermsOfService',
      ) as MattermostTermsOfService;
    }
    return null;
  }

  /// Fetches user's latest terms of service action if the latest action was for acceptance.
  ///
  /// Will be deprecated in v6.0 Fetches user's latest terms of service action if the latest action was for acceptance.  __Minimum server version__: 5.6 ##### Permissions Must be logged in as the user being acted on.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> getUserTermsOfServiceWithHttpInfo(
    String userId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/terms_of_service'.replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Fetches user's latest terms of service action if the latest action was for acceptance.
  ///
  /// Will be deprecated in v6.0 Fetches user's latest terms of service action if the latest action was for acceptance.  __Minimum server version__: 5.6 ##### Permissions Must be logged in as the user being acted on.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<MattermostUserTermsOfService?> getUserTermsOfService(
    String userId,
  ) async {
    final response = await getUserTermsOfServiceWithHttpInfo(
      userId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostUserTermsOfService',
      ) as MattermostUserTermsOfService;
    }
    return null;
  }

  /// Records user action when they accept or decline custom terms of service
  ///
  /// Records user action when they accept or decline custom terms of service. Records the action in audit table. Updates user's last accepted terms of service ID if they accepted it.  __Minimum server version__: 5.4 ##### Permissions Must be logged in as the user being acted on.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [MattermostRegisterTermsOfServiceActionRequest] mattermostRegisterTermsOfServiceActionRequest (required):
  ///   terms of service details
  Future<Response> registerTermsOfServiceActionWithHttpInfo(
    String userId,
    MattermostRegisterTermsOfServiceActionRequest mattermostRegisterTermsOfServiceActionRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/terms_of_service'.replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = mattermostRegisterTermsOfServiceActionRequest;

    final queryParams = <MattermostQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Records user action when they accept or decline custom terms of service
  ///
  /// Records user action when they accept or decline custom terms of service. Records the action in audit table. Updates user's last accepted terms of service ID if they accepted it.  __Minimum server version__: 5.4 ##### Permissions Must be logged in as the user being acted on.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [MattermostRegisterTermsOfServiceActionRequest] mattermostRegisterTermsOfServiceActionRequest (required):
  ///   terms of service details
  Future<MattermostStatusOK?> registerTermsOfServiceAction(
    String userId,
    MattermostRegisterTermsOfServiceActionRequest mattermostRegisterTermsOfServiceActionRequest,
  ) async {
    final response = await registerTermsOfServiceActionWithHttpInfo(
      userId,
      mattermostRegisterTermsOfServiceActionRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MattermostApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MattermostStatusOK',
      ) as MattermostStatusOK;
    }
    return null;
  }
}
