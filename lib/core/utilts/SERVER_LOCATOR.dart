import 'package:get_it/get_it.dart';
import 'package:bookly/features/home/data/repos/home_repo_imple.dart';
import 'package:bookly/core/utilts/api_service.dart';
import 'package:dio/dio.dart';








final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImple>(HomeRepoImple(
    getIt.get<ApiService>(),
  ));
}