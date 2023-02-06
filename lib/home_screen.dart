import 'package:flutter/material.dart';
import 'package:getx_list/favourite_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FavouriteController controller = Get.put((FavouriteController()));

  // List<String> fruitList = ['Orange', 'Apple', 'Mangoes', 'Banana'];

  // List<String> tempFruitList = []; //temporary fruitlist

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Tutorials'),
      ),
      body: ListView.builder(
        itemCount: controller.fruitList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              // adding this to tempfruit
              onTap: () {
                if (controller.tempFruitList.contains(
                  controller.fruitList[index]
                      .toString(), //if it contains favourite then remove otherwise dont remove else
                )) {
                  controller.removeFromFavourite(
                    controller.fruitList[index].toString(),
                  );
                } else {
                  controller.addToFavourite(
                    controller.fruitList[index].toString(),
                  );
                }
              },
              title: Text(
                controller.fruitList[index].toString(),
              ),
              trailing: Obx(
                () => Icon(
                  //obx used here
                  Icons.favorite,
                  color: controller.tempFruitList.contains(
                    controller.fruitList[index].toString(),
                  )
                      ? Colors.red
                      : Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
