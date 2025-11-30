import 'package:flutter/foundation.dart';
import 'package:news_app/api/api_service.dart';
import 'package:news_app/api/models/sources_response/Source.dart';
import 'package:news_app/api/models/sources_response/SourcesResponse.dart';
import 'package:news_app/models/category_model.dart';
import 'package:provider/provider.dart';

class SourcesViewModel extends ChangeNotifier{
  List<Source> sources = [];
  bool isLoading = false;
  //String? errorMessage;
  void loadSources(CategoryModel category)async{
    isLoading = true;// لانو هيجيب ال sources من ApiService(future == هتاخد وقت)
    notifyListeners();
    SourcesResponse sourcesResponse =await ApiService.getSources(category);
    isLoading = false;
    notifyListeners();
    sources = sourcesResponse.sources ?? [];
    notifyListeners();

  }
}