import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GeminiRunPlaygroundCall {
  static Future<ApiCallResponse> call({
    String? prompt =
        'Dame ideas para una diseñar una tarjeta de Magic que tenga un Goblin',
    String? systemInstructions =
        'Eres un experimentado jugador de Magic: The Gathering que disfruta escuchar reggae',
    String? region = 'us-central1',
    String? model = 'gemini-1.5-flash-001',
    double? temperature = 1,
    int? maxOutputTokens = 2048,
    List<FFUploadedFile>? archivoList,
  }) async {
    final archivo = archivoList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'GeminiRunPlayground',
      apiUrl:
          'https://dependencias-v2-989325323821.us-central1.run.app/generate',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'multipart/form-data',
      },
      params: {
        'prompt': prompt,
        'system_instructions': systemInstructions,
        'model': model,
        'region': region,
        'max_output_tokens': maxOutputTokens,
        'temperature': temperature,
        'file': archivo,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? jsonResponse(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.result''',
      ));
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
