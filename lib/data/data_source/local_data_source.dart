// ignore_for_file: constant_identifier_names

import 'package:clean_architecture/data/network/error_handler.dart';
import 'package:clean_architecture/data/reponses/responses.dart';

const CACHE_HOME_KEY = 'CACHE_HOME_KEY';
const CACHE_HOME_INTERVAL = 60 * 1000; // 60 seconds

abstract class LocalDataSource {
  Future<HomeResponse> getHome();

  Future<void> saveHomeToCache(HomeResponse response);
}

class LocalDataSourceImple implements LocalDataSource {
  // run time cache
  Map<String, CachedItem> cacheMap = {};
  @override
  Future<HomeResponse> getHome() async {
    CachedItem? cachedItem = cacheMap[CACHE_HOME_KEY];

    if (cachedItem != null && cachedItem.isValid(CACHE_HOME_INTERVAL)) {
      return cachedItem.data;
    } else {
      throw ErrorHandler.handle(DataSource.CACHE_ERROR);
    }
  }

  @override
  Future<void> saveHomeToCache(HomeResponse response) async {
    cacheMap[CACHE_HOME_KEY] = CachedItem(response);
  }
}

class CachedItem {
  int cacheTime = DateTime.now().millisecondsSinceEpoch;

  final dynamic data;

  CachedItem(this.data);
}

extension CachedItemX on CachedItem {
  bool isValid(int expirationTime) {
    int current = DateTime.now().millisecondsSinceEpoch;
    return current - cacheTime <= expirationTime;
  }
}
