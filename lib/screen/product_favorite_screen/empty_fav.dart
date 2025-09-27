// import 'package:client_app/screen/home_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

// class EmptyFav extends StatelessWidget {
//   const EmptyFav({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Column(
//         children: [
//           Expanded(
//             child: Center(
//               child: Lottie.asset('assets/images/empty_fav.json'),
//             ),
//           ),
//           const Text(
//             "No Favorite Product",
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//             selectionColor: Colors.white,
//           ),
//           Center(
//             child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color.fromARGB(255, 7, 62, 107),
//                   foregroundColor: Colors.white,
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30)),
//                 ),
//                 onPressed: () => HomeScreen(),
//                 child: const Text(
//                   "Home screen ",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                   ),
//                 )),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:client_app/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EmptyFav extends StatelessWidget {
  const EmptyFav({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Lottie.asset('assets/images/empty_fav.json'),
          ),
        ),
        const Text(
          "No Favorite Product",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(height: 16),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 7, 62, 107),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: const Text(
              "Home screen",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
