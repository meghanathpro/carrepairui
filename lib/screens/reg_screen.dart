import 'package:carrepairui/screens/otp_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                TextFieldContainer(
                  child: TextField(
                    decoration: InputDecoration(
                        icon: const Icon(Icons.person),
                        iconColor: Theme.of(context).colorScheme.primary,
                        labelText: "Full Name",
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.onTertiary)),
                  ),
                ),
                TextFieldContainer(
                  child: TextField(
                    decoration: InputDecoration(
                        icon: const Icon(Icons.email),
                        iconColor: Theme.of(context).colorScheme.primary,
                        labelText: "Email Address",
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.onTertiary)),
                  ),
                ),
                TextFieldContainer(
                  child: TextField(
                    decoration: InputDecoration(
                        icon: const Icon(Icons.phone_android),
                        iconColor: Theme.of(context).colorScheme.primary,
                        labelText: "Phone Number",
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.onTertiary)),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                "We'll send verification code on above given number",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onTertiary,
                    fontSize: 12),
              ),
              const SizedBox(height: 20),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                    minimumSize: const Size(double.maxFinite, 60),
                    shape: const ContinuousRectangleBorder()),
                onPressed: () {
                  Navigator.of(context).push(_createRoute());
                },
                child: const Text(
                  "Continue",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.9,
      child: child,
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const VerificationScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0); // Start from right
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
