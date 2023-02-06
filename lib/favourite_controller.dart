import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruitList = ['Orange', 'Apple', 'Mangoes', 'Banana'].obs;
  // List<String> tempFruitList = []; //temporary fruitlist
  RxList tempFruitList = [].obs; //it becomes dynamic instead of using string

  addToFavourite(String value) {
    tempFruitList.add(value);
  }

  removeFromFavourite(String value) {
    tempFruitList.remove(value);
  }
}
