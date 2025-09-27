// import 'package:flutter/material.dart';

// class AnimatedSwitcherWrapper extends StatelessWidget {
//   final Widget child;

//   const AnimatedSwitcherWrapper({
//     super.key,
//     required this.child,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSwitcher(
//       duration: const Duration(milliseconds: 500),
//       transitionBuilder: (Widget child, Animation<double> animation) {
//         return ScaleTransition(scale: animation, child: child);
//       },
//       child: child,
//     );
//   }
// }
import 'package:flutter/material.dart';

class AnimatedSwitcherWrapper extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final AnimatedSwitcherTransitionBuilder? transitionBuilder;
  final Curve switchInCurve;
  final Curve switchOutCurve;

  const AnimatedSwitcherWrapper({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 500),
    this.transitionBuilder,
    this.switchInCurve = Curves.linear,
    this.switchOutCurve = Curves.linear,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: duration,
      switchInCurve: switchInCurve,
      switchOutCurve: switchOutCurve,
      transitionBuilder: transitionBuilder ??
          (Widget child, Animation<double> animation) {
            // Default transition: scale
            return ScaleTransition(scale: animation, child: child);
          },
      child: child,
    );
  }
}
