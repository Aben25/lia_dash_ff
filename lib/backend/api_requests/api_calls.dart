import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start SalesForce Group Code

class SalesForceGroup {
  static String getBaseUrl() => 'https://loveinaction.my.salesforce.com';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer 00DHs000005PfOi!AQgAQPZ5Lym0hC4luMDukfhoycNGJLcYE12tfSA8iOc.h8vHoJFXx559MdV991cFs9Y35FC63p8xm0ShdHeY9sIaVdSEEjqP',
  };
}

/// End SalesForce Group Code

class AccountCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Account',
      apiUrl:
          'https://loveinaction.my.salesforce.com/services/data/v58.0/query?q=SELECT+Id,Name+FROM+Account',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 00DHs000005PfOi!AQgAQPZ5Lym0hC4luMDukfhoycNGJLcYE12tfSA8iOc.h8vHoJFXx559MdV991cFs9Y35FC63p8xm0ShdHeY9sIaVdSEEjqP',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
