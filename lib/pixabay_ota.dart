library pixabay_ota;

/* <<--------->> imports <<---------->> */
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
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

// providers
part 'providers/images/images_provider.dart';
part 'providers/images/images_provider_impl.dart';
