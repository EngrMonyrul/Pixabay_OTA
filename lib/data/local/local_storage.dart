part of '../../pixabay_ota.dart';

abstract class LocalStorage {
  final GetStorage _storage = GetStorage();

  final _apKey = "_api_key_";
  final _baseUrl = "_base_url_";

  String get apiKey => _storage.read(_apKey) ?? "";

  String get baseUrl => _storage.read(_baseUrl) ?? "";

  void setApiKey({required String value});

  void setBaseUrl({required String value});
}
