

import 'package:get/get.dart';
import 'package:meecade/view/home_screen.dart';


class BottomNavigationPageController extends GetxController {

  static BottomNavigationPageController get to => Get.find();
final currentIndex = 0.obs;

  List pages = [
    HomeScreen(),

  ];

   get currentPage => pages[currentIndex.value];

  void changePage(int _index) {
    currentIndex.value = _index;
    if(_index==2){


    }
  }
}
