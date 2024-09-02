import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investo_app/data/app_data/exports.dart';
import 'package:investo_app/data/datasource/resources/app_color.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.sp, vertical: 21.sp),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppAssets.logo,
                    fit: BoxFit.scaleDown,
                  ),
                  SizedBox(width: 14.sp),
                  Text(AppStrings.investo,
                      style: AppStyles.extraBold(fontSize: 25.sp)),
                ],
              ),
              SizedBox(height: 41.sp),
              // Illustration
              Text(AppStrings.logIn,
                  textAlign: TextAlign.center,
                  style: AppStyles.extraBold(fontSize: 25.sp)),
              const SizedBox(height: 40),
              // Email TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Password TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  suffixIcon: const Icon(Icons.visibility_off),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Handle forgot password here
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Login Button
              ElevatedButton(
                onPressed: () {
                  // Handle login here
                },
                style: ElevatedButton.styleFrom(
                  minimumSize:
                      const Size(double.infinity, 50), // full-width button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text('Log In'),
              ),
              const SizedBox(height: 20),
              // OR Divider
              const Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Or'),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              // const SizedBox(height: 20),
              // // Google Login Button
              // ElevatedButton.icon(
              //   onPressed: () {
              //     // Handle Google login here
              //   },
              //   icon: Image.asset(
              //     'assets/google_logo.png', // replace with your Google logo asset
              //     height: 24,
              //     width: 24,
              //   ),
              //   label: const Text('Login in with Google'),
              //   style: ElevatedButton.styleFrom(
              //     foregroundColor: Colors.black,
              //     backgroundColor: Colors.white,
              //     minimumSize: const Size(double.infinity, 50),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(8.0),
              //       side: const BorderSide(color: Colors.grey),
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 20),
              // Register Now
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     const Text("Don’t have an account?"),
              //     TextButton(
              //       onPressed: () {
              //         // Handle registration here
              //       },
              //       child: const Text(
              //         'Register Now',
              //         style: TextStyle(fontWeight: FontWeight.bold),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
