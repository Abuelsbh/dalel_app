import '../../../../../core/database/cache/cache_helper.dart';
import '../../../../../core/services/service_locator.dart';

void onBoardingVisited() {
  get_it<CacheHelper>().saveData(key: "isOnBoardingVisited", value: true);
}