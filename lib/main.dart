import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ids_flutter/app/pages/home_page.dart';
import 'package:ids_flutter/app/routes/app_pages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'IDS Flutter',
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      home: const HomePage(),
    );
  }
}
