// // // // // // // import 'package:flutter/material.dart';
// // // // // // // import 'package:provider/provider.dart';

// // // // // // // import '../models/product.dart';
// // // // // // // import '../screen/product_favorite_screen/provider/favorite_provider.dart';
// // // // // // // import '../utility/extensions.dart';
// // // // // // // import '../utility/utility_extention.dart';
// // // // // // // import 'custom_network_image.dart';

// // // // // // // class ProductGridTile extends StatelessWidget {
// // // // // // //   final Product product;
// // // // // // //   final int index;
// // // // // // //   final bool isPriceOff;

// // // // // // //   const ProductGridTile({
// // // // // // //     super.key,
// // // // // // //     required this.product,
// // // // // // //     required this.index,
// // // // // // //     required this.isPriceOff,
// // // // // // //   });

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     double discountPercentage = context.dataProvider
// // // // // // //         .calculateDiscountPercentage(
// // // // // // //             product.price ?? 0, product.offerPrice ?? 0);
// // // // // // //     return GridTile(
// // // // // // //       header: Padding(
// // // // // // //         padding: const EdgeInsets.all(10.0),
// // // // // // //         child: Row(
// // // // // // //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // // //           children: [
// // // // // // //             Visibility(
// // // // // // //               visible: discountPercentage != 0,
// // // // // // //               child: Container(
// // // // // // //                 decoration: BoxDecoration(
// // // // // // //                   borderRadius: BorderRadius.circular(30),
// // // // // // //                   color: Colors.white,
// // // // // // //                 ),
// // // // // // //                 width: 20,
// // // // // // //                 height: 30,
// // // // // // //                 alignment: Alignment.center,
// // // // // // //                 child: Text(
// // // // // // //                   "OFF ${discountPercentage.toInt()} %",
// // // // // // //                   style: const TextStyle(fontWeight: FontWeight.w600),
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //             Consumer<FavoriteProvider>(
// // // // // // //               builder: (context, favoriteProvider, child) {
// // // // // // //                 return IconButton(
// // // // // // //                   icon: Icon(
// // // // // // //                     Icons.favorite,
// // // // // // //                     size: 40,
// // // // // // //                     color:
// // // // // // //                         favoriteProvider.checkIsItemFavorite(product.sId ?? '')
// // // // // // //                             ? Colors.red
// // // // // // //                             : const Color(0xFFA6A3A0),
// // // // // // //                   ),
// // // // // // //                   onPressed: () {
// // // // // // //                     context.favoriteProvider
// // // // // // //                         .updateToFavoriteList(product.sId ?? '');
// // // // // // //                   },
// // // // // // //                 );
// // // // // // //               },
// // // // // // //             ),
// // // // // // //           ],
// // // // // // //         ),
// // // // // // //       ),
// // // // // // // //       footer: Padding(
// // // // // // // //         padding: const EdgeInsets.all(8.0),
// // // // // // // //         child: Container(
// // // // // // // //           padding: const EdgeInsets.all(10),
// // // // // // // //           height: 70,
// // // // // // // //           decoration: const BoxDecoration(
// // // // // // // //             color: Colors.white,
// // // // // // // //             borderRadius: BorderRadius.only(
// // // // // // // //               bottomLeft: Radius.circular(15),
// // // // // // // //               bottomRight: Radius.circular(15),
// // // // // // // //             ),
// // // // // // // //           ),
// // // // // // // //           child: Column(
// // // // // // // //             mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // //             children: [
// // // // // // // //               FittedBox(
// // // // // // // //                 child: Text(
// // // // // // // //                   product.name ?? '',
// // // // // // // //                   overflow: TextOverflow.ellipsis,
// // // // // // // //                   maxLines: 1,
// // // // // // // //                   style: const TextStyle(
// // // // // // // //                     fontWeight: FontWeight.w500,
// // // // // // // //                     color: Colors.black,
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //               const SizedBox(height: 5),
// // // // // // // //               Row(
// // // // // // // //                 children: [
// // // // // // // //                   Flexible(
// // // // // // // //                     child: Text(
// // // // // // // //                       product.offerPrice != 0
// // // // // // // //                           ? "\ ${product.offerPrice}/-"
// // // // // // // //                           : "\ ${product.price}/-",
// // // // // // // //                       style: Theme.of(context).textTheme.headlineMedium,
// // // // // // // //                       overflow: TextOverflow.ellipsis,
// // // // // // // //                     ),
// // // // // // // //                   ),
// // // // // // // //                   const SizedBox(width: 3),
// // // // // // // //                   if (product.offerPrice != null &&
// // // // // // // //                       product.offerPrice != product.price)
// // // // // // // //                     Flexible(
// // // // // // // //                       child: Text(
// // // // // // // //                         "\ ${product.price}",
// // // // // // // //                         style: const TextStyle(
// // // // // // // //                           decoration: TextDecoration.lineThrough,
// // // // // // // //                           color: Colors.grey,
// // // // // // // //                           fontWeight: FontWeight.w500,
// // // // // // // //                         ),
// // // // // // // //                         overflow: TextOverflow.ellipsis,
// // // // // // // //                       ),
// // // // // // // //                     ),
// // // // // // // //                 ],

// // // // // // // //               )
// // // // // // // //             ],

// // // // // // // //           ),

// // // // // // // //         ),

// // // // // // // //       ),
// // // // // // // //       child: Container(
// // // // // // // //         padding: const EdgeInsets.all(15),
// // // // // // // //         decoration: BoxDecoration(
// // // // // // // //           color: const Color(0xFFE5E6E8),
// // // // // // // //           borderRadius: BorderRadius.circular(20),
// // // // // // // //         ),
// // // // // // // //         child: CustomNetworkImage(
// // // // // // // //           imageUrl: product.images!.isNotEmpty
// // // // // // // //               ? product.images?.safeElementAt(0)?.url ?? ''
// // // // // // // //               : '',
// // // // // // // //           fit: BoxFit.scaleDown,
// // // // // // // //           scale: 3.0,
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }
// // // // // // // footer: Padding(
// // // // // // //   padding: const EdgeInsets.all(8.0),
// // // // // // //   child: Container(
// // // // // // //     padding: const EdgeInsets.all(10),
// // // // // // //     height: 120, // Adjust as needed to fit price + button
// // // // // // //     decoration: const BoxDecoration(
// // // // // // //       color: Colors.white,
// // // // // // //       borderRadius: BorderRadius.only(
// // // // // // //         bottomLeft: Radius.circular(15),
// // // // // // //         bottomRight: Radius.circular(15),
// // // // // // //       ),
// // // // // // //     ),
// // // // // // //     child: Column(
// // // // // // //       mainAxisAlignment: MainAxisAlignment.center,
// // // // // // //       crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //       children: [
// // // // // // //         // Product Name + Price Row
// // // // // // //         FittedBox(
// // // // // // //           child: Text(
// // // // // // //             product.name ?? '',
// // // // // // //             overflow: TextOverflow.ellipsis,
// // // // // // //             maxLines: 1,
// // // // // // //             style: const TextStyle(
// // // // // // //               fontWeight: FontWeight.w500,
// // // // // // //               color: Colors.black,
// // // // // // //             ),
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //         const SizedBox(height: 5),
// // // // // // //         Row(
// // // // // // //           children: [
// // // // // // //             Flexible(
// // // // // // //               child: Text(
// // // // // // //                 product.offerPrice != null && product.offerPrice != 0
// // // // // // //                     ? "\ ${product.offerPrice}/-"
// // // // // // //                     : "\ ${product.price}/-",
// // // // // // //                 style: Theme.of(context).textTheme.headlineMedium,
// // // // // // //                 overflow: TextOverflow.ellipsis,
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //             const SizedBox(width: 3),
// // // // // // //             if (product.offerPrice != null &&
// // // // // // //                 product.offerPrice != product.price)
// // // // // // //               Flexible(
// // // // // // //                 child: Text(
// // // // // // //                   "\ ${product.price}/-",
// // // // // // //                   style: const TextStyle(
// // // // // // //                     decoration: TextDecoration.lineThrough,
// // // // // // //                     color: Colors.grey,
// // // // // // //                     fontWeight: FontWeight.w500,
// // // // // // //                   ),
// // // // // // //                   overflow: TextOverflow.ellipsis,
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //           ],
// // // // // // //         ),
// // // // // // //         const SizedBox(height: 8),
// // // // // // //         // Add to Cart Button
// // // // // // //         SizedBox(
// // // // // // //           width: double.infinity,
// // // // // // //           child: ElevatedButton(
// // // // // // //             onPressed: (product.quantity != null && product.quantity != 0)
// // // // // // //                 ? () {
// // // // // // //                     context.proDetailProvider.addToCart(product);
// // // // // // //                   }
// // // // // // //                 : null,
// // // // // // //             child: const Text(
// // // // // // //               "Add to cart",
// // // // // // //               style: TextStyle(color: Colors.white),
// // // // // // //             ),
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //       ],
// // // // // // //     ),
// // // // // // //   ),
// // // // // // // ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:provider/provider.dart';

// // // // // // import '../models/product.dart';
// // // // // // import '../screen/product_favorite_screen/provider/favorite_provider.dart';
// // // // // // import '../utility/extensions.dart';
// // // // // // import '../utility/utility_extention.dart';
// // // // // // import 'custom_network_image.dart';

// // // // // // class ProductGridTile extends StatelessWidget {
// // // // // //   final Product product;
// // // // // //   final int index;
// // // // // //   final bool isPriceOff;

// // // // // //   const ProductGridTile({
// // // // // //     super.key,
// // // // // //     required this.product,
// // // // // //     required this.index,
// // // // // //     required this.isPriceOff,
// // // // // //   });

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     final discountPercentage = context.dataProvider.calculateDiscountPercentage(
// // // // // //       product.price ?? 0,
// // // // // //       product.offerPrice ?? 0,
// // // // // //     );

// // // // // //     return GridTile(
// // // // // //       header: Padding(
// // // // // //         padding: const EdgeInsets.all(10.0),
// // // // // //         child: Row(
// // // // // //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // //           children: [
// // // // // //             if (discountPercentage != 0)
// // // // // //               Container(
// // // // // //                 decoration: BoxDecoration(
// // // // // //                   borderRadius: BorderRadius.circular(30),
// // // // // //                   color: Colors.white,
// // // // // //                 ),
// // // // // //                 width: 60,
// // // // // //                 height: 30,
// // // // // //                 alignment: Alignment.center,
// // // // // //                 child: Text(
// // // // // //                   "OFF ${discountPercentage.toInt()}%",
// // // // // //                   style: const TextStyle(fontWeight: FontWeight.w600),
// // // // // //                 ),
// // // // // //               ),
// // // // // //             Consumer<FavoriteProvider>(
// // // // // //               builder: (context, favoriteProvider, _) {
// // // // // //                 final isFavorite = favoriteProvider.checkIsItemFavorite(
// // // // // //                   product.sId ?? '',
// // // // // //                 );
// // // // // //                 return IconButton(
// // // // // //                   icon: Icon(
// // // // // //                     Icons.favorite,
// // // // // //                     size: 30,
// // // // // //                     color: isFavorite ? Colors.red : const Color(0xFFA6A3A0),
// // // // // //                   ),
// // // // // //                   onPressed: () => context
// // // // // //                       .read<FavoriteProvider>()
// // // // // //                       .updateToFavoriteList(product.sId ?? ''),
// // // // // //                 );
// // // // // //               },
// // // // // //             ),
// // // // // //           ],
// // // // // //         ),
// // // // // //       ),
// // // // // //       child: Container(
// // // // // //         padding: const EdgeInsets.all(15),
// // // // // //         decoration: BoxDecoration(
// // // // // //           color: const Color(0xFFE5E6E8),
// // // // // //           borderRadius: BorderRadius.circular(20),
// // // // // //         ),
// // // // // //         child: CustomNetworkImage(
// // // // // //           imageUrl: product.images?.safeElementAt(0)?.url ?? '',
// // // // // //           fit: BoxFit.scaleDown,
// // // // // //           scale: 3.0,
// // // // // //         ),
// // // // // //       ),
// // // // // //       footer: Padding(
// // // // // //         padding: const EdgeInsets.all(8.0),
// // // // // //         child: Container(
// // // // // //           padding: const EdgeInsets.all(10),
// // // // // //           decoration: const BoxDecoration(
// // // // // //             color: Colors.white,
// // // // // //             borderRadius: BorderRadius.only(
// // // // // //               bottomLeft: Radius.circular(15),
// // // // // //               bottomRight: Radius.circular(15),
// // // // // //             ),
// // // // // //           ),
// // // // // //           child: Column(
// // // // // //             mainAxisSize: MainAxisSize.min,
// // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //             children: [
// // // // // //               FittedBox(
// // // // // //                 child: Text(
// // // // // //                   product.name ?? '',
// // // // // //                   overflow: TextOverflow.ellipsis,
// // // // // //                   maxLines: 1,
// // // // // //                   style: const TextStyle(
// // // // // //                     fontWeight: FontWeight.w500,
// // // // // //                     color: Colors.black,
// // // // // //                   ),
// // // // // //                 ),
// // // // // //               ),
// // // // // //               const SizedBox(height: 5),
// // // // // //               Row(
// // // // // //                 crossAxisAlignment: CrossAxisAlignment.end,
// // // // // //                 children: [
// // // // // //                   Text(
// // // // // //                     product.offerPrice != null && product.offerPrice != 0
// // // // // //                         ? "₹${product.offerPrice}"
// // // // // //                         : "₹${product.price}",
// // // // // //                     style: Theme.of(context).textTheme.headlineMedium,
// // // // // //                   ),
// // // // // //                   const SizedBox(width: 6),
// // // // // //                   if (product.offerPrice != null &&
// // // // // //                       product.offerPrice != product.price)
// // // // // //                     Text(
// // // // // //                       "₹${product.price}",
// // // // // //                       style: const TextStyle(
// // // // // //                         decoration: TextDecoration.lineThrough,
// // // // // //                         color: Colors.grey,
// // // // // //                         fontWeight: FontWeight.w500,
// // // // // //                       ),
// // // // // //                     ),
// // // // // //                 ],
// // // // // //               ),
// // // // // //               const SizedBox(height: 8),
// // // // // //               SizedBox(
// // // // // //                 width: double.infinity,
// // // // // //                 child: ElevatedButton(
// // // // // //                   onPressed: (product.quantity != null && product.quantity! > 0)
// // // // // //                       ? () {
// // // // // //                           context.proDetailProvider.addToCart(product);
// // // // // //                         }
// // // // // //                       : null,
// // // // // //                   style: ElevatedButton.styleFrom(
// // // // // //                     padding: const EdgeInsets.symmetric(vertical: 12),
// // // // // //                     shape: RoundedRectangleBorder(
// // // // // //                       borderRadius: BorderRadius.circular(8),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                   child: const Text(
// // // // // //                     "Add to Cart",
// // // // // //                     style: TextStyle(color: Colors.white),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //               ),
// // // // // //             ],
// // // // // //           ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:provider/provider.dart';

// // // // // import '../models/product.dart';
// // // // // import '../screen/product_favorite_screen/provider/favorite_provider.dart';
// // // // // import '../utility/extensions.dart';
// // // // // import '../utility/utility_extention.dart';
// // // // // import 'custom_network_image.dart';

// // // // // class ProductGridTile extends StatefulWidget {
// // // // //   final Product product;
// // // // //   final int index;
// // // // //   final bool isPriceOff;

// // // // //   const ProductGridTile({
// // // // //     super.key,
// // // // //     required this.product,
// // // // //     required this.index,
// // // // //     required this.isPriceOff,
// // // // //   });

// // // // //   @override
// // // // //   State<ProductGridTile> createState() => _ProductGridTileState();
// // // // // }

// // // // // class _ProductGridTileState extends State<ProductGridTile> {
// // // // //   bool _isAdded = false;

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     final product = widget.product;
// // // // //     final discountPercentage = context.dataProvider.calculateDiscountPercentage(
// // // // //       product.price ?? 0,
// // // // //       product.offerPrice ?? 0,
// // // // //     );

// // // // //     return GridTile(
// // // // //       header: Padding(
// // // // //         padding: const EdgeInsets.all(10.0),
// // // // //         child: Row(
// // // // //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // //           children: [
// // // // //             if (discountPercentage != 0)
// // // // //               Container(
// // // // //                 decoration: BoxDecoration(
// // // // //                   borderRadius: BorderRadius.circular(30),
// // // // //                   color: Colors.white,
// // // // //                 ),
// // // // //                 width: 60,
// // // // //                 height: 30,
// // // // //                 alignment: Alignment.center,
// // // // //                 child: Text(
// // // // //                   "OFF ${discountPercentage.toInt()}%",
// // // // //                   style: const TextStyle(fontWeight: FontWeight.w600),
// // // // //                 ),
// // // // //               ),
// // // // //             Consumer<FavoriteProvider>(
// // // // //               builder: (context, fav, _) {
// // // // //                 final isFav = fav.checkIsItemFavorite(product.sId ?? '');
// // // // //                 return IconButton(
// // // // //                   icon: Icon(
// // // // //                     Icons.favorite,
// // // // //                     size: 30,
// // // // //                     color: isFav ? Colors.red : const Color(0xFFA6A3A0),
// // // // //                   ),
// // // // //                   onPressed: () => context
// // // // //                       .read<FavoriteProvider>()
// // // // //                       .updateToFavoriteList(product.sId ?? ''),
// // // // //                 );
// // // // //               },
// // // // //             ),
// // // // //           ],
// // // // //         ),
// // // // //       ),
// // // // //       child: Container(
// // // // //         padding: const EdgeInsets.all(15),
// // // // //         decoration: BoxDecoration(
// // // // //           color: const Color(0xFFE5E6E8),
// // // // //           borderRadius: BorderRadius.circular(20),
// // // // //         ),
// // // // //         child: CustomNetworkImage(
// // // // //           imageUrl: product.images?.safeElementAt(0)?.url ?? '',
// // // // //           fit: BoxFit.scaleDown,
// // // // //           scale: 3.0,
// // // // //         ),
// // // // //       ),
// // // // //       footer: Padding(
// // // // //         padding: const EdgeInsets.all(8.0),
// // // // //         child: Container(
// // // // //           padding: const EdgeInsets.all(10),
// // // // //           decoration: const BoxDecoration(
// // // // //             color: Colors.white,
// // // // //             borderRadius: BorderRadius.only(
// // // // //               bottomLeft: Radius.circular(15),
// // // // //               bottomRight: Radius.circular(15),
// // // // //             ),
// // // // //           ),
// // // // //           child: Column(
// // // // //             mainAxisSize: MainAxisSize.min,
// // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // //             children: [
// // // // //               FittedBox(
// // // // //                 child: Text(
// // // // //                   product.name ?? '',
// // // // //                   overflow: TextOverflow.ellipsis,
// // // // //                   maxLines: 1,
// // // // //                   style: const TextStyle(
// // // // //                     fontWeight: FontWeight.w500,
// // // // //                     color: Colors.black,
// // // // //                   ),
// // // // //                 ),
// // // // //               ),
// // // // //               const SizedBox(height: 5),
// // // // //               Row(
// // // // //                 children: [
// // // // //                   Text(
// // // // //                     product.offerPrice != null && product.offerPrice != 0
// // // // //                         ? "₹${product.offerPrice}"
// // // // //                         : "₹${product.price}",
// // // // //                     style: Theme.of(context).textTheme.headlineMedium,
// // // // //                   ),
// // // // //                   const SizedBox(width: 6),
// // // // //                   if (product.offerPrice != null &&
// // // // //                       product.offerPrice != product.price)
// // // // //                     Text(
// // // // //                       "₹${product.price}",
// // // // //                       style: const TextStyle(
// // // // //                         decoration: TextDecoration.lineThrough,
// // // // //                         color: Colors.grey,
// // // // //                         fontWeight: FontWeight.w500,
// // // // //                       ),
// // // // //                     ),
// // // // //                 ],
// // // // //               ),
// // // // //               const SizedBox(height: 8),
// // // // //               SizedBox(
// // // // //                 width: double.infinity,
// // // // //                 child: ElevatedButton(
// // // // //                   onPressed: (product.quantity != null &&
// // // // //                           product.quantity! > 0 &&
// // // // //                           !_isAdded)
// // // // //                       ? () {
// // // // //                           context.proDetailProvider.addToCart(product);
// // // // //                           setState(() => _isAdded = true);
// // // // //                         }
// // // // //                       : null,
// // // // //                   style: ElevatedButton.styleFrom(
// // // // //                     backgroundColor: _isAdded
// // // // //                         ? Colors.grey
// // // // //                         : Theme.of(context).colorScheme.primary,
// // // // //                   ),
// // // // //                   child: Text(
// // // // //                     _isAdded ? "Added" : "Add to Cart",
// // // // //                     style: TextStyle(
// // // // //                       color: _isAdded ? Colors.black54 : Colors.white,
// // // // //                     ),
// // // // //                   ),
// // // // //                 ),
// // // // //               ),
// // // // //             ],
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }
// // // // import 'package:flutter/material.dart';
// // // // import 'package:provider/provider.dart';

// // // // import '../models/product.dart';
// // // // import '../screen/product_favorite_screen/provider/favorite_provider.dart';
// // // // import '../utility/extensions.dart';
// // // // import '../utility/utility_extention.dart';
// // // // import 'custom_network_image.dart';

// // // // class ProductGridTile extends StatefulWidget {
// // // //   final Product product;
// // // //   final int index;
// // // //   final bool isPriceOff;

// // // //   const ProductGridTile({
// // // //     super.key,
// // // //     required this.product,
// // // //     required this.index,
// // // //     required this.isPriceOff,
// // // //   });

// // // //   @override
// // // //   State<ProductGridTile> createState() => _ProductGridTileState();
// // // // }

// // // // class _ProductGridTileState extends State<ProductGridTile> {
// // // //   int _cartCount = 0;

// // // //   void _addToCart() {
// // // //     context.proDetailProvider.addToCart(widget.product);
// // // //     setState(() => _cartCount = 1);
// // // //   }

// // // //   void _increment() {
// // // //     context.proDetailProvider.addToCart(widget.product);
// // // //     setState(() => _cartCount += 1);
// // // //   }

// // // //   void _decrement() {
// // // //     context.proDetailProvider.removeFromCart(widget.product);
// // // //     setState(() {
// // // //       _cartCount = (_cartCount > 1) ? _cartCount - 1 : 0;
// // // //     });
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final product = widget.product;
// // // //     final discountPercentage = context.dataProvider.calculateDiscountPercentage(
// // // //       product.price ?? 0,
// // // //       product.offerPrice ?? 0,
// // // //     );

// // // //     return GridTile(
// // // //       header: Padding(
// // // //         padding: const EdgeInsets.all(10.0),
// // // //         child: Row(
// // // //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //           children: [
// // // //             if (discountPercentage != 0)
// // // //               Container(
// // // //                 decoration: BoxDecoration(
// // // //                   borderRadius: BorderRadius.circular(30),
// // // //                   color: Colors.white,
// // // //                 ),
// // // //                 width: 60,
// // // //                 height: 30,
// // // //                 alignment: Alignment.center,
// // // //                 child: Text(
// // // //                   "OFF ${discountPercentage.toInt()}%",
// // // //                   style: const TextStyle(fontWeight: FontWeight.w600),
// // // //                 ),
// // // //               ),
// // // //             Consumer<FavoriteProvider>(
// // // //               builder: (context, fav, _) {
// // // //                 final isFav = fav.checkIsItemFavorite(product.sId ?? '');
// // // //                 return IconButton(
// // // //                   icon: Icon(
// // // //                     Icons.favorite,
// // // //                     size: 30,
// // // //                     color: isFav ? Colors.red : const Color(0xFFA6A3A0),
// // // //                   ),
// // // //                   onPressed: () => context
// // // //                       .read<FavoriteProvider>()
// // // //                       .updateToFavoriteList(product.sId ?? ''),
// // // //                 );
// // // //               },
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //       child: Container(
// // // //         padding: const EdgeInsets.all(15),
// // // //         decoration: BoxDecoration(
// // // //           color: const Color(0xFFE5E6E8),
// // // //           borderRadius: BorderRadius.circular(20),
// // // //         ),
// // // //         child: CustomNetworkImage(
// // // //           imageUrl: product.images?.safeElementAt(0)?.url ?? '',
// // // //           fit: BoxFit.scaleDown,
// // // //           scale: 3.0,
// // // //         ),
// // // //       ),
// // // //       footer: Padding(
// // // //         padding: const EdgeInsets.all(8.0),
// // // //         child: Container(
// // // //           padding: const EdgeInsets.all(10),
// // // //           decoration: const BoxDecoration(
// // // //             color: Colors.white,
// // // //             borderRadius: BorderRadius.only(
// // // //               bottomLeft: Radius.circular(15),
// // // //               bottomRight: Radius.circular(15),
// // // //             ),
// // // //           ),
// // // //           child: Column(
// // // //             mainAxisSize: MainAxisSize.min,
// // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // //             children: [
// // // //               FittedBox(
// // // //                 child: Text(
// // // //                   product.name ?? '',
// // // //                   overflow: TextOverflow.ellipsis,
// // // //                   maxLines: 1,
// // // //                   style: const TextStyle(
// // // //                     fontWeight: FontWeight.w500,
// // // //                     color: Colors.black,
// // // //                   ),
// // // //                 ),
// // // //               ),
// // // //               const SizedBox(height: 5),
// // // //               Row(
// // // //                 children: [
// // // //                   Text(
// // // //                     product.offerPrice != null && product.offerPrice != 0
// // // //                         ? "₹${product.offerPrice}"
// // // //                         : "₹${product.price}",
// // // //                     style: Theme.of(context).textTheme.headlineMedium,
// // // //                   ),
// // // //                   const SizedBox(width: 6),
// // // //                   if (product.offerPrice != null &&
// // // //                       product.offerPrice != product.price)
// // // //                     Text(
// // // //                       "₹${product.price}",
// // // //                       style: const TextStyle(
// // // //                         decoration: TextDecoration.lineThrough,
// // // //                         color: Colors.grey,
// // // //                         fontWeight: FontWeight.w500,
// // // //                       ),
// // // //                     ),
// // // //                 ],
// // // //               ),
// // // //               const SizedBox(height: 8),
// // // //               _cartCount == 0
// // // //                 ? SizedBox(
// // // //                     width: double.infinity,
// // // //                     child: ElevatedButton(
// // // //                       onPressed: (product.quantity ?? 0) > 0 ? _addToCart : null,
// // // //                       child: const Text("Add to Cart"),
// // // //                     ),
// // // //                   )
// // // //                 : Row(
// // // //                     children: [
// // // //                       IconButton(
// // // //                         icon: const Icon(Icons.remove),
// // // //                         onPressed: _decrement,
// // // //                       ),
// // // //                       Text(
// // // //                         '$_cartCount',
// // // //                         style: Theme.of(context).textTheme.headlineSmall,
// // // //                       ),
// // // //                       IconButton(
// // // //                         icon: const Icon(Icons.add),
// // // //                         onPressed: _increment,
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //             ],
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // // import 'package:client_app/screen/product_details_screen/provider/product_detail_provider.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:provider/provider.dart';

// // // import '../models/product.dart';
// // // import '../screen/product_favorite_screen/provider/favorite_provider.dart';
// // // import '../utility/extensions.dart';
// // // import '../utility/utility_extention.dart';
// // // import 'custom_network_image.dart';
// // // // adjust import as needed

// // // class ProductGridTile extends StatelessWidget {
// // //   final Product product;
// // //   final int index;
// // //   final bool isPriceOff;

// // //   const ProductGridTile({
// // //     super.key,
// // //     required this.product,
// // //     required this.index,
// // //     required this.isPriceOff,
// // //   });

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final discountPercentage = context.dataProvider.calculateDiscountPercentage(
// // //       product.price ?? 0,
// // //       product.offerPrice ?? 0,
// // //     );

// // //     return GridTile(
// // //       header: Padding(
// // //         padding: const EdgeInsets.all(10.0),
// // //         child: Row(
// // //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //           children: [
// // //             if (discountPercentage != 0)
// // //               Container(
// // //                 decoration: BoxDecoration(
// // //                   borderRadius: BorderRadius.circular(30),
// // //                   color: Colors.white,
// // //                 ),
// // //                 width: 60,
// // //                 height: 30,
// // //                 alignment: Alignment.center,
// // //                 child: Text("OFF ${discountPercentage.toInt()}%"),
// // //               ),
// // //             Consumer<FavoriteProvider>(
// // //               builder: (context, fav, _) {
// // //                 final isFav = fav.checkIsItemFavorite(product.sId ?? '');
// // //                 return IconButton(
// // //                   icon: Icon(
// // //                     Icons.favorite,
// // //                     size: 28,
// // //                     color: isFav ? Colors.red : const Color(0xFFA6A3A0),
// // //                   ),
// // //                   onPressed: () => context
// // //                       .read<FavoriteProvider>()
// // //                       .updateToFavoriteList(product.sId ?? ''),
// // //                 );
// // //               },
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //       child: Container(
// // //         padding: const EdgeInsets.all(15),
// // //         decoration: BoxDecoration(
// // //           color: const Color(0xFFE5E6E8),
// // //           borderRadius: BorderRadius.circular(20),
// // //         ),
// // //         child: CustomNetworkImage(
// // //           imageUrl: product.images?.safeElementAt(0)?.url ?? '',
// // //           fit: BoxFit.scaleDown,
// // //           scale: 3.0,
// // //         ),
// // //       ),
// // //       footer: Padding(
// // //         padding: const EdgeInsets.all(8.0),
// // //         child: Container(
// // //           padding: const EdgeInsets.all(10),
// // //           decoration: const BoxDecoration(
// // //             color: Colors.white,
// // //             borderRadius: BorderRadius.only(
// // //               bottomLeft: Radius.circular(15),
// // //               bottomRight: Radius.circular(15),
// // //             ),
// // //           ),
// // //           child: Column(
// // //             mainAxisSize: MainAxisSize.min,
// // //             crossAxisAlignment: CrossAxisAlignment.start,
// // //             children: [
// // //               FittedBox(
// // //                 child: Text(
// // //                   product.name ?? '',
// // //                   overflow: TextOverflow.ellipsis,
// // //                   maxLines: 1,
// // //                   style: const TextStyle(
// // //                     fontWeight: FontWeight.w500,
// // //                     color: Colors.black,
// // //                   ),
// // //                 ),
// // //               ),
// // //               const SizedBox(height: 5),
// // //               Row(
// // //                 children: [
// // //                   Text(
// // //                     product.offerPrice != null &&
// // //                             product.offerPrice != product.price
// // //                         ? "₹${product.offerPrice}"
// // //                         : "₹${product.price}",
// // //                     style: Theme.of(context).textTheme.headlineMedium,
// // //                   ),
// // //                   const SizedBox(width: 6),
// // //                   if (product.offerPrice != null &&
// // //                       product.offerPrice != product.price)
// // //                     Text(
// // //                       "₹${product.price}",
// // //                       style: const TextStyle(
// // //                         decoration: TextDecoration.lineThrough,
// // //                         color: Colors.grey,
// // //                         fontWeight: FontWeight.w500,
// // //                       ),
// // //                     ),
// // //                 ],
// // //               ),
// // //               const SizedBox(height: 8),

// // //               //  Cart Counter / Button Area
// // //               Consumer<ProductDetailProvider>(
// // //                 builder: (context, proDetail, _) {
// // //                   final count = proDetail.getQuantity(product);

// // //                   return count == 0
// // //                       ? SizedBox(
// // //                           width: double.infinity,

// // //                           child: ElevatedButton(
// // //                             onPressed: () => proDetail.addToCart(product),
// // //                             child: const Text("Add to Cart"),
// // //                           ),
// // //                         )
// // //                       : Row(
// // //                           mainAxisAlignment: MainAxisAlignment.center,
// // //                           children: [
// // //                             ColoredBox(
// // //                                 color: const Color.fromARGB(255, 14, 99, 169)),
// // //                             IconButton(
// // //                               icon: const Icon(
// // //                                 Icons.remove_circle_outline,
// // //                                 color: Colors.orange,
// // //                               ),
// // //                               onPressed: () =>
// // //                                   proDetail.decrementQuantity(product),
// // //                             ),
// // //                             Text(
// // //                               '$count',
// // //                               selectionColor: Colors.black,
// // //                               style: Theme.of(context).textTheme.headlineSmall,
// // //                             ),
// // //                             IconButton(
// // //                               icon: const Icon(
// // //                                 Icons.add_circle_outline,
// // //                                 color: Colors.orange,
// // //                               ),
// // //                               onPressed: () =>
// // //                                   proDetail.incrementQuantity(product),
// // //                             ),
// // //                           ],
// // //                         );
// // //                 },
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // ... [imports as before]
// // import 'package:client_app/screen/product_details_screen/provider/product_detail_provider.dart';
// // import 'package:client_app/widget/custom_network_image.dart';
// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';

// // import '../models/product.dart';
// // import '../screen/product_favorite_screen/provider/favorite_provider.dart';
// // import '../utility/extensions.dart';
// // import '../utility/utility_extention.dart';

// // class ProductGridTile extends StatelessWidget {
// //   final Product product;
// //   final int index;
// //   final bool isPriceOff;

// //   const ProductGridTile({
// //     super.key,
// //     required this.product,
// //     required this.index,
// //     required this.isPriceOff,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     final discountPercentage = context.dataProvider.calculateDiscountPercentage(
// //       product.price ?? 0,
// //       product.offerPrice ?? 0,
// //     );

// //     return GridTile(
// //       header: Padding(
// //         padding: const EdgeInsets.all(10.0),
// //         child: Row(
// //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //           children: [
// //             if (discountPercentage != 0)
// //               Container(
// //                 decoration: BoxDecoration(
// //                   borderRadius: BorderRadius.circular(30),
// //                   color: Colors.white,
// //                 ),
// //                 width: 60,
// //                 height: 30,
// //                 alignment: Alignment.center,
// //                 child: Text("OFF ${discountPercentage.toInt()}%"),
// //               ),
// //             Consumer<FavoriteProvider>(
// //               builder: (context, fav, _) {
// //                 final isFav = fav.checkIsItemFavorite(product.sId ?? '');
// //                 return IconButton(
// //                   icon: Icon(
// //                     Icons.favorite,
// //                     size: 28,
// //                     color: isFav ? Colors.red : const Color(0xFFA6A3A0),
// //                   ),
// //                   onPressed: () => context
// //                       .read<FavoriteProvider>()
// //                       .updateToFavoriteList(product.sId ?? ''),
// //                 );
// //               },
// //             ),
// //           ],
// //         ),
// //       ),
// //       child: Container(
// //         padding: const EdgeInsets.all(15),
// //         decoration: BoxDecoration(
// //           color: const Color(0xFFE5E6E8),
// //           borderRadius: BorderRadius.circular(20),
// //         ),
// //         child: CustomNetworkImage(
// //           imageUrl: product.images?.safeElementAt(0)?.url ?? '',
// //           fit: BoxFit.scaleDown,
// //           scale: 3.0,
// //         ),
// //       ),
// //       footer: Padding(
// //         padding: const EdgeInsets.all(8.0),
// //         child: Container(
// //           padding: const EdgeInsets.all(10),
// //           decoration: const BoxDecoration(
// //             color: Colors.white,
// //             borderRadius: BorderRadius.only(
// //               bottomLeft: Radius.circular(15),
// //               bottomRight: Radius.circular(15),
// //             ),
// //           ),
// //           child: Column(
// //             mainAxisSize: MainAxisSize.min,
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               FittedBox(
// //                 child: Text(
// //                   product.name ?? '',
// //                   overflow: TextOverflow.ellipsis,
// //                   maxLines: 1,
// //                   style: const TextStyle(
// //                     fontWeight: FontWeight.w500,
// //                     color: Colors.black,
// //                   ),
// //                 ),
// //               ),
// //               const SizedBox(height: 5),
// //               Row(
// //                 children: [
// //                   Text(
// //                     product.offerPrice != null &&
// //                             product.offerPrice != product.price
// //                         ? "₹${product.offerPrice}"
// //                         : "₹${product.price}",
// //                     style: Theme.of(context).textTheme.headlineMedium,
// //                   ),
// //                   const SizedBox(width: 6),
// //                   if (product.offerPrice != null &&
// //                       product.offerPrice != product.price)
// //                     Text(
// //                       "₹${product.price}",
// //                       style: const TextStyle(
// //                         decoration: TextDecoration.lineThrough,
// //                         color: Colors.grey,
// //                         fontWeight: FontWeight.w500,
// //                       ),
// //                     ),
// //                 ],
// //               ),
// //               const SizedBox(height: 8),
// //               Consumer<ProductDetailProvider>(
// //                 builder: (context, proDetail, _) {
// //                   final count = proDetail.getQuantity(product);

// //                   return count == 0
// //                       ? SizedBox(
// //                           width: double.infinity,
// //                           child: ElevatedButton(
// //                             style: ButtonStyle(
// //                               backgroundColor:
// //                                   MaterialStateProperty.resolveWith<Color?>(
// //                                       (states) {
// //                                 if (states.contains(MaterialState.pressed)) {
// //                                   return Colors.lightBlue; // after click state
// //                                 }
// //                                 return Colors.purple; // default state
// //                               }),
// //                             ),
// //                             onPressed: () => proDetail.addToCart(product),
// //                             child: const Text("Add to Cart"),
// //                           ),
// //                         )
// //                       : Row(
// //                           mainAxisAlignment: MainAxisAlignment.center,
// //                           children: [
// //                             IconButton(
// //                               icon: const Icon(Icons.remove_circle_outline),
// //                               onPressed: () =>
// //                                   proDetail.decrementQuantity(product),
// //                             ),
// //                             Text(
// //                               '$count',
// //                               style: Theme.of(context).textTheme.headlineSmall,
// //                             ),
// //                             IconButton(
// //                               icon: const Icon(Icons.add_circle_outline),
// //                               onPressed: () =>
// //                                   proDetail.incrementQuantity(product),
// //                             ),
// //                           ],
// //                         );
// //                 },
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:client_app/screen/product_details_screen/provider/product_detail_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../models/product.dart';
// import 'custom_network_image.dart';
// //import '../screen/product_detail_screen/provider/product_detail_provider.dart';
// import '../screen/product_favorite_screen/provider/favorite_provider.dart';
// import '../utility/extensions.dart';
// import '../utility/utility_extention.dart';

// class ProductGridTile extends StatelessWidget {
//   final Product product;
//   final int index;
//   final bool isPriceOff;

//   const ProductGridTile({
//     super.key,
//     required this.product,
//     required this.index,
//     required this.isPriceOff,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final discountPercentage = context.dataProvider.calculateDiscountPercentage(
//       product.price ?? 0,
//       product.offerPrice ?? 0,
//     );

//     return GridTile(
//       header: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             if (discountPercentage != 0)
//               Container(
//                 width: 60,
//                 height: 30,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                   color: Colors.white,
//                 ),
//                 alignment: Alignment.center,
//                 child: Text(
//                   "OFF ${discountPercentage.toInt()}%",
//                   style: const TextStyle(fontWeight: FontWeight.w600),
//                 ),
//               ),
//             Consumer<FavoriteProvider>(
//               builder: (context, favProv, _) {
//                 final isFav = favProv.checkIsItemFavorite(product.sId ?? '');
//                 return IconButton(
//                   icon: Icon(
//                     Icons.favorite,
//                     size: 28,
//                     color: isFav ? Colors.red : const Color(0xFFA6A3A0),
//                   ),
//                   onPressed: () => context
//                       .read<FavoriteProvider>()
//                       .updateToFavoriteList(product.sId ?? ''),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       footer: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           padding: const EdgeInsets.all(10),
//           decoration: const BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               FittedBox(
//                 child: Text(
//                   product.name ?? '',
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.w500, color: Colors.black),
//                 ),
//               ),
//               const SizedBox(height: 5),
//               Row(
//                 children: [
//                   Text(
//                     product.offerPrice != null &&
//                             product.offerPrice != product.price
//                         ? "₹${product.offerPrice}"
//                         : "₹${product.price}",
//                     style: Theme.of(context).textTheme.headlineMedium,
//                   ),
//                   const SizedBox(width: 6),
//                   if (product.offerPrice != null &&
//                       product.offerPrice != product.price)
//                     Text(
//                       "₹${product.price}",
//                       style: const TextStyle(
//                         decoration: TextDecoration.lineThrough,
//                         color: Colors.grey,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                 ],
//               ),
//               const SizedBox(height: 8),
//               Consumer<ProductDetailProvider>(
//                 builder: (context, proDetail, _) {
//                   final count = proDetail.getQuantity(product);
//                   final isSelected = count > 0;

//                   return SizedBox(
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: isSelected
//                             ? const Color.fromARGB(237, 85, 151, 181)
//                             : Colors.purple,
//                         foregroundColor: Colors.white,
//                       ),
//                       onPressed: () {
//                         if (isSelected) {
//                           proDetail.decrementQuantity(product);
//                         } else {
//                           proDetail.addToCart(product);
//                         }
//                       },
//                       child: isSelected
//                           ? Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 IconButton(
//                                   icon: const Icon(
//                                     Icons.remove_circle_outline,
//                                     size: 25,
//                                     color: Colors.deepOrange,
//                                   ),
//                                   onPressed: () =>
//                                       proDetail.decrementQuantity(product),
//                                 ),
//                                 AnimatedSwitcher(
//                                   duration: const Duration(milliseconds: 300),
//                                   transitionBuilder: (Widget child,
//                                       Animation<double> animation) {
//                                     return ScaleTransition(
//                                       scale: animation,
//                                       child: child,
//                                     );
//                                   },
//                                   child: Text('$count',
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .headlineSmall
//                                           ?.copyWith(
//                                               fontSize: 20,
//                                               color: Colors.black,
//                                               fontWeight: FontWeight.bold)),
//                                 ),
//                                 IconButton(
//                                   icon: const Icon(Icons.add_circle_outline,
//                                       size: 25, color: Colors.deepOrange),
//                                   onPressed: () =>
//                                       proDetail.incrementQuantity(product),
//                                 ),
//                               ],
//                             )
//                           : const Text("Add to Cart"),
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//       child: Container(
//         padding: const EdgeInsets.all(15),
//         decoration: BoxDecoration(
//           color: const Color(0xFFE5E6E8),
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: CustomNetworkImage(
//           imageUrl: product.images?.safeElementAt(0)?.url ?? '',
//           fit: BoxFit.scaleDown,
//           scale: 3.0,
//         ),
//       ),
//     );
//   }
// }
import 'package:client_app/screen/product_details_screen/provider/product_detail_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart';

import '../models/product.dart';
import '../screen/product_favorite_screen/provider/favorite_provider.dart';
import '../utility/extensions.dart';
import '../utility/utility_extention.dart';
import 'custom_network_image.dart';
//import '../screen/product_detail_screen/provider/product_detail_provider.dart';

class ProductGridTile extends StatelessWidget {
  final Product product;
  final int index;
  final bool isPriceOff;

  const ProductGridTile({
    super.key,
    required this.product,
    required this.index,
    required this.isPriceOff,
  });

  @override
  Widget build(BuildContext context) {
    final discountPercentage = context.dataProvider.calculateDiscountPercentage(
      product.price ?? 0,
      product.offerPrice ?? 0,
    );

    return GridTile(
      header: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (discountPercentage != 0)
              Container(
                width: 60,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                child: Text("OFF ${discountPercentage.toInt()}%"),
              ),
            Consumer<FavoriteProvider>(
              builder: (context, favProv, _) {
                final isFav = favProv.checkIsItemFavorite(product.sId ?? '');
                return IconButton(
                  icon: Icon(
                    Icons.favorite,
                    size: 28,
                    color: isFav ? Colors.red : const Color(0xFFA6A3A0),
                  ),
                  onPressed: () => context
                      .read<FavoriteProvider>()
                      .updateToFavoriteList(product.sId ?? ''),
                );
              },
            ),
          ],
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color(0xFFE5E6E8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: CustomNetworkImage(
          imageUrl: product.images?.safeElementAt(0)?.url ?? '',
          fit: BoxFit.scaleDown,
          scale: 3.0,
        ),
      ),
      footer: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: Text(
                  product.name ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.black),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    product.offerPrice != null &&
                            product.offerPrice != product.price
                        ? "₹${product.offerPrice}"
                        : "₹${product.price}",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(width: 6),
                  if (product.offerPrice != null &&
                      product.offerPrice != product.price)
                    Text(
                      "₹${product.price}",
                      style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 8),
              Consumer<ProductDetailProvider>(
                builder: (context, proDetail, _) {
                  final count = proDetail.getQuantity(product);
                  final isSelected = count > 0;

                  return SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            isSelected ? Colors.lightBlue : Colors.purple,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        if (isSelected) {
                          proDetail.decrementQuantity(product);
                        } else {
                          proDetail.addToCart(product);
                        }
                      },
                      child: isSelected
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.remove,
                                      color: Colors.white),
                                  onPressed: () =>
                                      proDetail.decrementQuantity(product),
                                ),
                                AnimatedFlipCounter(
                                  value: count.toDouble(),
                                  duration: const Duration(milliseconds: 500),
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.add,
                                      color: Colors.white),
                                  onPressed: () =>
                                      proDetail.incrementQuantity(product),
                                ),
                              ],
                            )
                          : const Text("Add to Cart"),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
