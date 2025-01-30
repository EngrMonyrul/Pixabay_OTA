part of '../../pixabay_ota.dart';

class _LocalStorageImpl extends LocalStorage {
  @override
  void setApiKey({required String value}) {
    _storage.write(_apKey, value);
  }

  @override
  void setBaseUrl({required String value}) {
    _storage.write(_baseUrl, value);
  }
}
