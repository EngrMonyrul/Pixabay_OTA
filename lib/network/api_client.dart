import 'package:dio/dio.dart';
import 'package:pixabay_ota/pixabay_ota.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import '../models/photos/photo_queries.dart';
import '../models/videos/video_queries.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl}) = _ApiClient;

  @GET("/")
  Future<BaseResponse<Photos>> getPhotos(@Queries() PhotoQueries photoQueries);

  @GET("/videos/")
  Future<BaseResponse<VideoHit>> getVideos(
      @Queries() VideoQueries videoQueries);
}
