// import 'package:flutter/material.dart';

// class AppTheme {
//   const AppTheme._();
//     static const _currentPage = 0;
//   static ThemeData lightAppTheme = ThemeData(
//     scaffoldBackgroundColor: _getGradientColors()[0],
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         padding: const EdgeInsets.all(12),
//         backgroundColor: const Color(0xFFf16b26),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//       ),
//     ),
//     textButtonTheme: TextButtonThemeData(
//       style: TextButton.styleFrom(foregroundColor: Colors.deepOrange),
//     ),
//     iconTheme: const IconThemeData(color: Color(0xFFA6A3A0)),
//     textTheme: const TextTheme(
//       displayLarge: TextStyle(
//         fontSize: 20,
//         fontWeight: FontWeight.bold,
//         color: Colors.black,
//       ),
//       displayMedium: TextStyle(
//         fontSize: 19,
//         fontWeight: FontWeight.w500,
//         color: Colors.black,
//       ),
//       displaySmall: TextStyle(
//         fontSize: 18,
//         fontWeight: FontWeight.w500,
//         color: Colors.black,
//       ),
//       headlineMedium: TextStyle(
//         fontSize: 16,
//         fontWeight: FontWeight.w500,
//         color: Colors.black,
//       ),
//       headlineSmall: TextStyle(fontSize: 15, color: Colors.grey),
//       titleLarge: TextStyle(fontSize: 12),
//     ),
//     appBarTheme: const AppBarTheme(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       centerTitle: true,
//     ),
//   );

// List<Color> _getGradientColors() {
//     switch (_currentPage) {
//       case 0:
//         return [Color.fromARGB(255, 1, 30, 55), Color(0xFF4286f4)];
//       case 1:
//         return [Color.fromARGB(255, 3, 51, 17), Color(0xFF3CA55C)];
//       case 2:
//         return [Color.fromARGB(255, 71, 4, 40), Color(0xFFD76D77)];
//       default:
//         return [Colors.blue, Colors.green];
//     }
//   }

// }
// // // // // import 'dart:ui';

// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // // // // import 'package:google_fonts/google_fonts.dart';

// // // // // class AppTheme {
// // // // //   static final _seed = const Color(0xFFF16B26);

// // // // //   static final light = ThemeData(
// // // // //     useMaterial3: true,
// // // // //     colorScheme:
// // // // //         ColorScheme.fromSeed(seedColor: _seed, brightness: Brightness.light),
// // // // //     textTheme: TextTheme(
// // // // //       titleLarge:
// // // // //           GoogleFonts.poppins(fontSize: 20.sp, fontWeight: FontWeight.w600),
// // // // //       bodyMedium: GoogleFonts.openSans(fontSize: 16.sp),
// // // // //       labelSmall: GoogleFonts.openSans(fontSize: 12.sp, color: Colors.grey),
// // // // //     ),
// // // // //     elevatedButtonTheme: ElevatedButtonThemeData(
// // // // //       style: ElevatedButton.styleFrom(
// // // // //         backgroundColor: ColorScheme.fromSeed(seedColor: _seed).primary,
// // // // //         padding: EdgeInsets.all(16.w),
// // // // //         shape:
// // // // //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
// // // // //       ),
// // // // //     ),
// // // // //     textButtonTheme: TextButtonThemeData(
// // // // //       style: TextButton.styleFrom(
// // // // //         foregroundColor: ColorScheme.fromSeed(seedColor: _seed).secondary,
// // // // //       ),
// // // // //     ),
// // // // //     iconTheme:
// // // // //         IconThemeData(color: ColorScheme.fromSeed(seedColor: _seed).onSurface),
// // // // //     appBarTheme: const AppBarTheme(
// // // // //backgroundColor: Colors.transparent,
// // // // //       elevation: 0,
// // // // //       centerTitle: true,
// // // // //     ),
// // // // //   );

// // // // //   static final dark = ThemeData(
// // // // //     useMaterial3: true,
// // // // //     colorScheme:
// // // // //         ColorScheme.fromSeed(seedColor: _seed, brightness: Brightness.dark),
// // // // //     textTheme: TextTheme(
// // // // //       titleLarge: GoogleFonts.poppins(
// // // // //           fontSize: 20.sp, fontWeight: FontWeight.w600, color: Colors.white),
// // // // //       bodyMedium: GoogleFonts.openSans(fontSize: 16.sp, color: Colors.white70),
// // // // //       labelSmall: GoogleFonts.openSans(fontSize: 12.sp, color: Colors.white60),
// // // // //     ),
// // // // //     elevatedButtonTheme: ElevatedButtonThemeData(
// // // // //       style: ElevatedButton.styleFrom(
// // // // //         backgroundColor:
// // // // //             ColorScheme.fromSeed(seedColor: _seed, brightness: Brightness.dark)
// // // // //                 .primary,
// // // // //         padding: EdgeInsets.all(16.w),
// // // // //         shape:
// // // // //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
// // // // //       ),
// // // // //     ),
// // // // //     textButtonTheme: TextButtonThemeData(
// // // // //       style: TextButton.styleFrom(
// // // // //         foregroundColor:
// // // // //             ColorScheme.fromSeed(seedColor: _seed, brightness: Brightness.dark)
// // // // //                 .secondary,
// // // // //       ),
// // // // //     ),
// // // // //     iconTheme: IconThemeData(
// // // // //         color:
// // // // //             ColorScheme.fromSeed(seedColor: _seed, brightness: Brightness.dark)
// // // // //                 .onSurface),
// // // // //     appBarTheme: const AppBarTheme(
// // // // //       backgroundColor: Colors.transparent,
// // // // //       elevation: 0,
// // // // //       centerTitle: true,
// // // // //     ),
// // // // //   );
// // // // // }
// // // import 'package:flutter/material.dart';

// // // class AppTheme {
// // //   const AppTheme._();

// // //   /// Helper to get a gradient based on a screen index
// // //   static LinearGradient gradientForIndex(int index) {
// // //     switch (index) {
// // //       case 0:
// // //         return const LinearGradient(
// // //             colors: [Color(0xFF004E92), Color(0xFF000428)]);
// // //       case 1:
// // //         return const LinearGradient(
// // //             colors: [Color(0xFF56AB2F), Color(0xFFA8E063)]);
// // //       case 2:
// // //         return const LinearGradient(
// // //             colors: [Color(0xFFEE0979), Color(0xFFFF6A00)]);
// // //       case 3:
// // //         return const LinearGradient(
// // //             colors: [Color(0xFF7F00FF), Color(0xFFE100FF)]);
// // //       default:
// // //         return const LinearGradient(colors: [Colors.white, Colors.grey]);
// // //     }
// // //   }

// // //   /// Global theme configuration
// // //   static final ThemeData lightAppTheme = ThemeData(
// // //     // Set scaffold background to transparent so gradient can show through
// // //     scaffoldBackgroundColor: Colors.transparent,
// // //     elevatedButtonTheme: ElevatedButtonThemeData(
// // //       style: ElevatedButton.styleFrom(
// // //         padding: const EdgeInsets.all(12),
// // //         backgroundColor: const Color(0xFFf16b26),
// // //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // //       ),
// // //     ),
// // //     textButtonTheme: TextButtonThemeData(
// // //       style: TextButton.styleFrom(foregroundColor: Colors.deepOrange),
// // //     ),
// // //     iconTheme: const IconThemeData(color: Color(0xFFA6A3A0)),
// // //     textTheme: const TextTheme(
// // //       displayLarge: TextStyle(
// // //           fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
// // //       displayMedium: TextStyle(
// // //           fontSize: 19, fontWeight: FontWeight.w500, color: Colors.black),
// // //       displaySmall: TextStyle(
// // //           fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
// // //       headlineMedium: TextStyle(
// // //           fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
// // //       headlineSmall: TextStyle(fontSize: 15, color: Colors.grey),
// // //       titleLarge: TextStyle(fontSize: 12),
// // //     ),
// // //     appBarTheme: const AppBarTheme(
// // //       backgroundColor: Colors.transparent,
// // //       elevation: 0,
// // //       centerTitle: true,
// // //     ),
// // //   );
// // // }

// import 'package:flutter/material.dart';

// class AppTheme {
//   const AppTheme._();

//   static ThemeData lightAppTheme = ThemeData(
//     scaffoldBackgroundColor: Colors.transparent, // Let gradient show through
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         padding: const EdgeInsets.all(12),
//         backgroundColor: const Color(0xFFf16b26),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//       ),
//     ),
//     textButtonTheme: TextButtonThemeData(
//       style: TextButton.styleFrom(foregroundColor: Colors.deepOrange),
//     ),
//     iconTheme: const IconThemeData(color: Color(0xFFA6A3A0)),
//     textTheme: const TextTheme(
//       displayLarge: TextStyle(
//         fontSize: 20,
//         fontWeight: FontWeight.bold,
//         color: Colors.black,
//       ),
//       displayMedium: TextStyle(
//         fontSize: 19,
//         fontWeight: FontWeight.w500,
//         color: Colors.black,
//       ),
//       displaySmall: TextStyle(
//         fontSize: 18,
//         fontWeight: FontWeight.w500,
//         color: Colors.black,
//       ),
//       headlineMedium: TextStyle(
//         fontSize: 16,
//         fontWeight: FontWeight.w500,
//         color: Colors.black,
//       ),
//       headlineSmall: TextStyle(fontSize: 15, color: Colors.grey),
//       titleLarge: TextStyle(fontSize: 12),
//     ),
//     appBarTheme: const AppBarTheme(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       centerTitle: true,
//     ),
//   );
// }

import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData lightAppTheme = ThemeData(
    scaffoldBackgroundColor:
        const Color.fromARGB(210, 81, 182, 99), // Let gradient show
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(12),
        backgroundColor: const Color(0xFFf16b26),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Colors.deepOrange),
    ),
    iconTheme: const IconThemeData(color: Color(0xFFA6A3A0)),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      displayMedium: TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      displaySmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      headlineMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      headlineSmall: TextStyle(fontSize: 15, color: Colors.grey),
      titleLarge: TextStyle(fontSize: 12),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
  );
}
