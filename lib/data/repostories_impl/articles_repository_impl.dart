import 'package:dartz/dartz.dart';
import 'package:news_app/data/api/models/articles_response/Article.dart';
import 'package:news_app/data/api/models/sources_response/Source.dart';
import 'package:news_app/data/data_sources/articles_remote_data_source.dart';
import 'package:news_app/repositories/articles_repository.dart';

class ArticlesRepositoryImpl implements ArticlesRepository{
  ArticlesRemoteDataSource dataSource;
  ArticlesRepositoryImpl({required this.dataSource});

  @override
  Future<Either<String, List<Article>>> getArticles(Source source) {
    return dataSource.getArticles(source);
  }
}