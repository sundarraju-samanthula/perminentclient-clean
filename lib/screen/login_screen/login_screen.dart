// // // // // // // import 'package:client_app/utility/extensions.dart';
// // // // // // // import '../../utility/app_color.dart';
// // // // // // // import 'package:flutter/material.dart';
// // // // // // // import 'package:flutter_login/flutter_login.dart';
// // // // // // // import '../home_screen.dart';

// // // // // // // class LoginScreen extends StatelessWidget {
// // // // // // //   const LoginScreen({super.key});

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return FlutterLogin(
// // // // // // //       loginAfterSignUp: false,
// // // // // // //       logo: const AssetImage('assets/images/logox.png'),
// // // // // // //       onLogin: (LoginData loginData) {
// // // // // // //         context.userProvider.login(loginData);
// // // // // // //         return null;
// // // // // // //       },
// // // // // // //       onSignup: (SignupData data) {
// // // // // // //         context.userProvider.register(data);
// // // // // // //         return null;
// // // // // // //       },
// // // // // // //       onSubmitAnimationCompleted: () {
// // // // // // //         if (context.userProvider.getLoginUsr()?.sId != null) {
// // // // // // //           Navigator.of(context).pushReplacement(MaterialPageRoute(
// // // // // // //             builder: (context) {
// // // // // // //               return const HomeScreen();
// // // // // // //             },
// // // // // // //           ));
// // // // // // //         } else {
// // // // // // //           Navigator.of(context).pushReplacement(MaterialPageRoute(
// // // // // // //             builder: (context) {
// // // // // // //               return const LoginScreen();
// // // // // // //             },
// // // // // // //           ));
// // // // // // //         }
// // // // // // //       },
// // // // // // //       onRecoverPassword: (_) => null,
// // // // // // //       hideForgotPasswordButton: true,
// // // // // // //       theme: LoginTheme(
// // // // // // //           primaryColor: AppColor.darkGrey,
// // // // // // //           accentColor: AppColor.darkOrange,
// // // // // // //           buttonTheme: const LoginButtonTheme(
// // // // // // //             backgroundColor: AppColor.darkOrange,
// // // // // // //           ),
// // // // // // //           cardTheme: const CardTheme(
// // // // // // //               color: Colors.white, surfaceTintColor: Colors.white),
// // // // // // //           titleStyle: const TextStyle(color: Colors.black)),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }

// // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // import 'package:flutter_animated_login/flutter_animated_login.dart';
// // // // // // // // // // import '../../utility/app_color.dart';

// // // // // // // // // // class AuthScreen extends StatelessWidget {
// // // // // // // // // //   const AuthScreen({Key? key}) : super(key: key);

// // // // // // // // // //   @override
// // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // //     return FlutterAnimatedLogin(
// // // // // // // // // //       backgroundGradient: const LinearGradient(
// // // // // // // // // //         colors: [Color(0xFF56ab2f), Color(0xFFa8e063)],
// // // // // // // // // //         begin: Alignment.topLeft,
// // // // // // // // // //         end: Alignment.bottomRight,
// // // // // // // // // //       ),
// // // // // // // // // //       logo: Image.asset('assets/images/logox.png', height: 80),
// // // // // // // // // //       title: 'FarmFresh',
// // // // // // // // // //       loginConfig: LoginConfig(
// // // // // // // // // //         onLogin: (loginData) async {
// // // // // // // // // //           final error = await context.userProvider.login(loginData);
// // // // // // // // // //           return error?.message;
// // // // // // // // // //         },
// // // // // // // // // //       ),
// // // // // // // // // //       signupConfig: SignupConfig(
// // // // // // // // // //         onSignup: (signupData) async {
// // // // // // // // // //           final error = await context.userProvider.register(signupData);
// // // // // // // // // //           return error?.message;
// // // // // // // // // //         },
// // // // // // // // // //         signUpMode: SignUpModes.nameAndConfirmPassword,
// // // // // // // // // //       ),
// // // // // // // // // //       resetConfig: ResetConfig(
// // // // // // // // // //         onReset: (email) async {
// // // // // // // // // //           final msg = await context.userProvider.recoverPassword(email);
// // // // // // // // // //           return msg == null ? null : msg;
// // // // // // // // // //         },
// // // // // // // // // //       ),
// // // // // // // // // //       providers: const [], // add social logins if needed
// // // // // // // // // //       onSuccess: (isLogin) {
// // // // // // // // // //         Navigator.of(context).pushReplacement(
// // // // // // // // // //             MaterialPageRoute(builder: (_) => const HomeScreen()));
// // // // // // // // // //       },
// // // // // // // // // //       theme: LoginViewTheme(
// // // // // // // // // //         primaryColor: AppColor.darkGrey,
// // // // // // // // // //         buttonColor: AppColor.darkOrange,
// // // // // // // // // //         cardRadius: 20,
// // // // // // // // // //         cardPadding: const EdgeInsets.all(24),
// // // // // // // // // //         inputTextColor: Colors.black87,
// // // // // // // // // //         paddings: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }
// // // // // // // // // // }
// // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // import 'package:flutter_animated_login/flutter_animated_login.dart';
// // // // // // // // // // // import 'package:provider/provider.dart';
// // // // // // // // // // // import '../../utility/app_color.dart';
// // // // // // // // // // // import '../home_screen.dart';
// // // // // // // // // // // import '../providers/user_provider.dart';

// // // // // // // // // // // class AuthScreen extends StatelessWidget {
// // // // // // // // // // //   const AuthScreen({super.key});

// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return FlutterAnimatedLogin(
// // // // // // // // // // //       backgroundGradient: const LinearGradient(
// // // // // // // // // // //         colors: [Color(0xFF56ab2f), Color(0xFFa8e063)],
// // // // // // // // // // //         begin: Alignment.topLeft,
// // // // // // // // // // //         end: Alignment.bottomRight,
// // // // // // // // // // //       ),
// // // // // // // // // // //       logo: Image.asset('assets/images/logox.png', height: 80),
// // // // // // // // // // //       title: 'FarmFresh',
// // // // // // // // // // //       loginConfig: LoginConfig(
// // // // // // // // // // //         logo: (loginData) async {
// // // // // // // // // // //           final error = await context.read<UserProvider>().login(loginData);
// // // // // // // // // // //           return error?.message;
// // // // // // // // // // //         },
// // // // // // // // // // //       ),
// // // // // // // // // // //       signupConfig: SignupConfig(
// // // // // // // // // // //         onSignup: (signupData) async {
// // // // // // // // // // //           final error = await context.read<UserProvider>().register(signupData);
// // // // // // // // // // //           return error?.message;
// // // // // // // // // // //         },
// // // // // // // // // // //         signUpMode: SignUpModes.nameAndConfirmPassword,
// // // // // // // // // // //       ),
// // // // // // // // // // //       resetConfig: ResetConfig(
// // // // // // // // // // //         onReset: (email) async {
// // // // // // // // // // //           final msg = await context.read<UserProvider>().recoverPassword(email);
// // // // // // // // // // //           return msg == null ? null : msg;
// // // // // // // // // // //         },
// // // // // // // // // // //       ),
// // // // // // // // // // //       onSuccess: (wasLogin) {
// // // // // // // // // // //         Navigator.of(context).pushReplacement(
// // // // // // // // // // //           MaterialPageRoute(builder: (_) => const HomeScreen()),
// // // // // // // // // // //         );
// // // // // // // // // // //       },
// // // // // // // // // // //       theme: LoginViewTheme(
// // // // // // // // // // //         primaryColor: AppColor.darkGrey,
// // // // // // // // // // //         buttonColor: AppColor.darkOrange,
// // // // // // // // // // //         cardRadius: 20,
// // // // // // // // // // //         cardPadding: const EdgeInsets.all(24),
// // // // // // // // // // //         inputTextColor: Colors.black87,
// // // // // // // // // // //         paddings: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // import 'package:flutter_animated_login/flutter_animated_login.dart';

// // // // // // // // // class AuthScreen extends StatefulWidget {
// // // // // // // // //   const AuthScreen({super.key});
// // // // // // // // //   @override
// // // // // // // // //   _AuthScreenState createState() => _AuthScreenState();
// // // // // // // // // }

// // // // // // // // // class _AuthScreenState extends State<AuthScreen> {
// // // // // // // // //   late TextFieldController _loginField;
// // // // // // // // //   late TextFieldController _otpField;

// // // // // // // // //   @override
// // // // // // // // //   void initState() {
// // // // // // // // //     super.initState();
// // // // // // // // //     _loginField = TextFieldController();
// // // // // // // // //     _otpField = TextFieldController();
// // // // // // // // //   }

// // // // // // // // //   @override
// // // // // // // // //   void dispose() {
// // // // // // // // //     _loginField.dispose();
// // // // // // // // //     _otpField.dispose();
// // // // // // // // //     super.dispose();
// // // // // // // // //   }

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return FlutterAnimatedLogin(
// // // // // // // // //       loginType: LoginType.password,
// // // // // // // // //       onLogin: (loginData) async {
// // // // // // // // //         // your asynchronous login logic
// // // // // // // // //         await Future.delayed(const Duration(seconds: 2));
// // // // // // // // //         return ""; // return empty string on success, error message otherwise
// // // // // // // // //       },
// // // // // // // // //       onVerify: (otpData) async {
// // // // // // // // //         await Future.delayed(const Duration(seconds: 2));
// // // // // // // // //         return ""; // return empty on correct OTP
// // // // // // // // //       },
// // // // // // // // //       onSignup: (signupData) async => "", // implement sign-up
// // // // // // // // //       onResendOtp: (phone) async => "", // implement resend OTP
// // // // // // // // //       loginConfig: LoginConfig(
// // // // // // // // //         textFiledConfig: EmailPhoneTextFiledConfig(controller: _loginField),
// // // // // // // // //       ),
// // // // // // // // //       verifyConfig:
// // // // // // // // //           VerifyConfig(textFiledConfig: OtpTextFiledConfig(controller: _otpField)),
// // // // // // // // //       providers: [
// // // // // // // // //         LoginProvider(
// // // // // // // // //           icon: Icons.facebook,
// // // // // // // // //           label: const Text('Facebook'),
// // // // // // // // //           callback: () async {
// // // // // // // // //             return "";
// // // // // // // // //           },
// // // // // // // // //         ),
// // // // // // // // //       ],
// // // // // // // // //       theme: LoginViewTheme(
// // // // // // // // //         primaryColor: Colors.green,
// // // // // // // // //         buttonColor: Colors.orange,
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // import 'package:flutter_animated_login/flutter_animated_login.dart';

// // // // // // // // class AuthScreen extends StatelessWidget {
// // // // // // // //   const AuthScreen({super.key});

// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return FlutterAnimatedLogin(
// // // // // // // //       loginType: LoginType.password,
// // // // // // // //       loginConfig: LoginConfig(
// // // // // // // //         textFiledConfig: EmailPhoneTextFiledConfig(
// // // // // // // //           controller: TextEditingController(),
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //       verifyConfig: VerifyConfig(
// // // // // // // //         textFiledConfig: OtpTextFiledConfig(controller: TextEditingController()),
// // // // // // // //       ),
// // // // // // // //       onLogin: (loginData) async {
// // // // // // // //         // call your authentication logic
// // // // // // // //         final success = await someAuth.login(loginData);
// // // // // // // //         return success ? "" : "Login failed";
// // // // // // // //       },
// // // // // // // //       onSignup: (signupData) async {
// // // // // // // //         final success = await someAuth.register(signupData);
// // // // // // // //         return success ? "" : "Error registering";
// // // // // // // //       },
// // // // // // // //       onResendOtp: (phone) async {
// // // // // // // //         await someAuth.resendOtp(phone);
// // // // // // // //         return "";
// // // // // // // //       },
// // // // // // // //       onVerify: (otpData) async {
// // // // // // // //         final ok = await someAuth.verifyOtp(otpData);
// // // // // // // //         return ok ? "" : "OTP invalid";
// // // // // // // //       },
// // // // // // // //       providers: [
// // // // // // // //         LoginProvider(icon: Icons.facebook, label: Text('Facebook'),
// // // // // // // //           callback: () async {
// // // // // // // //             // social login
// // // // // // // //             return "";
// // // // // // // //           },
// // // // // // // //         ),
// // // // // // // //       ],
// // // // // // // //       resetConfig: ResetConfig(onReset: (email) async {
// // // // // // // //         await someAuth.resetPassword(email);
// // // // // // // //         return "";
// // // // // // // //       }),
// // // // // // // //       termsAndConditions: TextSpan(text: 'By logging in, you agree to ...'),
// // // // // // // //       config: PageConfig(
// // // // // // // //         // for customizing page-level layout (optional)
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }

// // // // // // import 'package:client_app/utility/extensions.dart';
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:flutter_animated_login/flutter_animated_login.dart';
// // // // // // import 'package:get/get.dart';
// // // // // // import 'package:lottie/lottie.dart';
// // // // // // import 'package:client_app/screen/login_screen/provider/user_provider.dart';

// // // // // // //import '../../provider/user_provider.dart';
// // // // // // import '../../utility/snack_bar_helper.dart';
// // // // // // import '../home_screen.dart';

// // // // // // class LoginScreen extends StatefulWidget {
// // // // // //   const LoginScreen({super.key});

// // // // // //   @override
// // // // // //   State<AnimatedLoginScreen> createState() => _AnimatedLoginScreenState();
// // // // // // }

// // // // // // class _AnimatedLoginScreenState extends State<AnimatedLoginScreen> {
// // // // // //   final _formKey = GlobalKey<FormState>();
// // // // // //   final _usernameCtrl = TextEditingController();
// // // // // //   final _passwordCtrl = TextEditingController();
// // // // // //   bool _isLoading = false;
// // // // // //   bool _hidePassword = true;

// // // // // //   Future<void> _handleLogin() async {
// // // // // //     if (!_formKey.currentState!.validate()) return;

// // // // // //     setState(() => _isLoading = true);
// // // // // //     final userProvider = context.userProvider;

// // // // // //     final res = await userProvider.login(
// // // // // //       LoginData(name: _usernameCtrl.text, password: _passwordCtrl.text),
// // // // // //     );

// // // // // //     setState(() => _isLoading = false);

// // // // // //     if (res == null) {
// // // // // //       // success
// // // // // //       Navigator.pushReplacement(
// // // // // //         context,
// // // // // //         MaterialPageRoute(builder: (_) => const HomeScreen()),
// // // // // //       );
// // // // // //     } else {
// // // // // //       // failure
// // // // // //       SnackBarHelper.showErrorSnackBar(res);
// // // // // //     }
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       backgroundColor: Colors.white,
// // // // // //       body: Center(
// // // // // //         child: SingleChildScrollView(
// // // // // //           child: AnimatedContainer(
// // // // // //             duration: const Duration(milliseconds: 600),
// // // // // //             padding: const EdgeInsets.all(24),
// // // // // //             child: Column(
// // // // // //               children: [
// // // // // //                 Lottie.asset('assets/animations/login.json', height: 150),

// // // // // //                 const SizedBox(height: 16),
// // // // // //                 Text("Welcome Back!", style: Theme.of(context).textTheme.headlineSmall),

// // // // // //                 const SizedBox(height: 24),
// // // // // //                 Form(
// // // // // //                   key: _formKey,
// // // // // //                   child: Column(
// // // // // //                     children: [
// // // // // //                       TextFormField(
// // // // // //                         controller: _usernameCtrl,
// // // // // //                         decoration: InputDecoration(
// // // // // //                           labelText: "Username",
// // // // // //                           prefixIcon: const Icon(Icons.person),
// // // // // //                           border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
// // // // // //                         ),
// // // // // //                         validator: (val) =>
// // // // // //                             val == null || val.isEmpty ? "Enter your username" : null,
// // // // // //                       ),
// // // // // //                       const SizedBox(height: 16),
// // // // // //                       TextFormField(
// // // // // //                         controller: _passwordCtrl,
// // // // // //                         obscureText: _hidePassword,
// // // // // //                         decoration: InputDecoration(
// // // // // //                           labelText: "Password",
// // // // // //                           prefixIcon: const Icon(Icons.lock),
// // // // // //                           suffixIcon: IconButton(
// // // // // //                             icon: Icon(
// // // // // //                               _hidePassword ? Icons.visibility_off : Icons.visibility,
// // // // // //                             ),
// // // // // //                             onPressed: () {
// // // // // //                               setState(() => _hidePassword = !_hidePassword);
// // // // // //                             },
// // // // // //                           ),
// // // // // //                           border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
// // // // // //                         ),
// // // // // //                         validator: (val) =>
// // // // // //                             val == null || val.length < 4 ? "Enter a valid password" : null,
// // // // // //                       ),
// // // // // //                     ],
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 24),
// // // // // //                 SizedBox(
// // // // // //                   width: double.infinity,
// // // // // //                   child: ElevatedButton(
// // // // // //                     onPressed: _isLoading ? null : _handleLogin,
// // // // // //                     style: ElevatedButton.styleFrom(
// // // // // //                       padding: const EdgeInsets.symmetric(vertical: 14),
// // // // // //                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // // // // //                       backgroundColor: Colors.deepOrange,
// // // // // //                     ),
// // // // // //                     child: _isLoading
// // // // // //                         ? const CircularProgressIndicator(color: Colors.white)
// // // // // //                         : const Text("Login", style: TextStyle(fontSize: 18)),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //               ],
// // // // // //             ),
// // // // // //           ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // // import 'package:client_app/utility/extensions.dart';
// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:lottie/lottie.dart';
// // // // // import 'package:flutter_login/flutter_login.dart';
// // // // // import 'package:client_app/screen/login_screen/provider/user_provider.dart';
// // // // // import 'package:client_app/screen/home_screen.dart';
// // // // // import 'package:client_app/utility/snack_bar_helper.dart';

// // // // // class AnimatedLoginScreen extends StatefulWidget {
// // // // //   const AnimatedLoginScreen({super.key});

// // // // //   @override
// // // // //   State<AnimatedLoginScreen> createState() => _AnimatedLoginScreenState();
// // // // // }

// // // // // class _AnimatedLoginScreenState extends State<AnimatedLoginScreen> {
// // // // //   final _formKey = GlobalKey<FormState>();
// // // // //   final _usernameCtrl = TextEditingController();
// // // // //   final _passwordCtrl = TextEditingController();
// // // // //   bool _isLoading = false;
// // // // //   bool _hidePassword = true;

// // // // //   Future<void> _handleLogin() async {
// // // // //     if (!_formKey.currentState!.validate()) return;

// // // // //     setState(() => _isLoading = true);
// // // // //     final userProvider = context.userProvider;

// // // // //     final res = await userProvider.login(
// // // // //       LoginData(name: _usernameCtrl.text, password: _passwordCtrl.text),
// // // // //     );

// // // // //     setState(() => _isLoading = false);

// // // // //     if (res == null) {
// // // // //       Navigator.pushReplacement(
// // // // //         context,
// // // // //         MaterialPageRoute(builder: (_) => const HomeScreen()),
// // // // //       );
// // // // //     } else {
// // // // //       SnackBarHelper.showErrorSnackBar(res);
// // // // //     }
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       backgroundColor: Colors.white,
// // // // //       body: Center(
// // // // //         child: SingleChildScrollView(
// // // // //           padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
// // // // //           child: Column(
// // // // //             mainAxisAlignment: MainAxisAlignment.center,
// // // // //             children: [
// // // // //               Lottie.asset(
// // // // //                 'assets/images/animation_123.json', // <-- make sure this file exists
// // // // //                 height: 180,
// // // // //               ),
// // // // //               const SizedBox(height: 24),
// // // // //               Text(
// // // // //                 'Welcome Back!',
// // // // //                 style: Theme.of(context).textTheme.headlineSmall?.copyWith(
// // // // //                       fontWeight: FontWeight.bold,
// // // // //                       color: Colors.deepOrange,
// // // // //                     ),
// // // // //               ),
// // // // //               const SizedBox(height: 32),
// // // // //               Form(
// // // // //                 key: _formKey,
// // // // //                 child: Column(
// // // // //                   children: [
// // // // //                     TextFormField(
// // // // //                       controller: _usernameCtrl,
// // // // //                       decoration: InputDecoration(
// // // // //                         labelText: "Username",
// // // // //                         prefixIcon: const Icon(Icons.person),
// // // // //                         border: OutlineInputBorder(
// // // // //                           borderRadius: BorderRadius.circular(12),
// // // // //                         ),
// // // // //                       ),
// // // // //                       validator: (val) => val == null || val.isEmpty
// // // // //                           ? "Enter your username"
// // // // //                           : null,
// // // // //                     ),
// // // // //                     const SizedBox(height: 16),
// // // // //                     TextFormField(
// // // // //                       controller: _passwordCtrl,
// // // // //                       obscureText: _hidePassword,
// // // // //                       decoration: InputDecoration(
// // // // //                         labelText: "Password",
// // // // //                         prefixIcon: const Icon(Icons.lock),
// // // // //                         suffixIcon: IconButton(
// // // // //                           icon: Icon(_hidePassword
// // // // //                               ? Icons.visibility_off
// // // // //                               : Icons.visibility),
// // // // //                           onPressed: () {
// // // // //                             setState(() => _hidePassword = !_hidePassword);
// // // // //                           },
// // // // //                         ),
// // // // //                         border: OutlineInputBorder(
// // // // //                           borderRadius: BorderRadius.circular(12),
// // // // //                         ),
// // // // //                       ),
// // // // //                       validator: (val) => val == null || val.length < 4
// // // // //                           ? "Password too short"
// // // // //                           : null,
// // // // //                     ),
// // // // //                   ],
// // // // //                 ),
// // // // //               ),
// // // // //               const SizedBox(height: 32),
// // // // //               SizedBox(
// // // // //                 width: double.infinity,
// // // // //                 child: ElevatedButton(
// // // // //                   onPressed: _isLoading ? null : _handleLogin,
// // // // //                   style: ElevatedButton.styleFrom(
// // // // //                     padding: const EdgeInsets.symmetric(vertical: 14),
// // // // //                     shape: RoundedRectangleBorder(
// // // // //                       borderRadius: BorderRadius.circular(12),
// // // // //                     ),
// // // // //                     backgroundColor: Colors.deepOrange,
// // // // //                   ),
// // // // //                   child: _isLoading
// // // // //                       ? const CircularProgressIndicator(color: Colors.white)
// // // // //                       : const Text("Login", style: TextStyle(fontSize: 18)),
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

// // // // class FarmFreshAuth extends StatefulWidget {
// // // //   @override
// // // //   _FarmFreshAuthState createState() => _FarmFreshAuthState();
// // // // }

// // // // class _FarmFreshAuthState extends State<FarmFreshAuth>
// // // //     with TickerProviderStateMixin {
// // // //   bool showLogin = true;
// // // //   late AnimationController _bgController, _formController;
// // // //   late Animation<double> _bgAnim, _formFade;

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _bgController =
// // // //         AnimationController(vsync: this, duration: Duration(seconds: 2))
// // // //           ..repeat(reverse: true);
// // // //     _bgAnim = Tween<double>(begin: -0.05, end: 0.05).animate(
// // // //       CurvedAnimation(parent: _bgController, curve: Curves.easeInOut),
// // // //     );

// // // //     _formController =
// // // //         AnimationController(vsync: this, duration: Duration(milliseconds: 800));
// // // //     _formFade = CurvedAnimation(parent: _formController, curve: Curves.easeIn);
// // // //     _formController.forward();
// // // //   }

// // // //   @override
// // // //   void dispose() {
// // // //     _bgController.dispose();
// // // //     _formController.dispose();
// // // //     super.dispose();
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       body: Stack(
// // // //         children: [
// // // //           // Wavy vegetable-patterned animated background
// // // //           AnimatedBuilder(
// // // //             animation: _bgAnim,
// // // //             builder: (ctx, child) {
// // // //               return Transform.translate(
// // // //                 offset: Offset(0, 50 * _bgAnim.value),
// // // //                 child: child,
// // // //               );
// // // //             },
// // // //             child: Container(
// // // //               decoration: BoxDecoration(
// // // //                 gradient: LinearGradient(
// // // //                   colors: [Color(0xFF56ab2f), Color(0xFFa8e063)],
// // // //                   begin: Alignment.topLeft,
// // // //                   end: Alignment.bottomRight,
// // // //                 ),
// // // //               ),
// // // //               child: Opacity(
// // // //                 opacity: 0.2,
// // // //                 child: Image.asset('assets/images/bg_veggies.png',
// // // //                     fit: BoxFit.cover),
// // // //               ),
// // // //             ),
// // // //           ),
// // // //           Center(
// // // //             child: SingleChildScrollView(
// // // //               padding: EdgeInsets.symmetric(horizontal: 24),
// // // //               child: FadeTransition(
// // // //                 opacity: _formFade,
// // // //                 child: Column(
// // // //                   children: [
// // // //                     Image.asset('assets/images/logox.png', height: 80),
// // // //                     SizedBox(height: 16),
// // // //                     _toggleTabs(),
// // // //                     SizedBox(height: 24),
// // // //                     _buildFormCard(),
// // // //                     SizedBox(height: 12),
// // // //                     TextButton(
// // // //                       onPressed: () {
// // // //                         setState(() {
// // // //                           showLogin = !showLogin;
// // // //                         });
// // // //                         _formController.forward(from: 0);
// // // //                       },
// // // //                       child: Text(
// // // //                         showLogin
// // // //                             ? 'Don’t have account? Sign up'
// // // //                             : 'Have an account? Log in',
// // // //                         style: TextStyle(color: Colors.white70),
// // // //                       ),
// // // //                     ),
// // // //                   ],
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //           )
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _toggleTabs() {
// // // //     return Row(
// // // //       mainAxisAlignment: MainAxisAlignment.center,
// // // //       children: [
// // // //         ChoiceChip(
// // // //           label: Text('Login'),
// // // //           selected: showLogin,
// // // //           onSelected: (_) => setState(() {
// // // //             showLogin = true;
// // // //             _formController.forward(from: 0);
// // // //           }),
// // // //         ),
// // // //         SizedBox(width: 16),
// // // //         ChoiceChip(
// // // //           label: Text('Sign Up'),
// // // //           selected: !showLogin,
// // // //           onSelected: (_) => setState(() {
// // // //             showLogin = false;
// // // //             _formController.forward(from: 0);
// // // //           }),
// // // //         ),
// // // //       ],
// // // //     );
// // // //   }

// // // //   Widget _buildFormCard() {
// // // //     return Container(
// // // //       padding: EdgeInsets.all(24),
// // // //       decoration: BoxDecoration(
// // // //         color: Colors.white.withOpacity(0.3),
// // // //         borderRadius: BorderRadius.circular(20),
// // // //         border: Border.all(color: Colors.white.withOpacity(0.5)),
// // // //       ),
// // // //       child: showLogin ? _buildLoginForm() : _buildSignupForm(),
// // // //     );
// // // //   }

// // // //   Widget _buildLoginForm() {
// // // //     return Column(
// // // //       children: [
// // // //         _styledField(hint: 'Username'),
// // // //         SizedBox(height: 12),
// // // //         _styledField(hint: 'Password', obscure: true),
// // // //         SizedBox(height: 20),
// // // //         _actionButton('Login'),
// // // //       ],
// // // //     );
// // // //   }

// // // //   Widget _buildSignupForm() {
// // // //     return Column(
// // // //       children: [
// // // //         _styledField(hint: 'Name'),
// // // //         SizedBox(height: 12),
// // // //         _styledField(hint: 'Username'),
// // // //         SizedBox(height: 12),
// // // //         _styledField(hint: 'Password', obscure: true),
// // // //         SizedBox(height: 12),
// // // //         _styledField(hint: 'Confirm Password', obscure: true),
// // // //         SizedBox(height: 20),
// // // //         _actionButton('Sign Up'),
// // // //       ],
// // // //     );
// // // //   }

// // // //   Widget _styledField({required String hint, bool obscure = false}) {
// // // //     return TextFormField(
// // // //       obscureText: obscure,
// // // //       decoration: InputDecoration(
// // // //         hintText: hint,
// // // //         filled: true,
// // // //         fillColor: Colors.white.withOpacity(0.7),
// // // //         contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
// // // //         border: OutlineInputBorder(
// // // //             borderRadius: BorderRadius.circular(12),
// // // //             borderSide: BorderSide.none),
// // // //       ),
// // // //     );
// // // //   }

// // // //   // Widget _actionButton(String label) {
// // // //   //   return ElevatedButton(
// // // //   //     style: ElevatedButton.styleFrom(
// // // //   //       backgroundColor: Colors.white,
// // // //   //       foregroundColor: Colors.green,
// // // //   //       padding: EdgeInsets.symmetric(vertical: 14),
// // // //   //       minimumSize: Size(double.infinity, 0),
// // // //   //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
// // // //   //     ),
// // // //   //     onPressed: () {/* login/sign‑up action */},
// // // //   //     child: Text(label),
// // // //   //   );
// // // //   // }
// // // //   Widget _actionButton(String label) {
// // // //   return ElevatedButton(
// // // //     style: ElevatedButton.styleFrom(
// // // //       backgroundColor: Colors.white,
// // // //       foregroundColor: Colors.green,
// // // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
// // // //     ),
// // // //     onPressed: () async {
// // // //       setState(() => _isSubmitting = true);  // optional loading flag

// // // //       if (isLogin) {
// // // //         final loginData = LoginData(
// // // //           name: _usernameController.text.trim(),
// // // //           password: _passwordController.text,
// // // //         );
// // // //         final error = await context.read<UserProvider>().login(loginData);
// // // //         if (error == null) {
// // // //           // success
// // // //           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const HomeScreen()));
// // // //         } else {
// // // //           // show error
// // // //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error)));
// // // //         }
// // // //       } else {
// // // //         final signupData = SignupData(
// // // //           name: _nameController.text.trim(),
// // // //           password: _passwordController.text,
// // // //           // optionally other fields
// // // //         );
// // // //         final error = await context.read<UserProvider>().register(signupData);
// // // //         if (error == null) {
// // // //           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const HomeScreen()));
// // // //         } else {
// // // //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error)));
// // // //         }
// // // //       }

// // // //       setState(() => _isSubmitting = false);
// // // //     },
// // // //     child: _isSubmitting
// // // //         ? SizedBox(height: 24, width: 24, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.green))
// // // //         : Text(label),
// // // //   );
// // // // }

// // // // }
// // // import 'package:client_app/screen/login_screen/provider/user_provider.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // // import 'package:provider/provider.dart';
// // // import 'package:flutter_login/flutter_login.dart'; // for LoginData / SignupData
// // // import '../../../utility/constants.dart';
// // // import '../../screen/home_screen.dart';
// // // import 'package:client_app/screen/login_screen/provider/user_provider.dart';
// // // //import '../screen/login_screen/provider/user_provider.dart';

// // // class FarmFreshAuth extends StatefulWidget {
// // //   const FarmFreshAuth({Key? key}) : super(key: key);
// // //   @override
// // //   _FarmFreshAuthState createState() => _FarmFreshAuthState();
// // // }

// // // class _FarmFreshAuthState extends State<FarmFreshAuth>
// // //     with TickerProviderStateMixin {
// // //   bool showLogin = true;
// // //   bool _isSubmitting = false;

// // //   // controllers
// // //   final _nameController = TextEditingController();
// // //   final _usernameController = TextEditingController();
// // //   final _passwordController = TextEditingController();

// // //   // animation controllers omitted for brevity…

// // //   @override
// // //   void dispose() {
// // //     _nameController.dispose();
// // //     _usernameController.dispose();
// // //     _passwordController.dispose();
// // //     super.dispose();
// // //   }

// // //   Future<void> _handleAction() async {
// // //     setState(() => _isSubmitting = true);
// // //     final userProvider = context.read<UserProvider>();

// // //     if (showLogin) {
// // //       final data = LoginData(
// // //         name: _usernameController.text.trim(),
// // //         password: _passwordController.text,
// // //       );
// // //       final error = await userProvider.login(data);
// // //       if (error == null) {
// // //         Navigator.of(context).pushReplacement(
// // //             MaterialPageRoute(builder: (_) => const HomeScreen()));
// // //       } else {
// // //         ScaffoldMessenger.of(context)
// // //             .showSnackBar(SnackBar(content: Text(error)));
// // //       }
// // //     } else {
// // //       final data = SignupData.fromSignupForm(
// // //         name: _nameController.text.trim(),
// // //         password: _passwordController.text,
// // //       );
// // //       final error = await userProvider.register(data);
// // //       if (error == null) {
// // //         Navigator.of(context).pushReplacement(
// // //             MaterialPageRoute(builder: (_) => const HomeScreen()));
// // //       } else {
// // //         ScaffoldMessenger.of(context)
// // //             .showSnackBar(SnackBar(content: Text(error)));
// // //       }
// // //     }

// // //     setState(() => _isSubmitting = false);
// // //   }

// // //   Widget _actionButton(String label) {
// // //     return ElevatedButton(
// // //       style: ElevatedButton.styleFrom(
// // //         backgroundColor: Colors.white,
// // //         foregroundColor: Colors.green,
// // //         padding: const EdgeInsets.symmetric(vertical: 14),
// // //         minimumSize: const Size(double.infinity, 0),
// // //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
// // //       ),
// // //       onPressed: _isSubmitting ? null : _handleAction,
// // //       child: _isSubmitting
// // //           ? const SizedBox(
// // //               height: 24,
// // //               width: 24,
// // //               child: CircularProgressIndicator(
// // //                   strokeWidth: 2, color: Colors.green))
// // //           : Text(label, style: const TextStyle(fontSize: 16)),
// // //     );
// // //   }

// // //   Widget _styledField({
// // //     required String hint,
// // //     required TextEditingController controller,
// // //     bool obscure = false,
// // //   }) {
// // //     return TextFormField(
// // //       controller: controller,
// // //       obscureText: obscure,
// // //       decoration: InputDecoration(
// // //         hintText: hint,
// // //         filled: true,
// // //         fillColor: Colors.white.withOpacity(0.7),
// // //         contentPadding:
// // //             const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
// // //         border: OutlineInputBorder(
// // //           borderRadius: BorderRadius.circular(12),
// // //           borderSide: BorderSide.none,
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     // animations / background omitted for brevity...
// // //     return Scaffold(
// // //       body: Stack(
// // //         children: [
// // //           // Your animated background here...
// // //           Center(
// // //             child: SingleChildScrollView(
// // //               padding: const EdgeInsets.symmetric(horizontal: 24),
// // //               child: Column(
// // //                 children: [
// // //                   Image.asset('assets/images/logox.png', height: 80),
// // //                   const SizedBox(height: 16),
// // //                   Row(
// // //                     mainAxisAlignment: MainAxisAlignment.center,
// // //                     children: [
// // //                       ChoiceChip(
// // //                         label: const Text('Login'),
// // //                         selected: showLogin,
// // //                         onSelected: (_) {
// // //                           setState(() => showLogin = true);
// // //                         },
// // //                       ),
// // //                       const SizedBox(width: 16),
// // //                       ChoiceChip(
// // //                         label: const Text('Sign Up'),
// // //                         selected: !showLogin,
// // //                         onSelected: (_) {
// // //                           setState(() => showLogin = false);
// // //                         },
// // //                       ),
// // //                     ],
// // //                   ),
// // //                   const SizedBox(height: 24),
// // //                   Container(
// // //                     padding: const EdgeInsets.all(24),
// // //                     decoration: BoxDecoration(
// // //                       color: Colors.white.withOpacity(0.3),
// // //                       borderRadius: BorderRadius.circular(20),
// // //                       border: Border.all(color: Colors.white.withOpacity(0.5)),
// // //                     ),
// // //                     child: Column(
// // //                       children: [
// // //                         if (!showLogin) ...[
// // //                           _styledField(
// // //                               hint: 'Name', controller: _nameController),
// // //                           const SizedBox(height: 12),
// // //                         ],
// // //                         _styledField(
// // //                             hint: 'Username', controller: _usernameController),
// // //                         const SizedBox(height: 12),
// // //                         _styledField(
// // //                             hint: 'Password',
// // //                             controller: _passwordController,
// // //                             obscure: true),
// // //                         const SizedBox(height: 20),
// // //                         _actionButton(showLogin ? 'Login' : 'Sign Up'),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                   const SizedBox(height: 12),
// // //                   TextButton(
// // //                     onPressed: () {
// // //                       setState(() => showLogin = !showLogin);
// // //                     },
// // //                     child: Text(
// // //                       showLogin
// // //                           ? 'Don’t have an account? Sign up'
// // //                           : 'Have an account? Login',
// // //                       style: const TextStyle(color: Colors.white70),
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:client_app/screen/home_screen.dart';
// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import 'package:flutter_login/flutter_login.dart'; // for LoginData & SignupData
// // import '../login_screen/provider/user_provider.dart';
// // import '../../screen/home_screen.dart';
// // //import '../../home_screen.dart';

// // class FarmFreshAuth extends StatefulWidget {
// //   const FarmFreshAuth({Key? key}) : super(key: key);
// //   @override
// //   _FarmFreshAuthState createState() => _FarmFreshAuthState();
// // }

// // class _FarmFreshAuthState extends State<FarmFreshAuth>
// //     with TickerProviderStateMixin {
// //   bool isLogin = true;
// //   bool _isSubmitting = false;
// //   late AnimationController _bgAnimController;
// //   late Animation<double> _bgOffset;

// //   final _nameController = TextEditingController();
// //   final _userController = TextEditingController();
// //   final _passController = TextEditingController();

// //   @override
// //   void initState() {
// //     super.initState();
// //     _bgAnimController =
// //         AnimationController(vsync: this, duration: const Duration(seconds: 5))
// //           ..repeat(reverse: true);
// //     _bgOffset = Tween<double>(begin: -30, end: 30).animate(
// //         CurvedAnimation(parent: _bgAnimController, curve: Curves.easeInOut));
// //   }

// //   @override
// //   void dispose() {
// //     _bgAnimController.dispose();
// //     _nameController.dispose();
// //     _userController.dispose();
// //     _passController.dispose();
// //     super.dispose();
// //   }

// //   Future<void> _submitAuth() async {
// //     setState(() => _isSubmitting = true);
// //     final provider = context.read<UserProvider>();

// //     if (isLogin) {
// //       final data = LoginData(
// //           name: _userController.text.trim(), password: _passController.text);
// //       final error = await provider.login(data);
// //       if (error == null) {
// //         _navigateHome();
// //       } else {
// //         _showError(error);
// //       }
// //     } else {
// //       final data = SignupData.fromSignupForm(
// //         name: _nameController.text.trim(),
// //         password: _passController.text,
// //       );
// //       final error = await provider.register(data);
// //       if (error == null) {
// //         _navigateHome();
// //       } else {
// //         _showError(error);
// //       }
// //     }
// //     setState(() => _isSubmitting = false);
// //   }

// //   void _navigateHome() {
// //     Navigator.of(context)
// //         .pushReplacement(MaterialPageRoute(builder: (_) => const HomeScreen()));
// //   }

// //   void _showError(String msg) {
// //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
// //   }

// //   Widget _buildField(String hint, TextEditingController ctrl,
// //       {bool obscure = false}) {
// //     return TextFormField(
// //       controller: ctrl,
// //       obscureText: obscure,
// //       decoration: InputDecoration(
// //         hintText: hint,
// //         filled: true,
// //         fillColor: Colors.white.withOpacity(0.7),
// //         border: OutlineInputBorder(
// //             borderRadius: BorderRadius.circular(12),
// //             borderSide: BorderSide.none),
// //       ),
// //     );
// //   }

// //   Widget _buildAuthCard() {
// //     return AnimatedCrossFade(
// //       duration: const Duration(milliseconds: 400),
// //       crossFadeState:
// //           isLogin ? CrossFadeState.showFirst : CrossFadeState.showSecond,
// //       firstChild: _cardContent(loginMode: true),
// //       secondChild: _cardContent(loginMode: false),
// //     );
// //   }

// //   Widget _cardContent({required bool loginMode}) {
// //     return Column(
// //       children: [
// //         if (!loginMode) _buildField('Name', _nameController),
// //         const SizedBox(height: 12),
// //         _buildField('Username', _userController),
// //         const SizedBox(height: 12),
// //         _buildField('Password', _passController, obscure: true),
// //         const SizedBox(height: 20),
// //         SizedBox(
// //           width: double.infinity,
// //           child: ElevatedButton(
// //             onPressed: _isSubmitting ? null : _submitAuth,
// //             style: ElevatedButton.styleFrom(
// //               padding: const EdgeInsets.symmetric(vertical: 14),
// //               backgroundColor: Colors.white,
// //               foregroundColor: Colors.green,
// //               shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(30)),
// //             ),
// //             child: _isSubmitting
// //                 ? const SizedBox(
// //                     height: 24,
// //                     width: 24,
// //                     child: CircularProgressIndicator(
// //                         color: Colors.green, strokeWidth: 2))
// //                 : Text(loginMode ? 'Login' : 'Sign Up',
// //                     style: const TextStyle(fontSize: 16)),
// //           ),
// //         ),
// //       ],
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: AnimatedBuilder(
// //         animation: _bgOffset,
// //         builder: (ctx, child) {
// //           return Transform.translate(
// //             offset: Offset(0, _bgOffset.value),
// //             child: child,
// //           );
// //         },
// //         child: Container(
// //           decoration: const BoxDecoration(
// //             gradient: LinearGradient(
// //               colors: [Color(0xFF56ab2f), Color(0xFFa8e063)],
// //               begin: Alignment.topLeft,
// //               end: Alignment.bottomRight,
// //             ),
// //           ),
// //           child: Opacity(
// //             opacity: 0.16,
// //             child:
// //                 Image.asset('assets/images/bg_veggies.png', fit: BoxFit.cover),
// //           ),
// //         ),
// //       ),
// //       bottomNavigationBar: null,
// //       extendBodyBehindAppBar: true,
// //       body: Center(
// //         child: SingleChildScrollView(
// //           padding: const EdgeInsets.symmetric(horizontal: 24),
// //           child: Column(
// //             children: [
// //               const SizedBox(height: 100),
// //               FadeTransition(
// //                 opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
// //                     parent: _bgAnimController, curve: Curves.easeIn)),
// //                 child: Image.asset('assets/images/logox.png', height: 80),
// //               ),
// //               const SizedBox(height: 24),
// //               ToggleButtons(
// //                 isSelected: [isLogin, !isLogin],
// //                 onPressed: (i) => setState(() => isLogin = (i == 0)),
// //                 children: const [Text('Login'), Text('Sign Up')],
// //                 selectedColor: Colors.white,
// //                 fillColor: Colors.green.withOpacity(0.6),
// //                 borderRadius: BorderRadius.circular(20),
// //               ),
// //               const SizedBox(height: 24),
// //               Container(
// //                 padding: const EdgeInsets.all(24),
// //                 decoration: BoxDecoration(
// //                   color: Colors.white.withOpacity(0.3),
// //                   borderRadius: BorderRadius.circular(20),
// //                   border: Border.all(color: Colors.white70),
// //                 ),
// //                 child: _buildAuthCard(),
// //               ),
// //               const SizedBox(height: 12),
// //               TextButton(
// //                 onPressed: () => setState(() => isLogin = !isLogin),
// //                 child: Text(
// //                   isLogin
// //                       ? 'Don’t have an account? Sign up'
// //                       : 'Have account? Login',
// //                   style: const TextStyle(color: Colors.white70),
// //                 ),
// //               ),
// //               const SizedBox(height: 48),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
import 'package:client_app/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_login/flutter_login.dart'; // LoginData & SignupData
import '../login_screen/provider/user_provider.dart';
//import '../../home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _FarmFreshAuthState createState() => _FarmFreshAuthState();
}

class _FarmFreshAuthState extends State<LoginScreen>
    with TickerProviderStateMixin {
  bool isLogin = true;
  bool _isSubmitting = false;
  late AnimationController _bgController;
  late Animation<double> _bgOffset;

  final _nameController = TextEditingController();
  final _userController = TextEditingController();
  final _passController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _bgController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5))
          ..repeat(reverse: true);
    _bgOffset = Tween<double>(begin: -30, end: 30).animate(
      CurvedAnimation(parent: _bgController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _bgController.dispose();
    _nameController.dispose();
    _userController.dispose();
    _passController.dispose();
    super.dispose();
  }

  Future<void> _handleSubmit() async {
    setState(() => _isSubmitting = true);
    final provider = context.read<UserProvider>();

    if (isLogin) {
      final data = LoginData(
        name: _userController.text.trim(),
        password: _passController.text,
      );
      final error = await provider.login(data);
      if (error == null) {
        _navigateToHome();
      } else {
        _showSnack(error);
      }
    } else {
      final data = SignupData.fromSignupForm(
        name: _nameController.text.trim(),
        password: _passController.text,
      );
      final error = await provider.register(data);
      if (error == null) {
        _navigateToHome();
      } else {
        _showSnack(error);
      }
    }

    setState(() => _isSubmitting = false);
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const HomeScreen()),
    );
  }

  void _showSnack(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  Widget _field(String hint, TextEditingController ctrl,
      {bool obscure = false}) {
    return TextFormField(
      controller: ctrl,
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white.withOpacity(0.7),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _authCard() {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 300),
      crossFadeState:
          isLogin ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      firstChild: _buildCard(loginMode: true),
      secondChild: _buildCard(loginMode: false),
    );
  }

  Widget _buildCard({required bool loginMode}) {
    return Column(
      children: [
        if (!loginMode) _field('Name', _nameController),
        const SizedBox(height: 12),
        _field('Username', _userController),
        const SizedBox(height: 12),
        _field('Password', _passController, obscure: true),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _isSubmitting ? null : _handleSubmit,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
              backgroundColor: Color.fromARGB(255, 8, 15, 107),
              foregroundColor: const Color.fromARGB(255, 152, 239, 155),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: _isSubmitting
                ? const SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(
                        color: Color.fromARGB(255, 103, 205, 106),
                        strokeWidth: 2),
                  )
                : Text(
                    loginMode ? 'Login' : 'Sign Up',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //     gradient: LinearGradient(colors: [
      //   Color.fromARGB(255, 3, 51, 17), // light green
      //   Color(0xFF3CA55C), // yellow-green
      // ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      //
      child: Scaffold(
        // backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            // AnimatedBuilder(
            //   animation: _bgOffset,
            //   builder: (context, child) {
            //     return Transform.translate(
            //       offset: Offset(0, _bgOffset.value),
            //       child: child,
            //     );
            //   },
            //   child: Container(
            //     decoration: const BoxDecoration(
            //         // gradient: LinearGradient(
            //         //   colors: [
            //         //     Color.fromARGB(255, 6, 62, 230),
            //         //     Color.fromARGB(255, 185, 219, 144)
            //         //   ],
            //         //   begin: Alignment.topLeft,
            //         //   end: Alignment.bottomRight,
            //         // ),
            //         ),
            //     child: Opacity(
            //       opacity: 0.5,
            //       child: Image.asset(
            //         'assets/images/bg_veggies.png',
            //       ),
            //     ),
            //   ),
            // ),
            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const SizedBox(height: 100),
                    Image.asset('assets/images/greenexx.png'),
                    // FadeTransition(
                    //   opacity: 0.0,
                    //   // .animate(
                    //   //   CurvedAnimation(
                    //   //       parent: _bgController, curve: Curves.easeIn),
                    //   // ),
                    //   child:
                    //       Image.asset('assets/images/greenexx.png', height: 120),
                    // ),
                    const SizedBox(height: 24),
                    ToggleButtons(
                      isSelected: [isLogin, !isLogin],
                      onPressed: (i) => setState(() => isLogin = (i == 0)),
                      selectedColor: Colors.white,
                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                      fillColor: Color.fromARGB(255, 8, 15, 107),
                      borderRadius: BorderRadius.circular(20),
                      children: const [Text('Login'), Text('Sign Up')],
                    ),
                    const SizedBox(height: 24),
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 82, 173, 68)
                            .withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(179, 17, 17, 17)),
                      ),
                      child: _authCard(),
                    ),
                    const SizedBox(height: 12),
                    TextButton(
                      onPressed: () => setState(() => isLogin = !isLogin),
                      child: Text(
                        isLogin
                            ? 'Don’t have an account? Sign up'
                            : 'Have an account? Login',
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 48),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'dart:math';
// import 'dart:ui';
// import 'package:client_app/screen/home_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_login/flutter_login.dart';
// import '../login_screen/provider/user_provider.dart';
// import '../../screen/home_screen.dart';

// class FlipGlassAuth extends StatefulWidget {
//   const FlipGlassAuth({Key? key}) : super(key: key);
//   @override
//   _FlipGlassAuthState createState() => _FlipGlassAuthState();
// }

// class _FlipGlassAuthState extends State<FlipGlassAuth>
//     with SingleTickerProviderStateMixin {
//   bool showLogin = true;
//   bool _submitting = false;
//   late AnimationController _ctrl;
//   final _nameCtrl = TextEditingController();
//   final _userCtrl = TextEditingController();
//   final _passCtrl = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _ctrl = AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 600));
//   }

//   @override
//   void dispose() {
//     _ctrl.dispose();
//     _nameCtrl.dispose();
//     _userCtrl.dispose();
//     _passCtrl.dispose();
//     super.dispose();
//   }

//   void toggleCard() {
//     if (showLogin)
//       _ctrl.forward();
//     else
//       _ctrl.reverse();
//     setState(() => showLogin = !showLogin);
//   }

//   Future<void> _submit() async {
//     setState(() => _submitting = true);
//     final prov = context.read<UserProvider>();

//     if (showLogin) {
//       final err = await prov.login(LoginData(
//         name: _userCtrl.text.trim(),
//         password: _passCtrl.text,
//       ));
//       if (err == null)
//         Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (_) => const HomeScreen()));
//       else
//         _show(err);
//     } else {
//       final err = await prov.register(SignupData.fromSignupForm(
//           name: _nameCtrl.text.trim(), password: _passCtrl.text));
//       if (err == null)
//         Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (_) => const HomeScreen()));
//       else
//         _show(err);
//     }

//     setState(() => _submitting = false);
//   }

//   void _show(String msg) {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
//   }

//   Widget _glassCard(Widget child) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(20),
//       child: BackdropFilter(
//         filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//         child: Container(
//           width: 320,
//           padding: const EdgeInsets.all(24),
//           decoration: BoxDecoration(
//             color: Colors.white.withOpacity(0.2),
//             borderRadius: BorderRadius.circular(20),
//             border: Border.all(color: Colors.white.withOpacity(0.3)),
//           ),
//           child: child,
//         ),
//       ),
//     );
//   }

//   Widget _buildLoginForm() => Column(
//         children: [
//           TextFormField(
//               controller: _userCtrl,
//               decoration: const InputDecoration(hintText: 'Username')),
//           const SizedBox(height: 12),
//           TextFormField(
//               controller: _passCtrl,
//               obscureText: true,
//               decoration: const InputDecoration(hintText: 'Password')),
//           const SizedBox(height: 24),
//           ElevatedButton(
//             onPressed: _submitting ? null : _submit,
//             child: _submitting
//                 ? const CircularProgressIndicator()
//                 : const Text('Login'),
//           ),
//         ],
//       );

//   Widget _buildSignupForm() => Column(
//         children: [
//           TextFormField(
//               controller: _nameCtrl,
//               decoration: const InputDecoration(hintText: 'Name')),
//           const SizedBox(height: 12),
//           TextFormField(
//               controller: _userCtrl,
//               decoration: const InputDecoration(hintText: 'Username')),
//           const SizedBox(height: 12),
//           TextFormField(
//               controller: _passCtrl,
//               obscureText: true,
//               decoration: const InputDecoration(hintText: 'Password')),
//           const SizedBox(height: 24),
//           ElevatedButton(
//             onPressed: _submitting ? null : _submit,
//             child: _submitting
//                 ? const CircularProgressIndicator()
//                 : const Text('Sign Up'),
//           ),
//         ],
//       );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: GestureDetector(
//           onTap: toggleCard,
//           child: AnimatedBuilder(
//             animation: _ctrl,
//             builder: (_, __) {
//               final rot = _ctrl.value * pi;
//               final isFront = rot <= pi / 2;
//               return Transform(
//                 alignment: Alignment.center,
//                 transform: Matrix4.identity()
//                   ..setEntry(3, 2, 0.001)
//                   ..rotateY(rot),
//                 child: isFront
//                     ? _glassCard(_buildLoginForm())
//                     : Transform(
//                         alignment: Alignment.center,
//                         transform: Matrix4.rotationY(pi),
//                         child: _glassCard(_buildSignupForm()),
//                       ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
