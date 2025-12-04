import 'package:dartz/dartz.dart';
import 'package:news_app/data/api/models/sources_response/Source.dart';
import 'package:news_app/models/category_model.dart';
/// interface sources Repository
abstract class SourcesRepository{
  Future<Either<String, List<Source>>> getSources(CategoryModel category);
}