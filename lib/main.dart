import 'package:flutter/material.dart';
import 'package:flutter_upload_file_new/core/route/app_route.dart';
import 'package:flutter_upload_file_new/core/theme/app_theme.dart';
import 'package:flutter_upload_file_new/main_module.dart';

void main() async {
  MainModule.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoute.router,
      title: "Flutter Upload File",
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
    );
  }
}
