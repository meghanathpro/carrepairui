import 'package:carrepairui/screens/reg_screen.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class BeginScreen extends StatefulWidget {
  const BeginScreen({super.key});

  @override
  State<BeginScreen> createState() => _BeginScreenState();
}

class _BeginScreenState extends State<BeginScreen> {
  @override
  void initState() {
    super.initState();
    _redirectToAnotherPage();
  }

  Future<void> _redirectToAnotherPage() async {
    await Future.delayed(const Duration(seconds: 3));

    // Wait for 2 seconds
    Navigator.of(context).push(_createRoute());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        children: [
          Center(
            child: LoadingAnimationWidget.threeArchedCircle(
                color: Theme.of(context).colorScheme.primary, size: 35),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 90,
                  height: 90,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "ILIGHT Car Care",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Your Car's Trusted ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Maintenance Expert",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/beginlogo.png',
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    foregroundColor: Theme.of(context).colorScheme.onSecondary,
                    textStyle: const TextStyle(fontSize: 14)),
                onPressed: () {
                  Navigator.of(context).push(_createRoute());
                },
                child: const Text('Continue'),
              ),
              const SizedBox(
                height: 20,
              )
              /* Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                            hintText: 'Enter mobile number',
                            enabledBorder: InputBorder.none),
                      ),
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    
                  ],
                ),
              ) */
            ],
          ),
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const RegisterScreen(),
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
