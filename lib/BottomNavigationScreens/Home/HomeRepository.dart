import 'dart:convert';

import 'package:code_engineer/BottomNavigationScreens/Home/Models/TestModel.dart';
import 'package:code_engineer/HttpCalls/ResponseModel.dart';
import 'package:code_engineer/HttpCalls/apiConstants.dart';
import 'package:code_engineer/HttpCalls/apiService.dart';

class HomeRepository {
  Future<List<TestModel>> callTestApi(Map<String, String> params) async {
    ResponseModel resp = await ApiService.apiGet("${testBaseUrl}users", params);
    if (resp.page == 1) {
      List<dynamic> table = jsonDecode(resp.data.toString());
      List<TestModel> resultList = List.generate(
          table.length, (index) => TestModel.fromJson(table[index]));
      return resultList;
    }
    return List.empty();
  }
}
