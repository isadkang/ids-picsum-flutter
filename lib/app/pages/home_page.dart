import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ids_flutter/app/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Obx(
        () {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }

          return GestureDetector(
            onTap: () {
              
            },
            child: ListView.builder(
              itemCount: controller.pictureList.length,
              itemBuilder: (context, index) {
                final picture = controller.pictureList[index];
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Image.network(
                        picture['download_url'],
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Text(picture['author']),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
