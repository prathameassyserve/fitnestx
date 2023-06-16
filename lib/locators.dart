import 'package:fitnestx/prefs/app_db.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

setupLocator() async {
  locator.registerSingletonAsync<AppDB>(() => AppDB.getInstance());
}