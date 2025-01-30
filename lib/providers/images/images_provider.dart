part of '../../pixabay_ota.dart';

abstract class ImagesProvider extends ChangeNotifier {
  BaseResponse<Photos>? _images;
  PhotoQueries? _photoQueries;

  BaseResponse<Photos>? get images => _images;

  PhotoQueries? get photoQueries => _photoQueries;

  Future<void> fetchImages({required PhotoQueries photoQueries});

  void setPhotoQueries({
    String? q,
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
    bool? pretty,
  });
}
