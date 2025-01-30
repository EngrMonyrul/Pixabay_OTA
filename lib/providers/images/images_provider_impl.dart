part of '../../pixabay_ota.dart';

class _ImagesProviderImpl extends ImagesProvider {
  final photoRepo = di.get<ImageRepo>();

  @override
  Future<void> fetchImages({required PhotoQueries photoQueries}) async {
    BaseResponse<Photos> result = BaseResponse();

    if (_photoQueries != null) {
      result = await photoRepo.fetchPhotos(photoQueries: _photoQueries!);
    }

    if (result.data != null) {
      _images = result;
    }

    notifyListeners();
  }

  @override
  void setPhotoQueries(
      {String? q,
      String? photoType,
      String? lang,
      String? id,
      String? orientation,
      String? category,
      String? minWidth,
      String? minHeight,
      String? colors,
      bool? editorsChoice,
      bool? safeSearch,
      String? order,
      int? page,
      int? perPage,
      String? callback,
      bool? pretty}) {
    _photoQueries ??= PhotoQueries();

    _photoQueries = _photoQueries?.copyWith(
      q: q,
      image_type: photoType,
      lang: lang,
      id: id,
      orientation: orientation,
      category: category,
      min_width: minWidth,
      min_height: minHeight,
      colors: colors,
      editors_choice: editorsChoice,
      safesearch: safeSearch,
      order: order,
      page: page,
      per_page: perPage,
      callback: callback,
      pretty: pretty,
    );

    notifyListeners();
  }
}
