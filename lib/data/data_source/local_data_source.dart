// ignore_for_file: constant_identifier_names

import 'package:clean_architecture/data/network/error_handler.dart';

const CACHE_HOME_KEY = 'CACHE_HOME_KEY';
const CACHE_HOME_INTERVAL = 60 * 1000; // 60 seconds

abstract class LocalDataSource {
  T getItem<T>(String key);

  void saveItemToCache<T>(String key, T item);

  void clearCache();

  void removeFromCache(String key);
}

class LocalDataSourceImpl implements LocalDataSource {
  // 런타임 캐시
  Map<String, CachedItem> cacheMap = {};

  @override
  T getItem<T>(String key) {
    CachedItem? cachedItem = cacheMap[key];

    if (cachedItem != null && cachedItem.isValid(CACHE_HOME_INTERVAL)) {
      return cachedItem.data;
    } else {
      throw ErrorHandler.handle(DataSource.CACHE_ERROR);
    }
  }

  @override
  void saveItemToCache<T>(String key, T item) {
    cacheMap[key] = CachedItem<T>(item);
  }

  @override
  void clearCache() {
    cacheMap.clear();
  }

  @override
  void removeFromCache(String key) {
    cacheMap.remove(key);
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
