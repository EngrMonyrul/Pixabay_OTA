part of '../../pixabay_ota.dart';

class Search {
  static List<T> find<T extends Filter>({
    required List<T> items,
    required String q,
    SearchFilter<T>? filter,
  }) {
    List<T> i =
        filter == null ? items : items.where((item) => filter(item)).toList();

    return i.where((item) => item.matcher(q)).toList();
  }
}

typedef SearchFilter<T> = bool Function(T item);
