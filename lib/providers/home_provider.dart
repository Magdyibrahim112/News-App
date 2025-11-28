import 'package:flutter/material.dart';
import 'package:news_app/features/home/categories/categories_view.dart';
import 'package:news_app/features/home/sources/sources_view.dart';
import 'package:news_app/models/category_model.dart';

/// ال HomeProvider دا ال observable
class HomeProvider extends ChangeNotifier {
  Widget homeView = CategoriesView();
  String title = "Home";
  /// homeView دى ال body بتاعت ال screen

 void goToSourcesView(CategoryModel category){
   homeView = SourcesView(category: category,);
   title = category.title;
   notifyListeners();///بتخلي الواجهة تتحدث لما البيانات تتغير

 }

 void goToCategoriesView(){
   homeView = CategoriesView();
   notifyListeners();
 }
}
