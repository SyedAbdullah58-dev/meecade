

import 'package:get/get.dart';
import 'package:meecade/view/delivery_location_screen.dart';
import 'package:meecade/view/edit_profile_screen.dart';
import 'package:meecade/view/electronic_shop_screen.dart';
import 'package:meecade/view/home_screen.dart';


class BottomNavigationPageController extends GetxController {

  static BottomNavigationPageController get to => Get.find();
final currentIndex = 0.obs;

  List pages = [
    HomeScreen(),
ElectronicShopScreen(),
DeliveryLocationScreen(),
    EditProfileScreen(),

  ];

   get currentPage => pages[currentIndex.value];

  void changePage(int _index) {
    currentIndex.value = _index;
    if(_index==2){


    }
  }
}
