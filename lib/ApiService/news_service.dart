// 1
import 'package:chopper/chopper.dart';
import 'package:news_api_app/Models/news.dart';

part 'news_service.chopper.dart';

// 4
@ChopperApi()
abstract class NewsService extends ChopperService {

  // 6
  @Get(path:'/everything')
  // 7
  Future<Response<News>> getNews();

  // 8
  static NewsService create() {
    // 9
    final client = ChopperClient(
      // 10
      baseUrl: 'https://newsapi.org/v2',
      // 11
      services: [
        _$NewsService(),
      ],
    );
    // 12
    return _$NewsService(client);
  }
}