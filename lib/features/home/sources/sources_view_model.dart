import 'package:flutter/foundation.dart';
//import 'package:news_app/data/api/api_service.dart';
import 'package:news_app/data/api/models/sources_response/Source.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/repositories/sources_repository.dart';
//import 'package:provider/provider.dart';

class SourcesViewModel extends ChangeNotifier{
  SourcesRepository sourcesRepository;
  SourcesViewModel({required this.sourcesRepository});

  List<Source> sources = [];
  bool isLoading = false;
  String? errorMessage;
  Future<void> loadSources(CategoryModel category)async{
    isLoading = true;// لانو هيجيب ال sources من ApiService(future == هتاخد وقت)
    notifyListeners();

    var result=await sourcesRepository.getSources(category);

    isLoading = false;//ما انت لو جبت ال result مش هتبقى isLoading
    notifyListeners();
    result.fold((message){
      ///left
     errorMessage = message;
    },(sourcesList){
      ///right/
      sources = sourcesList;
    });
    notifyListeners();
    // notifyListeners();
    // sources = sourcesResponse.sources ?? [];
    // notifyListeners();
  }
}