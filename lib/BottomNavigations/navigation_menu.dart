// import 'package:assignment_3_figma_ui/home_screen/home_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class NavigationMenu extends StatelessWidget {
//   const NavigationMenu({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(NavigationController());
//     return  Scaffold(
//       bottomNavigationBar: Obx(
//           () =>
//           NavigationBar(
//           height: 75,
//           elevation: 0,
//           selectedIndex: controller.selectedIndex.value,
//           onDestinationSelected: (index) => controller.selectedIndex.value = index,
//           backgroundColor: Colors.white,
//           indicatorColor: Colors.black,
//           destinations: const [
//             NavigationDestination(icon:Icon(Icons.home_outlined,size: 45),label: 'Home'),
//             NavigationDestination(icon:Icon(Icons.shopping_cart_checkout,size: 45),label: 'Shopping')
//           ]
//         ),
//       ),
//       body: Obx(() => controller.screen[controller.selectedIndex.value]),
//     );
//   }
// }
//
// class NavigationController extends GetxController {
//
//   final Rx<int> selectedIndex = 0.obs;
//
//   final screen = [const HomeScreen(),Container(color: Colors.blue,),Container(color: Colors.red,),Container(color: Colors.purple,)];
//
// }