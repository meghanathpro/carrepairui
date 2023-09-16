import 'package:carrepairui/app_screens/road_assist.dart';
import 'package:carrepairui/app_screens/service_screen.dart';
import 'package:carrepairui/app_screens/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: const Column(
        children: [
          Spacer(),
          Center(child: ServiceCard()),
          SizedBox(
            height: 10,
          ),
          ShoppingCard(),
          SizedBox(
            height: 10,
          ),
          RoadSideAssistanceCard(),
          Spacer(),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        Navigator.of(context).push(_createRouteService());
      },
      child: Card(
        elevation: 4,
        color: Theme.of(context).colorScheme.tertiary,
        child: SizedBox(
          width: size.width * 0.95,
          height: size.height * 0.23,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: const Text('Car Service',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cleaning and Detailing Services,",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Maintenance and Repair,",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Battery Services",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(left: 10, bottom: 10),
                    child: Icon(
                      Icons.arrow_forward_rounded,
                      size: 30,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  )
                ],
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/car.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShoppingCard extends StatelessWidget {
  const ShoppingCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        Navigator.of(context).push(_createRoute());
      },
      child: Card(
        elevation: 4,
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: SizedBox(
          width: size.width * 0.95,
          height: size.height * 0.23,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: const Text('Auto Accessories & Parts',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Interior & Exterior Accessories,",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Delivery and Installation at",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          " your door step",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                      margin: const EdgeInsets.only(left: 10, bottom: 10),
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        size: 30,
                        color: Theme.of(context).colorScheme.onPrimary,
                      )
                          .animate()
                          .slideX(
                              delay: 500.ms,
                              end: 0.5,
                              duration: 500.ms,
                              curve: Curves.easeInSine)
                          .slideX(end: -0.5, delay: 1000.ms))
                ],
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/shop.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoadSideAssistanceCard extends StatelessWidget {
  const RoadSideAssistanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const RoadAssistanceForm()));
      },
      child: Card(
        elevation: 4,
        color: Theme.of(context).colorScheme.tertiaryContainer,
        child: SizedBox(
          width: size.width * 0.95,
          height: size.height * 0.23,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: const Text('Roadside Assistance',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Emergency Repairs and ",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Towing Services,Tire Services",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Assistance to the Location",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(left: 10, bottom: 10),
                    child: Icon(
                      Icons.warning_amber_rounded,
                      size: 30,
                      color: Colors.red.shade900,
                    ).animate().shake(duration: const Duration(seconds: 10)),
                  )
                ],
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/down.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ShopScreen(),
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

Route _createRouteService() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ServiceScreen(),
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
