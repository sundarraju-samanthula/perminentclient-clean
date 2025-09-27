// // // import 'package:client_app/utility/extensions.dart';

// // // import '../../../utility/utility_extention.dart';

// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_cart/model/cart_model.dart';

// // // class CartListSection extends StatelessWidget {
// // //   final List<CartModel> cartProducts;

// // //   const CartListSection({
// // //     super.key,
// // //     required this.cartProducts,
// // //   });

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Expanded(
// // //       child: SingleChildScrollView(
// // //         child: Column(
// // //           children: cartProducts.mapWithIndex((index, _) {
// // //             CartModel cartItem = cartProducts[index];
// // //             return Container(
// // //               width: double.infinity,
// // //               margin: const EdgeInsets.all(15),
// // //               padding: const EdgeInsets.all(15),
// // //               decoration: BoxDecoration(
// // //                 color: Colors.grey[200]?.withOpacity(0.6),
// // //                 borderRadius: BorderRadius.circular(10),
// // //               ),
// // //               child: Wrap(
// // //                 spacing: 10,
// // //                 runSpacing: 10,
// // //                 crossAxisAlignment: WrapCrossAlignment.center,
// // //                 alignment: WrapAlignment.spaceEvenly,
// // //                 children: [
// // //                   Container(
// // //                     padding: const EdgeInsets.all(5),
// // //                     decoration: BoxDecoration(
// // //                       borderRadius: BorderRadius.circular(10),
// // //                       color: Colors.primaries[index],
// // //                     ),
// // //                     child: ClipRRect(
// // //                       borderRadius: const BorderRadius.all(Radius.circular(20)),
// // //                       child: ClipRRect(
// // //                         borderRadius: BorderRadius.circular(10),
// // //                         child: Padding(
// // //                           padding: const EdgeInsets.all(5),
// // //                           child: Image.network(
// // //                             cartItem.productImages.safeElementAt(0) ?? '',
// // //                             width: 100,
// // //                             height: 90,
// // //                             loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
// // //                               if (loadingProgress == null) return child;
// // //                               return Center(
// // //                                 child: CircularProgressIndicator(
// // //                                   value: loadingProgress.expectedTotalBytes != null
// // //                                       ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
// // //                                       : null, // Progress indicator.
// // //                                 ),
// // //                               );
// // //                             },
// // //                             errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
// // //                               return const Icon(Icons.error, color: Colors.red);
// // //                             },
// // //                           ),
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                   Column(
// // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // //                     children: [
// // //                       Text(
// // //                         cartItem.productName,
// // //                         maxLines: 2,
// // //                         overflow: TextOverflow.ellipsis,
// // //                         style: const TextStyle(
// // //                           fontWeight: FontWeight.w600,
// // //                           fontSize: 15,
// // //                         ),
// // //                       ),
// // //                       const SizedBox(height: 5),
// // //                       Text(
// // //                         '${cartItem.quantity}',
// // //                         style: TextStyle(
// // //                           color: Colors.black.withOpacity(0.5),
// // //                           fontWeight: FontWeight.w400,
// // //                         ),
// // //                       ),
// // //                       const SizedBox(height: 5),
// // //                       Text(
// // //                         "\$${cartItem.variants.safeElementAt(0)?.price}",
// // //                         style: const TextStyle(
// // //                           fontWeight: FontWeight.w900,
// // //                           fontSize: 23,
// // //                         ),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                   // Add and remove cart item
// // //                   Container(
// // //                     decoration: BoxDecoration(
// // //                       color: Colors.white,
// // //                       borderRadius: BorderRadius.circular(10),
// // //                     ),
// // //                     child: Row(
// // //                       mainAxisAlignment: MainAxisAlignment.end,
// // //                       mainAxisSize: MainAxisSize.min,
// // //                       children: [
// // //                         IconButton(
// // //                           splashRadius: 10.0,
// // //                           onPressed: () {
// // //                             context.cartProvider.updateCart(cartItem, -1);
// // //                           },
// // //                           icon: const Icon(
// // //                             Icons.remove,
// // //                             color: const Color.fromARGB(255, 7, 62, 107),
// // //                           ),
// // //                         ),
// // //                         Text(
// // //                           '${cartItem.quantity}',
// // //                           style: const TextStyle(
// // //                             fontSize: 18,
// // //                             fontWeight: FontWeight.w700,
// // //                           ),
// // //                         ),
// // //                         IconButton(
// // //                           splashRadius: 10.0,
// // //                           onPressed: () {
// // //                             context.cartProvider.updateCart(cartItem, 1);
// // //                           },
// // //                           icon: const Icon(Icons.add, color: const Color.fromARGB(255, 7, 62, 107),),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   )
// // //                 ],
// // //               ),
// // //             );
// // //           }).toList(),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:flutter_cart/model/cart_model.dart';
// // import 'package:provider/provider.dart';
// // //import '../../utility/extensions.dart';
// // import '../provider/cart_provider.dart';
// // import '../../../utility/utility_extention.dart';

// // class CartListSection extends StatelessWidget {
// //   final List<CartModel> cartProducts;

// //   const CartListSection({
// //     Key? key,
// //     required this.cartProducts,
// //   }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Expanded(
// //       child: ListView.builder(
// //         padding: const EdgeInsets.symmetric(vertical: 10),
// //         itemCount: cartProducts.length,
// //         itemBuilder: (ctx, index) {
// //           final cartItem = cartProducts[index];
// //           return _CartItemCard(cartItem: cartItem, index: index);
// //         },
// //       ),
// //     );
// //   }
// // }

// // class _CartItemCard extends StatelessWidget {
// //   final CartModel cartItem;
// //   final int index;

// //   const _CartItemCard({Key? key, required this.cartItem, required this.index})
// //       : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     final cartProv = context.read<CartProvider>();

// //     return Card(
// //       margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
// //       elevation: 4,
// //       shape: RoundedRectangleBorder(
// //         borderRadius: BorderRadius.circular(16),
// //       ),
// //       child: Container(
// //         height: 120,
// //         child: Row(
// //           children: [
// //             // Left image
// //             ClipRRect(
// //               borderRadius: const BorderRadius.only(
// //                   topLeft: Radius.circular(16),
// //                   bottomLeft: Radius.circular(16)),
// //               child: Container(
// //                 width: 100,
// //                 height: double.infinity,
// //                 color: Colors.grey[200],
// //                 child: cartItem.productImages.safeElementAt(0) != null &&
// //                         cartItem.productImages.safeElementAt(0) != ''
// //                     ? Image.network(
// //                         cartItem.productImages.safeElementAt(0)!,
// //                         fit: BoxFit.cover,
// //                       )
// //                     : Icon(Icons.image, size: 50, color: Colors.grey[400]),
// //               ),
// //             ),

// //             // Middle content: Title, rating etc (if any)
// //             Expanded(
// //               child: Padding(
// //                 padding:
// //                     const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Text(
// //                       cartItem.productName,
// //                       maxLines: 2,
// //                       overflow: TextOverflow.ellipsis,
// //                       style: const TextStyle(
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: 16,
// //                       ),
// //                     ),
// //                     const SizedBox(height: 6),
// //                     // If you have rating or subtitle
// //                     // Text('4.9 (541)', style: TextStyle(color: Colors.grey[600])),
// //                     const Spacer(),
// //                     // Could put other info here if needed
// //                   ],
// //                 ),
// //               ),
// //             ),

// //             // Right panel: price + quantity
// //             Container(
// //               width: 110,
// //               decoration: const BoxDecoration(
// //                 color: Color(0xFF2E7D32), // green panel color
// //                 borderRadius: BorderRadius.only(
// //                   topRight: Radius.circular(16),
// //                   bottomRight: Radius.circular(16),
// //                 ),
// //               ),
// //               padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Text(
// //                     '₹${cartItem.variants.safeElementAt(0)?.price ?? 0}',
// //                     style: const TextStyle(
// //                       color: Colors.white,
// //                       fontSize: 18,
// //                       fontWeight: FontWeight.bold,
// //                     ),
// //                   ),
// //                   const SizedBox(height: 8),
// //                   Row(
// //                     mainAxisAlignment: MainAxisAlignment.center,
// //                     children: [
// //                       GestureDetector(
// //                         onTap: () => cartProv.updateCart(cartItem, -1),
// //                         child: const Icon(Icons.remove_circle,
// //                             color: Colors.white, size: 24),
// //                       ),
// //                       const SizedBox(width: 8),
// //                       Text(
// //                         '${cartItem.quantity}',
// //                         style: const TextStyle(
// //                           color: Colors.white,
// //                           fontSize: 18,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                       const SizedBox(width: 8),
// //                       GestureDetector(
// //                         onTap: () => cartProv.updateCart(cartItem, 1),
// //                         child: const Icon(Icons.add_circle,
// //                             color: Colors.white, size: 24),
// //                       ),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:flutter_cart/model/cart_model.dart';
// import 'package:provider/provider.dart';
// import '../../../utility/utility_extention.dart';
// import '../provider/cart_provider.dart';

// class CartListSection extends StatelessWidget {
//   final List<CartModel> cartProducts;

//   const CartListSection({
//     Key? key,
//     required this.cartProducts,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: ListView.builder(
//         padding: const EdgeInsets.symmetric(vertical: 10),
//         itemCount: cartProducts.length,
//         itemBuilder: (ctx, index) {
//           final cartItem = cartProducts[index];
//           return _CartItemCard(cartItem: cartItem, index: index);
//         },
//       ),
//     );
//   }
// }

// class _CartItemCard extends StatefulWidget {
//   final CartModel cartItem;
//   final int index;

//   const _CartItemCard({Key? key, required this.cartItem, required this.index})
//       : super(key: key);

//   @override
//   State<_CartItemCard> createState() => _CartItemCardState();
// }

// class _CartItemCardState extends State<_CartItemCard>
//     with SingleTickerProviderStateMixin {
//   late final AnimationController _controller;
//   late final Animation<Offset> _slideAnimation;

//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 500),
//     );

//     // Slide in from left: begin with a negative dx
//     _slideAnimation = Tween<Offset>(
//       begin: const Offset(-1.0, 0), // fully off-screen left
//       end: Offset.zero,
//     ).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeOut),
//     );

//     // Optionally, delay based on index for staggered effect
//     Future.delayed(Duration(milliseconds: 100 * widget.index), () {
//       if (mounted) _controller.forward();
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final cartProv = context.read<CartProvider>();

//     return Card(
//       margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
//       elevation: 4,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: SizedBox(
//         height: 120,
//         child: Row(
//           children: [
//             // Wrap the image in SlideTransition
//             SlideTransition(
//               position: _slideAnimation,
//               child: ClipRRect(
//                 borderRadius: const BorderRadius.only(
//                   topLeft: Radius.circular(16),
//                   bottomLeft: Radius.circular(16),
//                 ),
//                 child: Container(
//                   width: 100,
//                   height: double.infinity,
//                   color: Colors.grey[200],
//                   child: widget.cartItem.productImages.safeElementAt(0) !=
//                               null &&
//                           widget.cartItem.productImages.safeElementAt(0) != ''
//                       ? Image.network(
//                           widget.cartItem.productImages.safeElementAt(0)!,
//                           fit: BoxFit.cover,
//                         )
//                       : const Icon(Icons.image, size: 50, color: Colors.grey),
//                 ),
//               ),
//             ),

//             // Middle: product name etc
//             Expanded(
//               child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       widget.cartItem.productName,
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                       style: const TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     // maybe rating or quantity text
//                     const Spacer(),
//                   ],
//                 ),
//               ),
//             ),

//             // Right panel: price + quantity
//             Container(
//               width: 110,
//               decoration: const BoxDecoration(
//                 color: Color(0xFF2E7D32), // adjust to your theme
//                 borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(16),
//                   bottomRight: Radius.circular(16),
//                 ),
//               ),
//               padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     '₹${widget.cartItem.variants.safeElementAt(0)?.price ?? 0}',
//                     style: const TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       GestureDetector(
//                         onTap: () => cartProv.updateCart(widget.cartItem, -1),
//                         child: const Icon(Icons.remove_circle,
//                             color: Colors.white, size: 24),
//                       ),
//                       const SizedBox(width: 8),
//                       Text(
//                         '${widget.cartItem.quantity}',
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(width: 8),
//                       GestureDetector(
//                         onTap: () => cartProv.updateCart(widget.cartItem, 1),
//                         child: const Icon(Icons.add_circle,
//                             color: Colors.white, size: 24),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_cart/model/cart_model.dart';
import 'package:provider/provider.dart';
import '../provider/cart_provider.dart';
import '../../../utility/utility_extention.dart';

class CartListSection extends StatelessWidget {
  final List<CartModel> cartProducts;

  const CartListSection({super.key, required this.cartProducts});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemCount: cartProducts.length,
        itemBuilder: (ctx, index) {
          final item = cartProducts[index];
          return _CartItemCard(item: item, index: index);
        },
      ),
    );
  }
}

class _CartItemCard extends StatefulWidget {
  final CartModel item;
  final int index;

  const _CartItemCard({required this.item, required this.index});

  @override
  State<_CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<_CartItemCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animController;
  late final Animation<Offset> _slideAnim;

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    // Slide from the left (-1.0 means one full width of the image container to the left)
    _slideAnim = Tween<Offset>(
      begin: const Offset(-1.2, 0), // starting slightly off-screen to the left
      end: Offset.zero, // final position
    ).animate(CurvedAnimation(parent: _animController, curve: Curves.easeOut));

    // Begin animation after a small delay for a stagger effect (optional)
    Future.delayed(Duration(milliseconds: 100 * widget.index), () {
      if (mounted) {
        _animController.forward();
      }
    });
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cartProv = context.read<CartProvider>();

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            // The image with slide transition; this will slide in and then stay
            SlideTransition(
              position: _slideAnim,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                child: Container(
                  width: 100,
                  height: double.infinity,
                  color: Colors.grey[200],
                  child: widget.item.productImages
                              .safeElementAt(0)
                              ?.isNotEmpty ==
                          true
                      ? Image.network(
                          widget.item.productImages.safeElementAt(0)!,
                          fit: BoxFit.cover,
                        )
                      : const Icon(Icons.image, size: 50, color: Colors.grey),
                ),
              ),
            ),

            // Spacer / middle section with title etc.
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.item.productName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 6),
                    // Other info like rating or shorter description if you have
                    const Spacer(),
                  ],
                ),
              ),
            ),

            // Right panel with price & quantity
            Container(
              width: 110,
              decoration: const BoxDecoration(
                color: Color(0xFF2E7D32), // Your green
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '₹${widget.item.variants.safeElementAt(0)?.price ?? 0}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => cartProv.updateCart(widget.item, -1),
                        child: const Icon(Icons.remove_circle,
                            color: Colors.white, size: 24),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${widget.item.quantity}',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: () => cartProv.updateCart(widget.item, 1),
                        child: const Icon(Icons.add_circle,
                            color: Colors.white, size: 24),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
