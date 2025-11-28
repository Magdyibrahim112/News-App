import 'dart:convert';

import 'package:news_app/api/models/sources_response/SourcesResponse.dart';
import 'package:news_app/core/resources/constant_manager.dart';
import 'package:news_app/models/category_model.dart';
import 'package:http/http.dart' as http;

 class ApiService{

  static Future<SourcesResponse> getSources(CategoryModel category) async{
   /// هتجيب ال source هتبقى passed على category معينة
   Uri url = Uri.https(ApiConstant.baseUrl, ApiConstant.sourcesEndPont, {
    "apiKey": ApiConstant.apiKey,
    "category": category.id,
   });
   var serverResponse = await http.get(url);
   var json = jsonDecode(serverResponse.body);///jsonDecode بتاخد ال String ترجعو json
   return SourcesResponse.fromJson(json);

  }
}