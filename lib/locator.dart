import 'package:get_it/get_it.dart';
import 'package:lab4/model/authModel.dart';
import 'package:lab4/model/authStateModel.dart';
import 'package:lab4/model/baseModel.dart';


final locator = GetIt.instance;

void setupLocator(){
  locator.registerLazySingleton(() => BaseModel());
  locator.registerLazySingleton(() => AuthModel());
  locator.registerLazySingleton(() => AuthStateModel());
}