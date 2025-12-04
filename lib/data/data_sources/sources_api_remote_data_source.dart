import 'package:dartz/dartz.dart';
import 'package:news_app/data/api/api_service.dart';
import 'package:news_app/data/api/models/sources_response/Source.dart';
import 'package:news_app/data/data_sources/sources_remote_data_source.dart';
import 'package:news_app/models/category_model.dart';

class SourcesApiRemoteDataSource implements SourcesRemoteDataSource {
  ApiService apiService;
  SourcesApiRemoteDataSource(this.apiService); //this is dependence injection

  @override
  Future<Either<String, List<Source>>> getSources(CategoryModel category) {
    return apiService.getSources(category);
  }
}
