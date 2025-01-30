part of '../pixabay_ota.dart';

@LazySingleton()
class VideoRepo {
  VideoRepo(this._apiClient);

  ApiClient _apiClient;

  Future<BaseResponse<VideoHit>> fetchVideos(
          {required VideoQueries videoQueries}) async =>
      _apiClient.getVideos(videoQueries).then((value) => value);
}
