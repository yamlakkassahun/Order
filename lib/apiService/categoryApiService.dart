import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:node_flutter1/models/category.dart';

// var url = Uri.parse('https://192.168.8.152:3443/category');

var url = Uri.http('192.168.137.196:3000', 'api/category');

class CategoryApiService {

  Future<List<Category>> getAllCategory() async {
    var res = await http.get(url);
    print(res.statusCode);
    if(res.statusCode == 200){
      List listResponse = json.decode(res.body);
      return listResponse
          .map((c) => Category.fromJson(c))
          .toList();
    }
    else{
      throw Exception('Fail to load data from Category');
    }
  }
}
