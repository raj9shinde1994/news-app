
//import 'package:news_api_app/Models/news.dart' ;
part of 'news_bloc.dart';


class NewsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetGamesByCategory extends NewsEvent {
  final News news;

  GetGamesByCategory({
    required this.news,
  });


  @override
  List<Object?> get props => [news];
}