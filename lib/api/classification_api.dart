//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars


import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import '/api_helper.dart' show decodeBodyBytes, QueryParam, getQueryParams, parameterToString;

import '/api_helper.dart';
export '/api_helper.dart';

import '/api_client.dart' show ApiClient;
import '/api.dart' show defaultApiClient, ApiException;


    class ClassificationApi {
    ClassificationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

    final ApiClient apiClient;

            /// Convert Generic Classification
                ///
            /// This endpoint converts on a best effort basis from one generic format to another, i.e. from Code to HLJS 
            ///
            /// Note: This method returns the HTTP [Response].
                ///
            /// Parameters:
            ///
            /// * [SeededFormat] seededFormat:
                ///   This is a seededFormat that we want to turn into a specific rendering SeededFormat.  Ensure that you pass through a fragment.string.raw  Ensure that you pass through a classification with the generic/specific/rendering all specified 
        Future<Response> convertGenericClassificationWithHttpInfo({ SeededFormat? seededFormat, }) async {
            // ignore: prefer_const_declarations
            final path = r'/classification/generic/convert';



                // is complex SeededFormat
                    Object? postBody = seededFormat?.toJson() ;






            final queryParams = <QueryParam>[];
            final headerParams = <String, String>{};
            final formParams = <String, String>{};

            const authNames = <String>[];
            const contentTypes = <String>['application/json'];


            return apiClient.invokeAPI(
            path,
            'POST',
            queryParams,
            postBody,
            headerParams,
            formParams,
            contentTypes.isEmpty ? null : contentTypes.first,
            authNames,
            );
            }

                /// Convert Generic Classification
                    ///
                /// This endpoint converts on a best effort basis from one generic format to another, i.e. from Code to HLJS 
                    ///
                /// Parameters:
                ///
                /// * [SeededFormat] seededFormat:
                    ///   This is a seededFormat that we want to turn into a specific rendering SeededFormat.  Ensure that you pass through a fragment.string.raw  Ensure that you pass through a classification with the generic/specific/rendering all specified 
            Future<SeededFormat> convertGenericClassification({ SeededFormat? seededFormat, }) async {
            final response = await convertGenericClassificationWithHttpInfo( seededFormat: seededFormat, );
            if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, await decodeBodyBytes(response));
            }
                // When a remote server returns no body with a status of 204, we shall not decode it.
                // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
                // FormatException when trying to decode an empty string.
                if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
                            return await apiClient.deserializeAsync(await decodeBodyBytes(response), 'SeededFormat',) as SeededFormat;
                    
                }
                throw ApiException(response.statusCode, 'Received an empty body (not in a 204)');
            }
        }
