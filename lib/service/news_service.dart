import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService{
  final Dio dio;
  NewsService({required this.dio});
  Future<List<ArticleModel>> getNews({required String category})async {
    try {
      Response response = await dio.get("https://newsapi.org/v2/top-headlines?"
          "country=us&apiKey=6b2ca68a49124812826713ba28b669e9"
          "&category=$category");
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];


      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    }catch(e){
      return [];
    }
  }
}