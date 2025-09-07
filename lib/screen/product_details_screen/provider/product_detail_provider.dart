// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter_cart/flutter_cart.dart';
// // import '../../../core/data/data_provider.dart';
// // import '../../../models/product.dart';
// // import '../../../utility/snack_bar_helper.dart';
// // import '../../../utility/utility_extention.dart';

// // class ProductDetailProvider extends ChangeNotifier {
// //   final DataProvider _dataProvider;
// //   String? selectedVariant;
// //   var flutterCart = FlutterCart();

// //   ProductDetailProvider(this._dataProvider);

// //   void addToCart(Product product) {
// //     if(product.proVariantId!.isNotEmpty && selectedVariant == null){
// //       SnackBarHelper.showErrorSnackBar('Pleas select a variant');
// //       return;
// //     }
// //     double? price = product.offerPrice != product.price ? product.offerPrice : product.price;
// //     flutterCart.addToCart(
// //       cartModel: CartModel(
// //           productId: '${product.sId}',
// //           productName: '${product.name}',
// //           productImages: ['${product.images.safeElementAt(0)?.url}'],
// //           variants: [ProductVariant(price: price ?? 0, color: selectedVariant)],
// //           productDetails: '${product.description}'),
// //     );
// //     selectedVariant = null;
// //     SnackBarHelper.showSuccessSnackBar('Item Added');
// //     notifyListeners();
// //   }

// //   //? to update UI
// //   void updateUI() {
// //     notifyListeners();
// //   }
// // }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter_cart/flutter_cart.dart';
// import '../../../core/data/data_provider.dart';
// import '../../../models/product.dart';
// import '../../../utility/snack_bar_helper.dart';
// import '../../../utility/utility_extention.dart';

// class ProductDetailProvider extends ChangeNotifier {
//   final DataProvider _dataProvider;
//   String? selectedVariant;
//   final FlutterCart flutterCart = FlutterCart();

//   ProductDetailProvider(this._dataProvider);

//   void addToCart(Product product) {
//     if (product.proVariantId!.isNotEmpty && selectedVariant == null) {
//       SnackBarHelper.showErrorSnackBar('Please select a variant');
//       return;
//     }
//     final price = (product.offerPrice != product.price) ? product.offerPrice : product.price;
//     flutterCart.addToCart(
//       cartModel: CartModel(
//         productId: product.sId!,
//         productName: product.name!,
//         productImages: [product.images.safeElementAt(0)?.url ?? ''],
//         variants: [ProductVariant(price: price ?? 0, color: selectedVariant)],
//         productDetails: product.description ?? '',
//       ),
//     );
//     selectedVariant = null;
//     SnackBarHelper.showSuccessSnackBar('Item Added');
//     notifyListeners();
//   }

//   void incrementQuantity(Product product) {
//     final existing = flutterCart.getSpecificProduct(
//       product.sId!,
//       flutterCart.cartItemsList
//           .firstWhere((item) => item.productId == product.sId!)
//           .variants,
//     );
//     if (existing != null) {
//       flutterCart.updateQuantity(product.sId!, existing.variants, existing.quantity + 1);
//       notifyListeners();
//     }
//   }

//   void decrementQuantity(Product product) {
//     final existing = flutterCart.getSpecificProduct(
//       product.sId!,
//       flutterCart.cartItemsList
//           .firstWhere((item) => item.productId == product.sId!)
//           .variants,
//     );
//     if (existing != null) {
//       final newQty = existing.quantity - 1;
//       if (newQty > 0) {
//         flutterCart.updateQuantity(product.sId!, existing.variants, newQty);
//       } else {
//         flutterCart.removeItem(product.sId!, existing.variants);
//       }
//       notifyListeners();
//     }
//   }

//   int getQuantity(Product product) {
//     final existing = flutterCart.getSpecificProduct(
//       product.sId!,
//       flutterCart.cartItemsList.firstWhere((item) => item.productId == product.sId!, orElse: () => null)
//           ?.variants,
//     );
//     return existing?.quantity ?? 0;
//   }

//   void updateUI() => notifyListeners();
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter_cart/flutter_cart.dart';
import 'package:collection/collection.dart'; // <<-- for firstWhereOrNull
import '../../../core/data/data_provider.dart';
import '../../../models/product.dart';
import '../../../utility/snack_bar_helper.dart';
import '../../../utility/utility_extention.dart';

class ProductDetailProvider extends ChangeNotifier {
  final DataProvider _dataProvider;
  String? selectedVariant;
  final FlutterCart flutterCart = FlutterCart();

  ProductDetailProvider(this._dataProvider);

  void addToCart(Product product) {
    if (product.proVariantId!.isNotEmpty && selectedVariant == null) {
      SnackBarHelper.showErrorSnackBar('Please select a variant');
      return;
    }
    final price = (product.offerPrice != product.price)
        ? product.offerPrice
        : product.price;
    flutterCart.addToCart(
      cartModel: CartModel(
        productId: product.sId!,
        productName: product.name!,
        productImages: [product.images.safeElementAt(0)?.url ?? ''],
        variants: [ProductVariant(price: price ?? 0, color: selectedVariant)],
        productDetails: product.description ?? '',
      ),
    );
    selectedVariant = null;
    SnackBarHelper.showSuccessSnackBar('Item Added');
    notifyListeners();
  }

  void incrementQuantity(Product product) {
    final existingItem = flutterCart.cartItemsList
        .firstWhereOrNull((item) => item.productId == product.sId);

    if (existingItem != null) {
      flutterCart.updateQuantity(
        product.sId!,
        existingItem.variants,
        existingItem.quantity + 1,
      );
      notifyListeners();
    }
  }

  void decrementQuantity(Product product) {
    final existingItem = flutterCart.cartItemsList
        .firstWhereOrNull((item) => item.productId == product.sId);

    if (existingItem != null) {
      final newQty = existingItem.quantity - 1;
      if (newQty > 0) {
        flutterCart.updateQuantity(product.sId!, existingItem.variants, newQty);
      } else {
        flutterCart.removeItem(product.sId!, existingItem.variants);
      }
      notifyListeners();
    }
  }

  int getQuantity(Product product) {
    final existingItem = flutterCart.cartItemsList
        .firstWhereOrNull((item) => item.productId == product.sId);

    return existingItem?.quantity ?? 0;
  }

  void updateUI() => notifyListeners();
}
