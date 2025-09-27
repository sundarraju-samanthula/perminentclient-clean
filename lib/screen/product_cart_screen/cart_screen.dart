// // import 'provider/cart_provider.dart';
// // import '../../utility/extensions.dart';
// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import '../../utility/animation/animated_switcher_wrapper.dart';
// // import 'components/buy_now_bottom_sheet.dart';
// // import 'components/cart_list_section.dart';
// // import 'components/empty_cart.dart';

// // class CartScreen extends StatelessWidget {
// //   const CartScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     Future.delayed(Duration.zero, () {
// //       context.cartProvider.getCartItems();
// //     });
// //     return Container(
// //       child: Scaffold(
// //         // backgroundColor: Colors.transparent,
// //         appBar: AppBar(
// //           title: const Text(
// //             "My Cart",
// //             style: TextStyle(
// //                 fontSize: 24,
// //                 fontWeight: FontWeight.bold,
// //                 color: Color.fromARGB(255, 7, 62, 107)),
// //           ),
// //           // backgroundColor: Colors.transparent,
// //           elevation: 0,
// //         ),
// //         body: Consumer<CartProvider>(
// //           builder: (context, cartProvider, child) {
// //             return Column(
// //               crossAxisAlignment: CrossAxisAlignment.center,
// //               children: [
// //                 cartProvider.myCartItems.isEmpty
// //                     ? const EmptyCart()
// //                     : Consumer<CartProvider>(
// //                         builder: (context, cartProvider, child) {
// //                           return CartListSection(
// //                               cartProducts: cartProvider.myCartItems);
// //                         },
// //                       ),

// //                 Container(
// //                   margin: const EdgeInsets.only(bottom: 15),
// //                   color: Colors.grey,
// //                   padding: const EdgeInsets.symmetric(horizontal: 30),
// //                   child: Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     children: [
// //                       const Text(
// //                         "Total",
// //                         style: TextStyle(
// //                             fontSize: 22, fontWeight: FontWeight.w400),
// //                       ),
// //                       AnimatedSwitcherWrapper(
// //                         child: Text(
// //                           "${context.cartProvider.getCartSubTotal()}/-",
// //                           // key: ValueKey<double>(cartProvider.getCartSubTotal()),
// //                           style: const TextStyle(
// //                             fontSize: 25,
// //                             fontWeight: FontWeight.w900,
// //                             color: Colors.black,
// //                           ),
// //                         ),
// //                       ),
// //                       const Text(
// //                         "delivery fees",
// //                         style: TextStyle(
// //                             fontSize: 20, fontWeight: FontWeight.w400),
// //                       ),
// //                       AnimatedSwitcherWrapper(
// //                         child: Text(
// //                           "0/-",
// //                           // key: ValueKey<double>(cartProvider.getCartSubTotal()),
// //                           style: const TextStyle(
// //                             fontSize: 20,
// //                             fontWeight: FontWeight.w300,
// //                             color: Colors.brown,
// //                           ),
// //                         ),
// //                       ),
// //                       const Text(
// //                         "grand total",
// //                         style: TextStyle(
// //                             fontSize: 22, fontWeight: FontWeight.w400),
// //                       ),
// //                       AnimatedSwitcherWrapper(
// //                         child: Text(
// //                           "${context.cartProvider.getCartSubTotal()}/-",
// //                           // key: ValueKey<double>(cartProvider.getCartSubTotal()),
// //                           style: const TextStyle(
// //                             fontSize: 25,
// //                             fontWeight: FontWeight.w900,
// //                             color: Color.fromARGB(255, 7, 62, 107),
// //                           ),
// //                         ),
// //                       )
// //                     ],
// //                   ),
// //                 ),
// //                 //? buy now button
// //                 SizedBox(
// //                   width: double.infinity,
// //                   child: Padding(
// //                     padding:
// //                         const EdgeInsets.only(left: 30, right: 30, bottom: 20),
// //                     child: ElevatedButton(
// //                       style: ElevatedButton.styleFrom(
// //                           padding: const EdgeInsets.all(20)),
// //                       onPressed: context.cartProvider.myCartItems.isEmpty
// //                           ? null
// //                           : () {
// //                               showCustomBottomSheet(context);
// //                             },
// //                       child: const Text("Buy Now",
// //                           style: TextStyle(color: Colors.white)),
// //                     ),
// //                   ),
// //                 )
// //               ],
// //             );
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'provider/cart_provider.dart';
// import '../../utility/extensions.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../../utility/animation/animated_switcher_wrapper.dart';
// import 'components/buy_now_bottom_sheet.dart';
// import 'components/cart_list_section.dart';
// import 'components/empty_cart.dart';

// class CartScreen extends StatelessWidget {
//   const CartScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Ensure we fetch cart items once at build (after frame)
//     Future.microtask(() {
//       context.cartProvider.getCartItems();
//     });

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "My Cart",
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Color.fromARGB(255, 7, 62, 107),
//           ),
//         ),
//         elevation: 0,
//         backgroundColor: Colors.transparent, // you may set as needed
//         iconTheme: const IconThemeData(color: Colors.black),
//       ),
//       body: Consumer<CartProvider>(
//         builder: (context, cartProvider, child) {
//           final cartItems = cartProvider.myCartItems;

//           return Column(
//             children: [
//               // Cart contents or empty placeholder
//               if (cartItems.isEmpty)
//                 const Expanded(child: EmptyCart())
//               else
//                 Expanded(
//                   child: CartListSection(cartProducts: cartItems),
//                 ),

//               // Billing summary
//               const BillingSummary(),

//               // “Buy Now” button
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
//                 child: SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       padding: const EdgeInsets.symmetric(vertical: 16),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                     onPressed: cartItems.isEmpty
//                         ? null
//                         : () => showCustomBottomSheet(context),
//                     child: const Text(
//                       "Buy Now",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//       backgroundColor: const Color.fromARGB(172, 107, 205, 104),
//     );
//   }
// }

// class BillingSummary extends StatelessWidget {
//   const BillingSummary({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final cartProvider = context.cartProvider;
//     final double subtotal = cartProvider.getCartSubTotal().toDouble();
//     const double deliveryFee = 0.0;
//     final double grandTotal = subtotal + deliveryFee;

//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Color.fromARGB(147, 63, 166, 239),
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 8,
//             offset: const Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           _buildRowItem(
//             label: "Subtotal",
//             value: "${subtotal.toStringAsFixed(2)}/-",
//           ),
//           const SizedBox(height: 8),
//           _buildRowItem(
//             label: "Delivery Fee",
//             value: "${deliveryFee.toStringAsFixed(2)}/-",
//           ),
//           const Divider(height: 24, thickness: 1),
//           _buildRowItem(
//             label: "Grand Total",
//             value: "${grandTotal.toStringAsFixed(2)}/-",
//             isTotal: true,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildRowItem({
//     required String label,
//     required String value,
//     bool isTotal = false,
//   }) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           label,
//           style: TextStyle(
//             fontSize: isTotal ? 18 : 16,
//             fontWeight: isTotal ? FontWeight.w600 : FontWeight.normal,
//           ),
//         ),
//         // Wrap the value in AnimatedSwitcherWrapper if you want the animation
//         AnimatedSwitcherWrapper(
//           child: Text(
//             value,
//             style: TextStyle(
//               fontSize: isTotal ? 20 : 16,
//               fontWeight: isTotal ? FontWeight.w900 : FontWeight.w500,
//               color: isTotal
//                   ? const Color.fromARGB(255, 7, 62, 107)
//                   : Colors.black87,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// // }
import 'package:client_app/screen/product_cart_screen/components/empty_cart.dart';

import 'provider/cart_provider.dart';
import '../../utility/extensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../utility/animation/animated_switcher_wrapper.dart';
import 'components/buy_now_bottom_sheet.dart';
import 'components/cart_list_section.dart';

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../../utility/animation/animated_switcher_wrapper.dart';
// import 'provider/cart_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.microtask(() {
      context.cartProvider.getCartItems();
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Cart",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 7, 62, 107),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Consumer<CartProvider>(
        builder: (context, cartProvider, child) {
          final items = cartProvider.myCartItems;
          return Column(
            children: [
              if (items.isEmpty)
                const Expanded(child: EmptyCart())
              else
                Expanded(
                  child: Column(
                    children: [
                      CartListSection(cartProducts: items),
                      AnimatedBillingSummary(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: items.isEmpty
                                ? null
                                : () => showCustomBottomSheet(context),
                            child: const Text(
                              "Buy Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              // Animated billing section
              // AnimatedBillingSummary(),

              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              //   child: SizedBox(
              //     width: double.infinity,
              //     child: ElevatedButton(
              //       style: ElevatedButton.styleFrom(
              //         padding: const EdgeInsets.symmetric(vertical: 16),
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(8),
              //         ),
              //       ),
              //       onPressed: items.isEmpty
              //           ? null
              //           : () => showCustomBottomSheet(context),
              //       child: const Text(
              //         "Buy Now",
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 18,
              //             fontWeight: FontWeight.bold),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          );
        },
      ),
      backgroundColor: const Color.fromARGB(163, 116, 182, 202),
    );
  }
}

/// A widget that animates itself slightly (scale/bounce) when the totals change.
class AnimatedBillingSummary extends StatefulWidget {
  const AnimatedBillingSummary({super.key});

  @override
  State<AnimatedBillingSummary> createState() => _AnimatedBillingSummaryState();
}

class _AnimatedBillingSummaryState extends State<AnimatedBillingSummary>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    // Scale from 0.95 → 1.0 → 0.98 → 1.0 (a small bounce)
    _scaleAnim = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0.95, end: 1.0), weight: 50),
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 0.98), weight: 30),
      TweenSequenceItem(tween: Tween(begin: 0.98, end: 1.0), weight: 20),
    ]).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant AnimatedBillingSummary oldWidget) {
    super.didUpdateWidget(oldWidget);
    // we might trigger animation externally, but we also can trigger on build
  }

  @override
  Widget build(BuildContext context) {
    final cartProvider = context.cartProvider;
    final double subtotal = cartProvider.getCartSubTotal().toDouble();
    const double deliveryFee = 0.0;
    final double grandTotal = subtotal + deliveryFee;

    // whenever subtotal changes, we restart the scale animation
    // So we schedule it after frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.forward(from: 0.0);
    });

    return ScaleTransition(
      scale: _scaleAnim,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(158, 126, 223, 232),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            _buildRowItem(
              label: "Subtotal",
              value: "${subtotal.toStringAsFixed(2)}/-",
            ),
            const SizedBox(height: 8),
            _buildRowItem(
              label: "Delivery Fee",
              value: "${deliveryFee.toStringAsFixed(2)}/-",
            ),
            const Divider(height: 24, thickness: 1),
            _buildRowItem(
              label: "Grand Total",
              value: "${grandTotal.toStringAsFixed(2)}/-",
              isTotal: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRowItem({
    required String label,
    required String value,
    bool isTotal = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: isTotal ? 18 : 16,
            fontWeight: isTotal ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
        AnimatedSwitcherWrapper(
          child: Text(
            value,
            key: ValueKey<String>(value),
            style: TextStyle(
              fontSize: isTotal ? 20 : 16,
              fontWeight: isTotal ? FontWeight.w900 : FontWeight.w500,
              color: isTotal
                  ? const Color.fromARGB(255, 7, 62, 107)
                  : Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}
