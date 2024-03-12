import 'dart:convert';

import 'package:code_engineer/BottomNavigationScreens/Home/Models/CodeMasterModel.dart';
import 'package:code_engineer/HttpCalls/ResponseModel.dart';
import 'package:code_engineer/HttpCalls/apiConstants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<CodeMasterModel> getCodeMasterList(
      String apiName, Map<String, String> params) async {
    String apiWithParams = '$apiName?';

    try {
      for (final entries in params.entries) {
        final key = entries.key;
        final value = entries.value;
        apiWithParams += '$key=$value&';
      }
      apiWithParams = apiWithParams.substring(0, apiWithParams.length - 1);
      var url = Uri.parse(ApiConstants.baseUrl + apiWithParams);

      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonObj = CodeMasterModel.fromJson(jsonDecode(response.body));
        return jsonObj;
      } else {
        throw Exception('Failed to Get Data');
      }
    } catch (e) {
      throw Exception('Failed to Get Data');
    }
  }

  static Future<ResponseModel> apiGet(
      String apiName, Map<String, String> params) async {
    String apiNameWithParamsAdded = '$apiName?';

    for (final mapEntry in params.entries) {
      final key = mapEntry.key;
      final value = mapEntry.value;
      apiNameWithParamsAdded += '$key=$value&';
    }
    apiNameWithParamsAdded =
        apiNameWithParamsAdded.substring(0, apiNameWithParamsAdded.length - 1);
    final response = await http.get(Uri.parse(apiNameWithParamsAdded));
    if (response.statusCode == 200) {
      var json = ResponseModel.fromJson(jsonDecode(response.body));
      return json;
    } else {
      throw Exception('Failed to Get Data');
    }
  }
}
