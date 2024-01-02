// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiUtil {
  static Dio get dio {
    final dio = Dio();
    String prettifyJson(String json) {
      const JsonEncoder encoder =
          JsonEncoder.withIndent('  '); // Use two spaces for indentation
      return encoder.convert(jsonDecode(json));
    }

    // Add interceptors
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        return handler.next(options);
      },
      onResponse: (response, handler) async {
        final statusCode = response.statusCode;
        final uri = response.realUri;
        final data = jsonEncode(response.data);

        final prettyJson = prettifyJson(data);

        print("✅ RESPONSE[$statusCode] => PATH: $uri\n DATA: $prettyJson");
        try {
          if (!kIsWeb) {
            print("✅ RESPONSE[$statusCode] => PATH: $uri\n DATA: $prettyJson");
          }
        } catch (e) {
          print('error : ${e.toString()}');
        }
        return handler.next(response);
      },
      onError: (DioException err, handler) {
        // Handle errors if needed
        final statusCode = err.response?.statusCode;
        final uri = err.requestOptions.path;

        print(
            "⚠️ ERROR[$statusCode] => PATH: $uri \n Data: ${err.response?.data}");
        try {
          if (!kIsWeb) {
            print(
                "⚠️ ERROR[$statusCode] => PATH: $uri \n Data: ${err.response?.data}");
          }
        } catch (e) {
          print(e.toString());
        }
        return handler.next(err);
      },
    ));

    return dio;
  }
}
