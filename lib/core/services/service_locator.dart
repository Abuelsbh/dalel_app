import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:get_it/get_it.dart';

final get_it = GetIt.instance;
void setupServiceLocator() {
  get_it.registerSingleton<CacheHelper>(CacheHelper());
}