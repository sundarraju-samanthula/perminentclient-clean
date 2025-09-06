// // //import 'package:animated_splash_screen/animated_splash_screen.dart';
// // import 'package:client_app/screen/home_screen.dart';
// // import 'package:client_app/screen/login_screen/login_screen.dart';
// // import 'package:flutter/material.dart';
// // //import 'package:lottie/lottie.dart';
// // class AnimatedSplashScreenWidget extends StatelessWidget {
// //   const AnimatedSplashScreenWidget({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return AnimatedSplashScreen(
// //       splash: Center(child: Lottie.asset('assets/animation_123.json')),
// //       nextScreen: loginUser?.sId == null ? const LoginScreen() : const HomeScreen(),
// //       splashIconSize: 300,
// //       backgroundColor: Colors.black,
// //       duration: 5000,
// //     ); // AnimatedSplashScreen
// //   }
// // }
// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'home_screen.dart'; // Your actual home page
// import 'login_screen/login_screen.dart'; // Your login screen
// import '../models/user.dart';
// import 'package:provider/provider.dart';
// import 'screen/login_screen/provider/user_provider.dart';

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final userProvider = context.read<UserProvider>();
//     final User? loginUser = userProvider.getLoginUsr();

//     return AnimatedSplashScreen(
//       splash: Center(child: Lottie.asset('assets/animation_123.json')),
//       splashIconSize: 300,
//       backgroundColor: Colors.white,
//       duration: 3000,
//       splashTransition: SplashTransition.fadeTransition,
//       pageTransitionType: PageTransitionType.fade,
//       nextScreen:
//           loginUser?.sId == null ? const LoginScreen() : const HomeScreen(),
//     );
//   }
// }
// lib/screen/splash_screen.dart

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:client_app/screen/on_boarding_Screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../screen/home_screen.dart';
import '../screen/login_screen/provider/user_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider =
        context.read<UserProvider>(); // makes UserProvider available
    final loginUser = userProvider.getLoginUsr();

    return AnimatedSplashScreen(
      splash: Center(
        // child: Lottie.asset('assets/images/animation_123.json'),
        child: Lottie.asset('assets/images/splash.gif'),
      ),
      duration: 3000,
      splashTransition: SplashTransition.decoratedBoxTransition,
      nextScreen:
          loginUser?.sId == null ? OnboardingScreen() : const HomeScreen(),
    );
  }
}
