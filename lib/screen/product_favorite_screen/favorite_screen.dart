// import 'package:client_app/utility/extensions.dart';
// import 'provider/favorite_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../../../../widget/product_grid_view.dart';
// import '../../utility/app_color.dart';

// class FavoriteScreen extends StatelessWidget {
//   const FavoriteScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Future.delayed(Duration.zero, () {
//       context.favoriteProvider.loadFavoriteItems();
//     });
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Favorites",
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColor.darkOrange),
//         ),
//       ),
//       body: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Consumer<FavoriteProvider>(
//             builder: (context, favoriteProvider, child) {
//               return ProductGridView(
//                 items: favoriteProvider.favoriteProduct,
//               );
//             },
//           )
//       ),
//     );
//   }
// }
import 'package:client_app/screen/product_favorite_screen/empty_fav.dart';
import 'package:client_app/utility/extensions.dart';
import 'provider/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../widget/product_grid_view.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {
      context.favoriteProvider.loadFavoriteItems();
    });

    return Container(
      // decoration: const BoxDecoration(
      //   gradient: LinearGradient(
      //     colors: [
      //       Color.fromARGB(255, 3, 51, 17), // light green
      //       Color(0xFF3CA55C), // yellow-green
      //     ],
      //     begin: Alignment.topLeft,
      //     end: Alignment.bottomRight,
      //   ),
      // ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Favorites",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 7, 62, 107),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Consumer<FavoriteProvider>(
              builder: (context, favoriteProvider, child) {
                final items = favoriteProvider.favoriteProduct;
                return Column(
                  children: [
                    if (items.isEmpty)
                      const Expanded(child: EmptyFav())
                    else
                      Expanded(
                        child: ProductGridView(
                          items: favoriteProvider.favoriteProduct,
                        ),
                      ),
                    // ProductGridView(
                    //   items: favoriteProvider.favoriteProduct,
                    // ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
