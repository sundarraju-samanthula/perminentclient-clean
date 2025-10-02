// // // import 'package:client_app/screen/home_screen.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:provider/provider.dart';
// // // import 'package:flutter_login/flutter_login.dart'; // LoginData & SignupData
// // // import '../login_screen/provider/user_provider.dart';
// // // //import '../../home_screen.dart';

// // // class LoginScreen extends StatefulWidget {
// // //   const LoginScreen({super.key});

// // //   @override
// // //   _FarmFreshAuthState createState() => _FarmFreshAuthState();
// // // }

// // // class _FarmFreshAuthState extends State<LoginScreen>
// // //     with TickerProviderStateMixin {
// // //   bool isLogin = true;
// // //   bool _isSubmitting = false;
// // //   late AnimationController _bgController;
// // //   late Animation<double> _bgOffset;

// // //   final _nameController = TextEditingController();
// // //   final _userController = TextEditingController();
// // //   final _passController = TextEditingController();

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _bgController =
// // //         AnimationController(vsync: this, duration: const Duration(seconds: 5))
// // //           ..repeat(reverse: true);
// // //     _bgOffset = Tween<double>(begin: -30, end: 30).animate(
// // //       CurvedAnimation(parent: _bgController, curve: Curves.easeInOut),
// // //     );
// // //   }

// // //   @override
// // //   void dispose() {
// // //     _bgController.dispose();
// // //     _nameController.dispose();
// // //     _userController.dispose();
// // //     _passController.dispose();
// // //     super.dispose();
// // //   }

// // //   Future<void> _handleSubmit() async {
// // //     setState(() => _isSubmitting = true);
// // //     final provider = context.read<UserProvider>();

// // //     if (isLogin) {
// // //       final data = LoginData(
// // //         name: _userController.text.trim(),
// // //         password: _passController.text,
// // //       );
// // //       final error = await provider.login(data);
// // //       if (error == null) {
// // //         _navigateToHome();
// // //       } else {
// // //         _showSnack(error);
// // //       }
// // //     } else {
// // //       final data = SignupData.fromSignupForm(
// // //         name: _nameController.text.trim(),
// // //         password: _passController.text,
// // //       );
// // //       final error = await provider.register(data);
// // //       if (error == null) {
// // //         _navigateToHome();
// // //       } else {
// // //         _showSnack(error);
// // //       }
// // //     }

// // //     setState(() => _isSubmitting = false);
// // //   }

// // //   void _navigateToHome() {
// // //     Navigator.of(context).pushReplacement(
// // //       MaterialPageRoute(builder: (_) => const HomeScreen()),
// // //     );
// // //   }

// // //   void _showSnack(String msg) {
// // //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
// // //   }

// // //   Widget _field(String hint, TextEditingController ctrl,
// // //       {bool obscure = false}) {
// // //     return TextFormField(
// // //       controller: ctrl,
// // //       obscureText: obscure,
// // //       decoration: InputDecoration(
// // //         hintText: hint,
// // //         filled: true,
// // //         fillColor: Colors.white.withOpacity(0.7),
// // //         border: OutlineInputBorder(
// // //           borderRadius: BorderRadius.circular(12),
// // //           borderSide: BorderSide.none,
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _authCard() {
// // //     return AnimatedCrossFade(
// // //       duration: const Duration(milliseconds: 300),
// // //       crossFadeState:
// // //           isLogin ? CrossFadeState.showFirst : CrossFadeState.showSecond,
// // //       firstChild: _buildCard(loginMode: true),
// // //       secondChild: _buildCard(loginMode: false),
// // //     );
// // //   }

// // //   Widget _buildCard({required bool loginMode}) {
// // //     return Column(
// // //       children: [
// // //         if (!loginMode) _field('Name', _nameController),
// // //         const SizedBox(height: 12),
// // //         _field('Username', _userController),
// // //         const SizedBox(height: 12),
// // //         _field('Password', _passController, obscure: true),
// // //         const SizedBox(height: 20),
// // //         SizedBox(
// // //           width: double.infinity,
// // //           child: ElevatedButton(
// // //             onPressed: _isSubmitting ? null : _handleSubmit,
// // //             style: ElevatedButton.styleFrom(
// // //               padding: const EdgeInsets.symmetric(vertical: 14),
// // //               backgroundColor: Color.fromARGB(255, 8, 15, 107),
// // //               foregroundColor: const Color.fromARGB(255, 152, 239, 155),
// // //               shape: RoundedRectangleBorder(
// // //                 borderRadius: BorderRadius.circular(30),
// // //               ),
// // //             ),
// // //             child: _isSubmitting
// // //                 ? const SizedBox(
// // //                     height: 24,
// // //                     width: 24,
// // //                     child: CircularProgressIndicator(
// // //                         color: Color.fromARGB(255, 103, 205, 106),
// // //                         strokeWidth: 2),
// // //                   )
// // //                 : Text(
// // //                     loginMode ? 'Login' : 'Sign Up',
// // //                     style: const TextStyle(fontWeight: FontWeight.bold),
// // //                   ),
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Container(
// // //       child: Scaffold(
// // //         // backgroundColor: Colors.transparent,
// // //         extendBodyBehindAppBar: true,
// // //         body: Stack(
// // //           children: [
// // //             Center(
// // //               child: SingleChildScrollView(
// // //                 padding: const EdgeInsets.symmetric(horizontal: 10),
// // //                 child: Column(
// // //                   children: [
// // //                     const SizedBox(height: 100),
// // //                     Image.asset('assets/images/greenexx.png'),
// // //                     const SizedBox(height: 24),
// // //                     ToggleButtons(
// // //                       isSelected: [isLogin, !isLogin],
// // //                       onPressed: (i) => setState(() => isLogin = (i == 0)),
// // //                       selectedColor: Colors.white,
// // //                       textStyle: TextStyle(fontWeight: FontWeight.bold),
// // //                       fillColor: Color.fromARGB(255, 8, 15, 107),
// // //                       borderRadius: BorderRadius.circular(20),
// // //                       children: const [Text('Login'), Text('Sign Up')],
// // //                     ),
// // //                     const SizedBox(height: 24),
// // //                     Container(
// // //                       padding: const EdgeInsets.all(24),
// // //                       decoration: BoxDecoration(
// // //                         color: const Color.fromARGB(255, 82, 173, 68)
// // //                             .withOpacity(0.3),
// // //                         borderRadius: BorderRadius.circular(20),
// // //                         border: Border.all(
// // //                             color: const Color.fromARGB(179, 17, 17, 17)),
// // //                       ),
// // //                       child: _authCard(),
// // //                     ),
// // //                     const SizedBox(height: 12),
// // //                     TextButton(
// // //                       onPressed: () => setState(() => isLogin = !isLogin),
// // //                       child: Text(
// // //                         isLogin
// // //                             ? 'Don’t have an account? Sign up'
// // //                             : 'Have an account? Login',
// // //                         style: const TextStyle(color: Colors.black),
// // //                       ),
// // //                     ),
// // //                     const SizedBox(height: 48),
// // //                   ],
// // //                 ),
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import 'package:flutter_login/flutter_login.dart';
// // import 'package:client_app/screen/home_screen.dart';
// // import '../login_screen/provider/user_provider.dart';

// // class LoginScreen extends StatefulWidget {
// //   const LoginScreen({super.key});
// //   @override
// //   _LoginScreenState createState() => _LoginScreenState();
// // }

// // class _LoginScreenState extends State<LoginScreen>
// //     with SingleTickerProviderStateMixin {
// //   bool isLogin = true, _isSubmitting = false;
// //   final _nameCtrl = TextEditingController();
// //   final _userCtrl = TextEditingController();
// //   final _passCtrl = TextEditingController();
// //   String? _error;

// //   @override
// //   void dispose() {
// //     _nameCtrl.dispose();
// //     _userCtrl.dispose();
// //     _passCtrl.dispose();
// //     super.dispose();
// //   }

// //   Future<void> _submit() async {
// //     setState(() {
// //       _isSubmitting = true;
// //       _error = null;
// //     });
// //     final provider = context.read<UserProvider>();

// //     String? result;
// //     if (isLogin) {
// //       final loginData =
// //           LoginData(name: _userCtrl.text.trim(), password: _passCtrl.text);
// //       result = await provider.login(loginData);
// //     } else {
// //       final signupData = SignupData.fromSignupForm(
// //           name: _nameCtrl.text.trim(), password: _passCtrl.text);
// //       result = await provider.register(signupData);
// //     }

// //     if (result == null) {
// //       Navigator.of(context).pushReplacement(
// //           MaterialPageRoute(builder: (_) => const HomeScreen()));
// //     } else {
// //       setState(() {
// //         _error = result;
// //       });
// //     }
// //     setState(() {
// //       _isSubmitting = false;
// //     });
// //   }

// //   Widget _inputField(
// //       {required IconData icon,
// //       required String hint,
// //       required TextEditingController ctrl,
// //       bool obscure = false}) {
// //     return TextField(
// //       controller: ctrl,
// //       obscureText: obscure,
// //       decoration: InputDecoration(
// //         prefixIcon: Icon(icon, color: Colors.grey[600]),
// //         filled: true,
// //         fillColor: Colors.white.withOpacity(0.9),
// //         hintText: hint,
// //         border: OutlineInputBorder(
// //             borderRadius: BorderRadius.circular(30),
// //             borderSide: BorderSide.none),
// //       ),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.blueGrey[50],
// //       body: SingleChildScrollView(
// //         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.center,
// //           children: [
// //             // Logo or header
// //             FlutterLogo(size: 100),
// //             const SizedBox(height: 32),

// //             // Toggle for login/signup
// //             AnimatedToggle(
// //               first: 'Login',
// //               second: 'Sign Up',
// //               isFirstSelected: isLogin,
// //               onToggle: (val) => setState(() {
// //                 isLogin = val;
// //                 _error = null;
// //               }),
// //             ),
// //             const SizedBox(height: 32),

// //             // Form container with depth
// //             Container(
// //               padding: const EdgeInsets.all(24),
// //               decoration: BoxDecoration(
// //                 color: Colors.white,
// //                 borderRadius: BorderRadius.circular(25),
// //                 boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 12)],
// //               ),
// //               child: Column(
// //                 children: [
// //                   if (!isLogin)
// //                     _inputField(
// //                         icon: Icons.person, hint: 'Name', ctrl: _nameCtrl),
// //                   if (!isLogin) const SizedBox(height: 16),
// //                   _inputField(
// //                       icon: Icons.person_outline,
// //                       hint: 'Username',
// //                       ctrl: _userCtrl),
// //                   const SizedBox(height: 16),
// //                   _inputField(
// //                       icon: Icons.lock_outline,
// //                       hint: 'Password',
// //                       ctrl: _passCtrl,
// //                       obscure: true),
// //                   if (_error != null) ...[
// //                     const SizedBox(height: 12),
// //                     Text(_error!, style: const TextStyle(color: Colors.red)),
// //                   ],
// //                   const SizedBox(height: 24),
// //                   ElevatedButton(
// //                     onPressed: _isSubmitting ? null : _submit,
// //                     style: ElevatedButton.styleFrom(
// //                       minimumSize: const Size.fromHeight(50),
// //                       shape: RoundedRectangleBorder(
// //                           borderRadius: BorderRadius.circular(30)),
// //                     ),
// //                     child: _isSubmitting
// //                         ? const SizedBox(
// //                             height: 24,
// //                             width: 24,
// //                             child:
// //                                 CircularProgressIndicator(color: Colors.white))
// //                         : Text(isLogin ? 'Login' : 'Sign Up',
// //                             style: const TextStyle(
// //                                 fontSize: 18, fontWeight: FontWeight.bold)),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             const SizedBox(height: 16),
// //             TextButton(
// //               onPressed: () => setState(() {
// //                 isLogin = !isLogin;
// //                 _error = null;
// //               }),
// //               child: Text(isLogin
// //                   ? 'Don’t have an account? Sign Up'
// //                   : 'Already have an account? Login'),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class AnimatedToggle extends StatelessWidget {
// //   final String first, second;
// //   final bool isFirstSelected;
// //   final ValueChanged<bool> onToggle;
// //   const AnimatedToggle(
// //       {required this.first,
// //       required this.second,
// //       required this.isFirstSelected,
// //       required this.onToggle,
// //       super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       padding: const EdgeInsets.all(4),
// //       decoration: BoxDecoration(
// //           color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
// //       child: Row(
// //         children: [
// //           Expanded(
// //             child: GestureDetector(
// //               onTap: () => onToggle(true),
// //               child: AnimatedContainer(
// //                 duration: const Duration(milliseconds: 250),
// //                 padding: const EdgeInsets.symmetric(vertical: 12),
// //                 decoration: BoxDecoration(
// //                   color: isFirstSelected
// //                       ? Theme.of(context).primaryColor
// //                       : Colors.transparent,
// //                   borderRadius: BorderRadius.circular(20),
// //                 ),
// //                 alignment: Alignment.center,
// //                 child: Text(first,
// //                     style: TextStyle(
// //                         color:
// //                             isFirstSelected ? Colors.white : Colors.black54)),
// //               ),
// //             ),
// //           ),
// //           Expanded(
// //             child: GestureDetector(
// //               onTap: () => onToggle(false),
// //               child: AnimatedContainer(
// //                 duration: const Duration(milliseconds: 250),
// //                 padding: const EdgeInsets.symmetric(vertical: 12),
// //                 decoration: BoxDecoration(
// //                   color: !isFirstSelected
// //                       ? Theme.of(context).primaryColor
// //                       : Colors.transparent,
// //                   borderRadius: BorderRadius.circular(20),
// //                 ),
// //                 alignment: Alignment.center,
// //                 child: Text(second,
// //                     style: TextStyle(
// //                         color:
// //                             !isFirstSelected ? Colors.white : Colors.black54)),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_login/flutter_login.dart'; // for LoginData & SignupData (optional)

// import '../login_screen/provider/user_provider.dart'; // adjust path
// import 'package:client_app/screen/home_screen.dart'; // adjust path if needed

// class WarmIllustratedLogin extends StatefulWidget {
//   const WarmIllustratedLogin({super.key});

//   @override
//   State<WarmIllustratedLogin> createState() => _WarmIllustratedLoginState();
// }

// class _WarmIllustratedLoginState extends State<WarmIllustratedLogin>
//     with TickerProviderStateMixin {
//   bool isLogin = true;
//   bool _isSubmitting = false;
//   String? _errorMsg;

//   // controllers
//   final _nameCtrl = TextEditingController();
//   final _userCtrl = TextEditingController();
//   final _passCtrl = TextEditingController();

//   // fade animation controllers
//   late AnimationController _fadeController;
//   late Animation<double> _headerOpacity;
//   late Animation<double> _formOpacity;

//   @override
//   void initState() {
//     super.initState();
//     _fadeController = AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 900));

//     _headerOpacity = Tween<double>(begin: 0, end: 1).animate(
//       CurvedAnimation(
//           parent: _fadeController,
//           curve: const Interval(0.0, 0.6, curve: Curves.easeOut)),
//     );

//     _formOpacity = Tween<double>(begin: 0, end: 1).animate(
//       CurvedAnimation(
//           parent: _fadeController,
//           curve: const Interval(0.4, 1.0, curve: Curves.easeOut)),
//     );

//     // start animations
//     _fadeController.forward();
//   }

//   @override
//   void dispose() {
//     _fadeController.dispose();
//     _nameCtrl.dispose();
//     _userCtrl.dispose();
//     _passCtrl.dispose();
//     super.dispose();
//   }

//   Future<void> _handleSubmit() async {
//     setState(() {
//       _isSubmitting = true;
//       _errorMsg = null;
//     });

//     final provider = context.read<UserProvider>();
//     String? error;

//     if (isLogin) {
//       final loginData =
//           LoginData(name: _userCtrl.text.trim(), password: _passCtrl.text);
//       error = await provider.login(loginData);
//     } else {
//       final signupData = SignupData.fromSignupForm(
//         name: _nameCtrl.text.trim(),
//         password: _passCtrl.text,
//       );
//       error = await provider.register(signupData);
//     }

//     if (error == null) {
//       Navigator.of(context).pushReplacement(
//           MaterialPageRoute(builder: (_) => const HomeScreen()));
//     } else {
//       setState(() {
//         _errorMsg = error;
//       });
//     }

//     setState(() {
//       _isSubmitting = false;
//     });
//   }

//   Widget _inputField({
//     required IconData icon,
//     required String hint,
//     required TextEditingController ctrl,
//     bool obscure = false,
//   }) {
//     return TextField(
//       controller: ctrl,
//       obscureText: obscure,
//       decoration: InputDecoration(
//         prefixIcon: Icon(icon, color: Colors.brown[300]),
//         hintText: hint,
//         filled: true,
//         fillColor: Colors.white.withOpacity(0.85),
//         contentPadding: const EdgeInsets.symmetric(vertical: 18),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(28),
//           borderSide: BorderSide.none,
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final mq = MediaQuery.of(context);
//     final isSmall = mq.size.height < 700;

//     return Scaffold(
//       backgroundColor: const Color(0xFFFDF6F0), // warm base
//       body: SafeArea(
//         child: Stack(
//           children: [
//             // Header clipped gradient + illustration
//             AnimatedBuilder(
//               animation: _headerOpacity,
//               builder: (context, child) => Opacity(
//                 opacity: _headerOpacity.value,
//                 child: child,
//               ),
//               child: ClipPath(
//                 clipper: HeaderWaveClipper(),
//                 child: Container(
//                   height:
//                       isSmall ? mq.size.height * 0.36 : mq.size.height * 0.42,
//                   decoration: const BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [Color(0xFFFFC371), Color(0xFFFFA07A)],
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                     ),
//                   ),
//                   child: Stack(
//                     children: [
//                       // subtle decorative circle
//                       Positioned(
//                         right: -40,
//                         top: -30,
//                         child: Container(
//                           width: 180,
//                           height: 180,
//                           decoration: BoxDecoration(
//                             color: Colors.white.withOpacity(0.06),
//                             shape: BoxShape.circle,
//                           ),
//                         ),
//                       ),

//                       // illustration (centered)
//                       Align(
//                         alignment: Alignment.center,
//                         child: Padding(
//                           padding: EdgeInsets.only(top: isSmall ? 10 : 28),
//                           child: Image.asset(
//                             'assets/images/bg_veggies.png',
//                             width: isSmall ? 190 : 260,
//                             height: isSmall ? 140 : 200,
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),

//             // Form area
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: AnimatedBuilder(
//                 animation: _formOpacity,
//                 builder: (context, child) => Opacity(
//                   opacity: _formOpacity.value,
//                   child: child,
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.fromLTRB(20, 0, 20, isSmall ? 18 : 28),
//                   child: SingleChildScrollView(
//                     physics: const BouncingScrollPhysics(),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         // small gap so card overlaps header
//                         SizedBox(
//                             height: isSmall
//                                 ? mq.size.height * 0.18
//                                 : mq.size.height * 0.14),

//                         // Glassmorphic Card
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(20),
//                           child: BackdropFilter(
//                             filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
//                             child: Container(
//                               width: double.infinity,
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 18, vertical: 20),
//                               decoration: BoxDecoration(
//                                 color: Colors.white.withOpacity(0.78),
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.black12.withOpacity(0.06),
//                                     blurRadius: 18,
//                                     offset: const Offset(0, 8),
//                                   ),
//                                 ],
//                               ),
//                               child: Column(
//                                 children: [
//                                   // Title
//                                   Text(
//                                     isLogin ? 'Welcome Back' : 'Create Account',
//                                     style: TextStyle(
//                                       color: Colors.brown[800],
//                                       fontSize: 22,
//                                       fontWeight: FontWeight.w700,
//                                     ),
//                                   ),
//                                   const SizedBox(height: 12),

//                                   // Animated toggle pill
//                                   _buildToggle(),

//                                   const SizedBox(height: 16),

//                                   // fields
//                                   if (!isLogin)
//                                     _inputField(
//                                         icon: Icons.person,
//                                         hint: 'Full Name',
//                                         ctrl: _nameCtrl),
//                                   if (!isLogin) const SizedBox(height: 12),
//                                   _inputField(
//                                       icon: Icons.person_outline,
//                                       hint: 'Username',
//                                       ctrl: _userCtrl),
//                                   const SizedBox(height: 12),
//                                   _inputField(
//                                       icon: Icons.lock_outline,
//                                       hint: 'Password',
//                                       ctrl: _passCtrl,
//                                       obscure: true),

//                                   // error
//                                   if (_errorMsg != null) ...[
//                                     const SizedBox(height: 10),
//                                     Text(_errorMsg!,
//                                         style:
//                                             const TextStyle(color: Colors.red)),
//                                   ],

//                                   const SizedBox(height: 18),

//                                   // submit
//                                   SizedBox(
//                                     width: double.infinity,
//                                     child: ElevatedButton(
//                                       onPressed:
//                                           _isSubmitting ? null : _handleSubmit,
//                                       style: ElevatedButton.styleFrom(
//                                         backgroundColor:
//                                             const Color(0xFFEF7A5F),
//                                         foregroundColor: Colors.white,
//                                         padding: const EdgeInsets.symmetric(
//                                             vertical: 14),
//                                         shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(30)),
//                                       ),
//                                       child: _isSubmitting
//                                           ? const SizedBox(
//                                               height: 22,
//                                               width: 22,
//                                               child: CircularProgressIndicator(
//                                                   color: Colors.white,
//                                                   strokeWidth: 2.2))
//                                           : Text(isLogin ? 'Login' : 'Sign Up',
//                                               style: const TextStyle(
//                                                   fontSize: 16,
//                                                   fontWeight: FontWeight.w700)),
//                                     ),
//                                   ),

//                                   const SizedBox(height: 12),

//                                   // secondary actions
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Text(
//                                           isLogin
//                                               ? "Don't have an account? "
//                                               : "Already have an account? ",
//                                           style: TextStyle(
//                                               color: Colors.brown[600])),
//                                       GestureDetector(
//                                         onTap: () => setState(() {
//                                           isLogin = !isLogin;
//                                           _errorMsg = null;
//                                           _fadeController.forward(from: 0.0);
//                                         }),
//                                         child: Text(
//                                           isLogin ? 'Sign Up' : 'Login',
//                                           style: const TextStyle(
//                                               color: Color(0xFFEF7A5F),
//                                               fontWeight: FontWeight.bold),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),

//                         const SizedBox(height: 18),
//                         // small footer or social row (optional)
//                         // you can add social login icons here
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildToggle() {
//     return Container(
//       padding: const EdgeInsets.all(4),
//       decoration: BoxDecoration(
//           color: Colors.brown[50], borderRadius: BorderRadius.circular(28)),
//       child: Row(
//         children: [
//           Expanded(
//             child: GestureDetector(
//               onTap: () {
//                 if (!isLogin) {
//                   setState(() {
//                     isLogin = true;
//                     _fadeController.forward(from: 0.0);
//                   });
//                 }
//               },
//               child: AnimatedContainer(
//                 duration: const Duration(milliseconds: 250),
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 decoration: BoxDecoration(
//                   color: isLogin ? Colors.white : Colors.transparent,
//                   borderRadius: BorderRadius.circular(24),
//                 ),
//                 alignment: Alignment.center,
//                 child: Text('Login',
//                     style: TextStyle(
//                         color: isLogin ? Colors.brown[800] : Colors.brown[400],
//                         fontWeight: FontWeight.w600)),
//               ),
//             ),
//           ),
//           Expanded(
//             child: GestureDetector(
//               onTap: () {
//                 if (isLogin) {
//                   setState(() {
//                     isLogin = false;
//                     _fadeController.forward(from: 0.0);
//                   });
//                 }
//               },
//               child: AnimatedContainer(
//                 duration: const Duration(milliseconds: 250),
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 decoration: BoxDecoration(
//                   color: !isLogin ? Colors.white : Colors.transparent,
//                   borderRadius: BorderRadius.circular(24),
//                 ),
//                 alignment: Alignment.center,
//                 child: Text('Sign Up',
//                     style: TextStyle(
//                         color: !isLogin ? Colors.brown[800] : Colors.brown[400],
//                         fontWeight: FontWeight.w600)),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// /// Custom clipper for header wave
// class HeaderWaveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.lineTo(0, size.height - 60);
//     // curve
//     final firstControl = Offset(size.width * 0.25, size.height);
//     final firstEnd = Offset(size.width * 0.5, size.height - 40);
//     final secondControl = Offset(size.width * 0.75, size.height - 80);
//     final secondEnd = Offset(size.width, size.height - 40);

//     path.quadraticBezierTo(
//         firstControl.dx, firstControl.dy, firstEnd.dx, firstEnd.dy);
//     path.quadraticBezierTo(
//         secondControl.dx, secondControl.dy, secondEnd.dx, secondEnd.dy);

//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }
import 'dart:ui';
import 'package:client_app/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';
import 'package:social_login_buttons/social_login_buttons.dart';
import 'package:flutter_login/flutter_login.dart';

import '../login_screen/provider/user_provider.dart';
//import 'home_screen.dart';

class WarmIllustratedLogin extends StatefulWidget {
  const WarmIllustratedLogin({super.key});

  @override
  State<WarmIllustratedLogin> createState() => _WarmIllustratedLoginState();
}

class _WarmIllustratedLoginState extends State<WarmIllustratedLogin>
    with TickerProviderStateMixin {
  bool isLogin = true;
  bool _isSubmitting = false;
  String? _errorMsg;

  final _nameCtrl = TextEditingController();
  final _userCtrl = TextEditingController();
  final _passCtrl = TextEditingController();

  late AnimationController _slideController;
  late Animation<Offset> _headerOffset, _formOffset;

  @override
  void initState() {
    super.initState();
    _slideController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    _headerOffset =
        Tween<Offset>(begin: const Offset(0, -0.5), end: Offset.zero).animate(
            CurvedAnimation(parent: _slideController, curve: Curves.easeOut));
    _formOffset = Tween<Offset>(begin: const Offset(0, 0.3), end: Offset.zero)
        .animate(
            CurvedAnimation(parent: _slideController, curve: Curves.easeOut));

    _slideController.forward();
  }

  @override
  void dispose() {
    _slideController.dispose();
    _nameCtrl.dispose();
    _userCtrl.dispose();
    _passCtrl.dispose();
    super.dispose();
  }

  Future<void> _handleSubmit() async {
    setState(() => _isSubmitting = true);
    final provider = context.read<UserProvider>();
    String? error;

    if (isLogin) {
      final loginData =
          LoginData(name: _userCtrl.text.trim(), password: _passCtrl.text);
      error = await provider.login(loginData);
    } else {
      final signupData = SignupData.fromSignupForm(
          name: _nameCtrl.text.trim(), password: _passCtrl.text);
      error = await provider.register(signupData);
    }

    if (error == null) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const HomeScreen()));
    } else {
      setState(() => _errorMsg = error);
    }

    setState(() => _isSubmitting = false);
  }

  Widget _inputField(
      {required IconData icon,
      required String hint,
      required TextEditingController ctrl,
      bool obscure = false}) {
    return TextField(
      controller: ctrl,
      obscureText: obscure,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.brown[300]),
        hintText: hint,
        filled: true,
        fillColor: Colors.white.withOpacity(0.85),
        contentPadding: const EdgeInsets.symmetric(vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF6F0), // warm light theme
      body: SafeArea(
        child: Stack(
          children: [
            SlideTransition(
              position: _headerOffset,
              child: ClipPath(
                clipper: HeaderWaveClipper(),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 48, 83, 139),
                              Color.fromARGB(255, 117, 186, 236)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: Center(
                        child: Lottie.asset(
                          'assets/images/farmer7.json',
                          width: 600,
                          height: 900,
                          fit: BoxFit.contain,
                          repeat: true,
                        ),
                      ),
                      padding: EdgeInsets.only(bottom: 50),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SlideTransition(
                position: _formOffset,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
                  child: SingleChildScrollView(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(207, 152, 193, 202)
                            // .withOpacity(0.78),
                            ,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Text(
                                isLogin ? 'Welcome Back' : 'Create Account',
                                style: TextStyle(
                                  color: Colors.brown[800],
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 12),
                              _buildToggle(),
                              const SizedBox(height: 16),
                              if (!isLogin)
                                _inputField(
                                    icon: Icons.person,
                                    hint: 'Full Name',
                                    ctrl: _nameCtrl),
                              if (!isLogin) const SizedBox(height: 12),
                              _inputField(
                                  icon: Icons.person_outline,
                                  hint: 'Username',
                                  ctrl: _userCtrl),
                              const SizedBox(height: 12),
                              _inputField(
                                  icon: Icons.lock_outline,
                                  hint: 'Password',
                                  ctrl: _passCtrl,
                                  obscure: true),
                              if (_errorMsg != null) ...[
                                const SizedBox(height: 10),
                                Text(_errorMsg!,
                                    style: const TextStyle(color: Colors.red)),
                              ],
                              const SizedBox(height: 18),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed:
                                      _isSubmitting ? null : _handleSubmit,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 14),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ),
                                  child: _isSubmitting
                                      ? const SizedBox(
                                          height: 22,
                                          width: 22,
                                          child: CircularProgressIndicator(
                                              color: Colors.white,
                                              strokeWidth: 2.2),
                                        )
                                      : Text(isLogin ? 'Login' : 'Sign Up',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700)),
                                ),
                              ),
                              const SizedBox(height: 16),
                              SocialLoginButton(
                                buttonType: SocialLoginButtonType.google,
                                onPressed: () {},
                              ),
                              const SizedBox(height: 8),
                              SocialLoginButton(
                                buttonType: SocialLoginButtonType.facebook,
                                onPressed: () {},
                              ),
                              const SizedBox(height: 12),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    isLogin
                                        ? "Don't have an account? "
                                        : "Already have an account? ",
                                    style: TextStyle(color: Colors.brown[600]),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isLogin = !isLogin;
                                        _errorMsg = null;
                                        _slideController.forward(from: 0.0);
                                      });
                                    },
                                    child: const Text('Sign Up/Login',
                                        style: TextStyle(
                                            color: Colors.brown,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildToggle() {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.brown[50],
        borderRadius: BorderRadius.circular(28),
      ),
      child: Row(
        children: [
          _toggleButton('Login', isLogin),
          _toggleButton('Sign Up', !isLogin),
        ],
      ),
    );
  }

  Widget _toggleButton(String label, bool selected) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          if (isLogin != selected) {
            setState(() {
              isLogin = selected;
              _slideController.forward(from: 0.0);
            });
          }
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: selected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(24),
          ),
          alignment: Alignment.center,
          child: Text(label,
              style: TextStyle(
                  color: selected ? Colors.brown[800] : Colors.brown[400],
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}

class HeaderWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 60);
    final firstControl = Offset(size.width * 0.25, size.height);
    final firstEnd = Offset(size.width * 0.5, size.height - 40);
    final secondControl = Offset(size.width * 0.75, size.height - 80);
    final secondEnd = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(
        firstControl.dx, firstControl.dy, firstEnd.dx, firstEnd.dy);
    path.quadraticBezierTo(
        secondControl.dx, secondControl.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
