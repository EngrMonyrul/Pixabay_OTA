part of '../pixabay_ota.dart';

@LazySingleton()
class ImageRepo {
  ImageRepo(this._apiClient);

  ApiClient _apiClient;

  Future<BaseResponse<Photos>> fetchPhotos(
          {required PhotoQueries photoQueries}) async =>
      _apiClient.getPhotos(photoQueries).then((value) => value);
}
