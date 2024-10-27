// ignore_for_file: constant_identifier_names

import 'package:clean_architecture/data/network/error_handler.dart';

const CACHE_HOME_KEY = 'CACHE_HOME_KEY';
const CACHE_HOME_INTERVAL = 60 * 1000; // 60 seconds

abstract class LocalDataSource<T> {
  Future<T> getItem(String key);

  Future<void> saveItemToCache(String key, T item);
}

class LocalDataSourceImpl<T> implements LocalDataSource<T> {
  // 런타임 캐시
  Map<String, CachedItem<T>> cacheMap = {};

  @override
  Future<T> getItem(String key) async {
    CachedItem<T>? cachedItem = cacheMap[key];

    if (cachedItem != null && cachedItem.isValid(CACHE_HOME_INTERVAL)) {
      return cachedItem.data;
    } else {
      throw ErrorHandler.handle(DataSource.CACHE_ERROR);
    }
  }

  @override
  Future<void> saveItemToCache(String key, T item) async {
    cacheMap[key] = CachedItem<T>(item);
  }
}

class CachedItem<T> {
  int cacheTime = DateTime.now().millisecondsSinceEpoch;

  final T data;

  CachedItem(this.data);
}

extension CachedItemX<T> on CachedItem<T> {
  bool isValid(int expirationTime) {
    int current = DateTime.now().millisecondsSinceEpoch;
    return current - cacheTime <= expirationTime;
  }
}
