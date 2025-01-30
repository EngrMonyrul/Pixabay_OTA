library pixabay_ota;

/* <<--------->> imports <<---------->> */
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pixabay_ota/models/photos/photo_queries.dart';
import 'package:pixabay_ota/models/photos/photos.dart';
import 'package:pixabay_ota/models/videos/video_hit.dart';
import 'package:pixabay_ota/models/videos/video_queries.dart';
import 'package:pixabay_ota/network/api_client.dart';
import 'package:pixabay_ota/utils/services/custom_interceptors.dart';
import 'package:pixabay_ota/utils/services/service_locator.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

/* <<--------->> exports <<---------->> */
export 'models/photos/hit.dart';
export 'models/photos/photos.dart';
export 'models/videos/large.dart';
export 'models/videos/video_hit.dart';
export 'models/videos/videos.dart';
export 'models/videos/videos_class.dart';

/* <<--------->> parts <<---------->> */
part 'ota_main.dart';
part 'utils/packages/init_packages.dart';
part 'utils/enums/api_result_type.dart';
part 'utils/services/search.dart';
part 'utils/services/filter.dart';
part 'models/base_response.dart';
part 'data/local/local_storage.dart';
part 'data/local/local_storage_impl.dart';
part 'utils/services/service_locator_reg.dart';

// repositories
part 'repositories/image_repo.dart';
part 'repositories/video_repo.dart';

// providers
part 'providers/images/images_provider.dart';
part 'providers/images/images_provider_impl.dart';
