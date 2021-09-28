import 'package:get_it/get_it.dart';
import 'package:scoped_model_guide/scoped_models/error_model.dart';
import 'package:scoped_model_guide/scoped_models/home_model.dart';
import 'package:scoped_model_guide/scoped_models/success_model.dart';
import 'package:scoped_model_guide/services/storage_services.dart';

GetIt locator = GetIt();

void setUpLocator(){
  //Register services
  // lazy singleton means there will only be one instance of storage services
  // but it will only be created once the storage service for the first time
  locator.registerLazySingleton<StorageService>(() => StorageService());
  //Register models

  //registering as a factory so that every time we request a
  //type of model we get a new instance back.

  locator.registerFactory<HomeModel>(() => HomeModel());
  locator.registerFactory<SuccessModel>(() => SuccessModel());
  locator.registerFactory<ErrorModel>(() => ErrorModel());
}