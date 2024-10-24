import 'package:clean_architecture/data/reponses/responses.dart';

const CACHE_HOME_KEY = 'CACHE_HOME_KEY';

abstract class LocalDataSource {
  Future<HomeResponse> getHome();

  Future<void> saveHomeToCache(HomeResponse response);
}

class LocalDataSourceImple implements LocalDataSource {
  // run time cache
  Map<String, CachedItem> cacheMap = {};
  @override
  Future<HomeResponse> getHome() {
    // TODO: implement getHome
    throw UnimplementedError();
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
