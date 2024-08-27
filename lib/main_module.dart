import 'package:dio/dio.dart';
import 'package:flutter_upload_file_new/core/network/http_client.dart';
import 'package:flutter_upload_file_new/feature/home/home_module.dart';
import 'package:get_it/get_it.dart';

class MainModule {
  static String baseUrl = "http://192.168.137.1:3000/";
  static void init() {
    GetIt.I.registerSingleton(Dio().init(baseUrl));
    _initModule();
  }

  static void _initModule() {
    HomeModule.init();
  }
}
