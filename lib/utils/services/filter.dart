part of '../../pixabay_ota.dart';

abstract class Filter {
  String getKey();

  bool matcher(String query) =>
      getKey().toLowerCase().contains(query.toLowerCase());
}
