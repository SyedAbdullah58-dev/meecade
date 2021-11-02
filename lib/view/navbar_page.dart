import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:meecade/constants.dart';
import 'package:meecade/controllers/bottom_nav_bar_controller.dart';

import 'delivery_location_screen.dart';
import 'edit_profile_screen.dart';
import 'electronic_shop_screen.dart';
import 'home_screen.dart';

class NavBarPage extends StatelessWidget {
  BottomNavigationPageController bottomNavigationPageController=Get.put(BottomNavigationPageController());
  // final Map<String, dynamic> data;
  // MainPage( this.data);

  @override
  Widget build(BuildContext context) {
    List pages = [
      HomeScreen(),
      ElectronicShopScreen(),
      DeliveryLocationScreen(),
      EditProfileScreen(),
      // FavouritesScreen(),

    ];

    return Obx(
          () => Scaffold(

            backgroundColor: homeContainerColor,
        body: pages[BottomNavigationPageController.to.currentIndex.value],
        // body: BottomNavigationPageController.to.currentPage,
        bottomNavigationBar: BottomNavigationBar(

          backgroundColor: Colors.blue,
          selectedItemColor: Color(0xffAA74B1),
          unselectedItemColor: Color(0xff38315F),
          currentIndex: BottomNavigationPageController.to.currentIndex.value,
          onTap: BottomNavigationPageController.to.changePage,
          items: [
            BottomNavigationBarItem(
backgroundColor: homeContainerColor,

              icon: Icon(Icons.home,

              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list,

              ),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.folder_shared,

                ),
                label: 'categories'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline,

              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}