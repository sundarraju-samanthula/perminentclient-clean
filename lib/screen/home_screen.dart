// // import 'product_cart_screen/cart_screen.dart';
// // import 'product_favorite_screen/favorite_screen.dart';
// // import 'product_list_screen/product_list_screen.dart';
// // import 'profile_screen/profile_screen.dart';
// // import 'package:flutter/material.dart';
// // import 'package:animations/animations.dart';
// // import 'package:bottom_navy_bar/bottom_navy_bar.dart';
// // import '../../../utility/app_data.dart';
// // import '../../../widget/page_wrapper.dart';

// // class HomeScreen extends StatefulWidget {
// //   const HomeScreen({super.key});

// //   static const List<Widget> screens = [
// //     ProductListScreen(),
// //     FavoriteScreen(),
// //     CartScreen(),
// //     ProfileScreen()
// //   ];

// //   @override
// //   State<HomeScreen> createState() => _HomeScreenState();
// // }

// // class _HomeScreenState extends State<HomeScreen> {
// //   int newIndex = 0;

// //   @override
// //   Widget build(BuildContext context) {
// //     return PageWrapper(
// //       child: Scaffold(
// //         bottomNavigationBar: BottomNavyBar(
// //           itemCornerRadius: 10,
// //           selectedIndex: newIndex,
// //           items: AppData.bottomNavyBarItems
// //               .map(
// //                 (item) => BottomNavyBarItem(
// //                   icon: item.icon,
// //                   title: Text(item.title),
// //                   activeColor: item.activeColor,
// //                   inactiveColor: item.inActiveColor,
// //                 ),
// //               )
// //               .toList(),
// //           onItemSelected: (currentIndex) {
// //             newIndex = currentIndex;
// //             setState(() {});
// //           },
// //         ),
// //         body: PageTransitionSwitcher(
// //           duration: const Duration(seconds: 1),
// //           transitionBuilder: (
// //             Widget child,
// //             Animation<double> animation,
// //             Animation<double> secondaryAnimation,
// //           ) {
// //             return FadeThroughTransition(
// //               animation: animation,
// //               secondaryAnimation: secondaryAnimation,
// //               child: child,
// //             );
// //           },
// //           child: HomeScreen.screens[newIndex],
// //         ),
// //       ),
// //     );
// //   }
// // }

//  import 'product_cart_screen/cart_screen.dart';
// import 'product_favorite_screen/favorite_screen.dart';
// import 'product_list_screen/product_list_screen.dart';
// import 'profile_screen/profile_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:animations/animations.dart';
// import 'package:bottom_navy_bar/bottom_navy_bar.dart';
// import '../../../utility/app_data.dart';
// import '../../../widget/page_wrapper.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//   static const screens = [
//     ProductListScreen(), FavoriteScreen(), CartScreen(), ProfileScreen()
//   ];
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return PageWrapper(
//       child: Scaffold(
//         body: PageTransitionSwitcher(
//           duration: const Duration(milliseconds: 600),
//           transitionBuilder: (_, primary, secondary, child) => FadeThroughTransition(
//             animation: primary, secondaryAnimation: secondary, child: child),
//           child: HomeScreen.screens[_selectedIndex],
//         ),
//         bottomNavigationBar: NavigationBar(
//           selectedIndex: _selectedIndex,
//           onDestinationSelected: (idx) => setState(() => _selectedIndex = idx),
//           backgroundColor: theme.colorScheme.surface,
//           labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
//           destinations: AppData.bottomNavyBarItems.map((item) {
//             return NavigationDestination(
//               icon: Icon(item.inActiveIcon, color: item.inActiveColor),
//               selectedIcon: Icon(item.activeIcon, color: item.activeColor),
//               label: item.title,
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:animations/animations.dart';
// import 'product_cart_screen/cart_screen.dart';
// import 'product_favorite_screen/favorite_screen.dart';
// import 'product_list_screen/product_list_screen.dart';
// import 'profile_screen/profile_screen.dart';
// import '../../../utility/app_data.dart';
// import 'package:animations/animations.dart';

// import '../../../widget/page_wrapper.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   static const List<Widget> screens = [
//     ProductListScreen(key: ValueKey('list')),
//     FavoriteScreen(key: ValueKey('fav')),
//     CartScreen(key: ValueKey('cart')),
//     ProfileScreen(key: ValueKey('profile')),
//   ];

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return PageWrapper(
//       child: Container(
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//           colors: [
//             Color.fromARGB(255, 3, 51, 17), // light green
//             Color(0xFF3CA55C),
//           ],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         )),
//         child: Scaffold(
//           backgroundColor: Colors.transparent,
//           body: PageTransitionSwitcher(
//             duration: const Duration(milliseconds: 600),
//             transitionBuilder: (
//               Widget child,
//               Animation<double> primaryAnimation,
//               Animation<double> secondaryAnimation,
//             ) {
//               return FadeThroughTransition(
//                 animation: primaryAnimation,
//                 secondaryAnimation: secondaryAnimation,
//                 child: child,
//               );
//             },
//             child: HomeScreen.screens[_selectedIndex],
//           ),
//           bottomNavigationBar: NavigationBar(
//             selectedIndex: _selectedIndex,
//             onDestinationSelected: (idx) =>
//                 setState(() => _selectedIndex = idx),
//             backgroundColor: theme.colorScheme.surface,
//             labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
//             destinations: AppData.navItems.map((item) {
//               return NavigationDestination(
//                 icon: Icon(item.inactiveIcon, color: item.inactiveColor),
//                 selectedIcon: Icon(item.activeIcon, color: item.activeColor),
//                 label: item.title,
//               );
//             }).toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class NavItem {
//   final String title;
//   final IconData inactiveIcon;
//   final IconData activeIcon;
//   final Color inactiveColor;
//   final Color activeColor;

//   const NavItem({
//     required this.title,
//     required this.inactiveIcon,
//     required this.activeIcon,
//     required this.inactiveColor,
//     required this.activeColor,
//   });
// }

// class AppData {
//   static const List<NavItem> navItems = [
//     NavItem(
//       title: 'Products',
//       inactiveIcon: Icons.view_list_outlined,
//       activeIcon: Icons.view_list,
//       inactiveColor: Colors.grey,
//       activeColor: Colors.blue,
//     ),
//     NavItem(
//       title: 'Favorites',
//       inactiveIcon: Icons.favorite_outline,
//       activeIcon: Icons.favorite,
//       inactiveColor: Colors.grey,
//       activeColor: Colors.red,
//     ),
//     NavItem(
//       title: 'Cart',
//       inactiveIcon: Icons.shopping_cart_outlined,
//       activeIcon: Icons.shopping_cart,
//       inactiveColor: Colors.grey,
//       activeColor: Colors.green,
//     ),
//     NavItem(
//       title: 'Profile',
//       inactiveIcon: Icons.person_outline,
//       activeIcon: Icons.person,
//       inactiveColor: Colors.grey,
//       activeColor: Colors.purple,
//     ),
//   ];
// }

// import 'package:flutter/material.dart';
// import 'package:animations/animations.dart';
// import 'product_cart_screen/cart_screen.dart';
// import 'product_favorite_screen/favorite_screen.dart';
// import 'product_list_screen/product_list_screen.dart';
// import 'profile_screen/profile_screen.dart';
// import '../../../utility/app_data.dart';
// import '../../../widget/page_wrapper.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   static const List<Widget> screens = [
//     ProductListScreen(key: ValueKey('list')),
//     FavoriteScreen(key: ValueKey('fav')),
//     CartScreen(key: ValueKey('cart')),
//     ProfileScreen(key: ValueKey('profile')),
//   ];

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;

//   List<Color> _getGradientColors(int index) {
//     switch (index) {
//       case 0:
//         return [Color(0xFF004E92), Color(0xFF000428)]; // Blue gradient
//       case 1:
//         return [Color(0xFF56ab2f), Color(0xFFA8E063)]; // Green gradient
//       case 2:
//         return [Color(0xFFee0979), Color(0xFFFF6A00)]; // Pink-orange gradient
//       case 3:
//         return [Color(0xFF7F00FF), Color(0xFFE100FF)]; // Purple gradient
//       default:
//         return [Colors.white, Colors.grey];
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final gradientColors = _getGradientColors(_selectedIndex);

//     return PageWrapper(
//       child: Container(

//         child: Scaffold(
//           backgroundColor: Colors.transparent,
//           body: PageTransitionSwitcher(
//             duration: const Duration(milliseconds: 600),
//             transitionBuilder: (
//               Widget child,
//               Animation<double> primaryAnimation,
//               Animation<double> secondaryAnimation,
//             ) {
//               return FadeThroughTransition(
//                 animation: primaryAnimation,
//                 secondaryAnimation: secondaryAnimation,
//                 child: child,
//               );
//             },
//             child: HomeScreen.screens[_selectedIndex],
//           ),
//           bottomNavigationBar: NavigationBar(
//             selectedIndex: _selectedIndex,
//             onDestinationSelected: (idx) =>
//                 setState(() => _selectedIndex = idx),
//             backgroundColor: Colors.white.withOpacity(0.8),
//             indicatorColor: Colors.transparent,
//             labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
//             destinations: AppData.navItems.map((item) {
//               final isSelected =
//                   AppData.navItems.indexOf(item) == _selectedIndex;
//               return NavigationDestination(
//                 icon: Icon(item.inactiveIcon, color: item.inactiveColor),
//                 selectedIcon: Icon(item.activeIcon, color: item.activeColor),
//                 label: item.title,
//               );
//             }).toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:animations/animations.dart';
// import 'product_cart_screen/cart_screen.dart';
// import 'product_favorite_screen/favorite_screen.dart';
// import 'product_list_screen/product_list_screen.dart';
// import 'profile_screen/profile_screen.dart';
// import '../../../widget/page_wrapper.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   static const List<Widget> screens = [
//     ProductListScreen(key: ValueKey('list')),
//     FavoriteScreen(key: ValueKey('fav')),
//     CartScreen(key: ValueKey('cart')),
//     ProfileScreen(key: ValueKey('profile')),
//   ];

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return PageWrapper(
//       child: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Color.fromARGB(255, 3, 51, 17),
//               Color(0xFF3CA55C),
//             ],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Scaffold(
//           backgroundColor: Colors.transparent,
//           body: PageTransitionSwitcher(
//             duration: const Duration(milliseconds: 600),
//             transitionBuilder: (Widget child,
//                 Animation<double> primaryAnimation,
//                 Animation<double> secondaryAnimation) {
//               return FadeThroughTransition(
//                 animation: primaryAnimation,
//                 secondaryAnimation: secondaryAnimation,
//                 child: child,
//               );
//             },
//             child: HomeScreen.screens[_selectedIndex],
//           ),
//           bottomNavigationBar: // gradient-backed NavigationBar
//               Stack(
//             children: [
//               Container(
//                 height: kBottomNavigationBarHeight,
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [
//                       Color.fromARGB(255, 38, 91, 224),
//                       Color.fromARGB(255, 131, 131, 228),
//                     ],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                 ),
//               ),
//               NavigationBar(
//                 backgroundColor: Colors.transparent,
//                 selectedIndex: _selectedIndex,
//                 onDestinationSelected: (idx) =>
//                     setState(() => _selectedIndex = idx),
//                 labelBehavior:
//                     NavigationDestinationLabelBehavior.onlyShowSelected,
//                 destinations: AppData.navItems.map((item) {
//                   return NavigationDestination(
//                     icon: Icon(item.inactiveIcon, color: item.inactiveColor),
//                     selectedIcon:
//                         Icon(item.activeIcon, color: item.activeColor),
//                     label: item.title,
//                   );
//                 }).toList(),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// // }
// import 'package:flutter/material.dart';
// import 'package:animations/animations.dart';
// import 'product_cart_screen/cart_screen.dart';
// import 'product_favorite_screen/favorite_screen.dart';
// import 'product_list_screen/product_list_screen.dart';
// import 'profile_screen/profile_screen.dart';
// import '../../../widget/page_wrapper.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   static const List<Widget> screens = [
//     ProductListScreen(key: ValueKey('list')),
//     FavoriteScreen(key: ValueKey('fav')),
//     CartScreen(key: ValueKey('cart')),
//     ProfileScreen(key: ValueKey('profile')),
//   ];

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return PageWrapper(
//       child: Container(
//         // Full-page gradient background
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Color.fromARGB(255, 3, 51, 17),
//               Color(0xFF3CA55C),
//             ],
//           ),
//         ),
//         child: Scaffold(
//           backgroundColor: Colors.transparent, // allows gradient behind content
//           body: PageTransitionSwitcher(
//             duration: const Duration(milliseconds: 600),
//             transitionBuilder: (Widget child,
//                 Animation<double> primaryAnimation,
//                 Animation<double> secondaryAnimation) {
//               return FadeThroughTransition(
//                 animation: primaryAnimation,
//                 secondaryAnimation: secondaryAnimation,
//                 child: child,
//               );
//             },
//             child: HomeScreen.screens[_selectedIndex],
//           ),
//           bottomNavigationBar: Stack(

//             // gradient behind transparent nav
//             children: [
//               Container(
//                 height: kBottomNavigationBarHeight,
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: [
//                       Color.fromARGB(255, 15, 26, 231),
//                       Color.fromARGB(255, 58, 143, 217),
//                     ],
//                   ),
//                 ),
//               ),
//               NavigationBar(
//                 backgroundColor: Colors.transparent,
//                 elevation: 0,
//                 selectedIndex: _selectedIndex,
//                 onDestinationSelected: (idx) =>
//                     setState(() => _selectedIndex = idx),
//                 labelBehavior:
//                     NavigationDestinationLabelBehavior.onlyShowSelected,
//                 destinations: AppData.navItems.map((item) {
//                   return NavigationDestination(
//                     icon: Icon(item.inactiveIcon, color: item.inactiveColor),
//                     selectedIcon:
//                         Icon(item.activeIcon, color: item.activeColor),
//                     label: item.title,
//                   );
//                 }).toList(),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'product_cart_screen/cart_screen.dart';
import 'product_favorite_screen/favorite_screen.dart';
import 'product_list_screen/product_list_screen.dart';
import 'profile_screen/profile_screen.dart';
import '../../../widget/page_wrapper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const List<Widget> screens = [
    ProductListScreen(key: ValueKey('list')),
    FavoriteScreen(key: ValueKey('fav')),
    CartScreen(key: ValueKey('cart')),
    ProfileScreen(key: ValueKey('profile')),
  ];

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return PageWrapper(
      child: Stack(
        children: [
          // 1. Background Gradient Layer
          // const Positioned.fill(
          //   child: DecoratedBox(git remote -v
          //     decoration: BoxDecoration(
          //       gradient: LinearGradient(
          //         colors: [
          //           Color.fromARGB(255, 3, 51, 17),
          //           Color(0xFF3CA55C),
          //         ],
          //         begin: Alignment.topLeft,
          //         end: Alignment.bottomRight,
          //       ),
          //     ),
          //   ),
          // ),

          // 2. Foreground Scaffold with transparent background
          Scaffold(
            //  backgroundColor: Colors.transparent,
            body: PageTransitionSwitcher(
              duration: const Duration(milliseconds: 600),
              transitionBuilder: (
                Widget child,
                Animation<double> primaryAnimation,
                Animation<double> secondaryAnimation,
              ) {
                return FadeThroughTransition(
                  animation: primaryAnimation,
                  secondaryAnimation: secondaryAnimation,
                  child: child,
                );
              },
              child: HomeScreen.screens[_selectedIndex],
            ),
            bottomNavigationBar: Stack(
              children: [
                // gradient behind nav bar
                // Container(
                //   height: kBottomNavigationBarHeight,
                //   decoration: const BoxDecoration(
                //     gradient: LinearGradient(
                //       colors: [
                //         Color.fromARGB(255, 3, 51, 17),
                //         Color(0xFF3CA55C),
                //       ],
                //       begin: Alignment.topLeft,
                //       end: Alignment.bottomRight,
                //     ),
                //   ),
                // ),
                NavigationBar(
                  //backgroundColor: const Color.fromARGB(255, 39, 89, 18),
                  backgroundColor: Colors.purple,
                  elevation: 0,
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: (idx) =>
                      setState(() => _selectedIndex = idx),
                  labelBehavior:
                      NavigationDestinationLabelBehavior.onlyShowSelected,
                  destinations: AppData.navItems.map((item) {
                    return NavigationDestination(
                      icon: Icon(item.inactiveIcon, color: item.inactiveColor),
                      selectedIcon:
                          Icon(item.activeIcon, color: item.activeColor),
                      label: item.title,
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NavItem {
  final String title;
  final IconData inactiveIcon;
  final IconData activeIcon;
  final Color inactiveColor;
  final Color activeColor;

  const NavItem({
    required this.title,
    required this.inactiveIcon,
    required this.activeIcon,
    required this.inactiveColor,
    required this.activeColor,
  });
}

class AppData {
  static const List<NavItem> navItems = [
    NavItem(
      title: 'Products',
      inactiveIcon: Icons.view_list_outlined,
      activeIcon: Icons.view_list,
      inactiveColor: Colors.grey,
      activeColor: Colors.blue,
    ),
    NavItem(
      title: 'Favorites',
      inactiveIcon: Icons.favorite_outline,
      activeIcon: Icons.favorite,
      inactiveColor: Colors.grey,
      activeColor: Colors.red,
    ),
    NavItem(
      title: 'Cart',
      inactiveIcon: Icons.shopping_cart_outlined,
      activeIcon: Icons.shopping_cart,
      inactiveColor: Colors.grey,
      activeColor: Colors.green,
    ),
    NavItem(
      title: 'Profile',
      inactiveIcon: Icons.person_outline,
      activeIcon: Icons.person,
      inactiveColor: Colors.grey,
      activeColor: Colors.purple,
    ),
  ];
}
