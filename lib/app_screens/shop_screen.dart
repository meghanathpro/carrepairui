import 'package:carrepairui/app_screens/shopping_screen.dart';
import 'package:flutter/material.dart';
import 'package:carrepairui/app_screens/service_screen.dart';

class ShopScreen extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: ServiceScreen().drawerApp(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        elevation: 1,
        shadowColor: Theme.of(context).colorScheme.surface,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: const Icon(Icons.shopping_cart),
          ),
          InkWell(
            onTap: () => scaffoldKey.currentState?.openEndDrawer(),
            child: Container(
              margin: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: const Icon(
                Icons.person,
                size: 30,
                color: Color.fromARGB(255, 89, 145, 90),
              ),
            ),
          ),
        ],
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          Stack(
            children: [
              Center(
                child: Card(
                  color: const Color.fromARGB(193, 253, 169, 169),
                  elevation: 0,
                  child: SizedBox(
                    height: 160,
                    width: (MediaQuery.of(context).size.width) * 0.95,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Flat 20%",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w800),
                            ),
                            Text(
                              "off on",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w800),
                            ),
                            Text(
                              "all products",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                        const Spacer(),
                        Container(
                          margin: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/offer.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                    height: 160,
                    width: (MediaQuery.of(context).size.width) * 0.95,
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 12,
                          color: Colors.brown.shade400,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.circle,
                          size: 12,
                          color: Colors.grey.shade400,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.circle,
                          size: 12,
                          color: Colors.grey.shade400,
                        )
                      ],
                    )),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              "Categories",
              style: TextStyle(fontSize: 25, color: Colors.grey.shade700),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SmallCards(text1: "Filters", text2: "Coolant"),
              const SizedBox(width: 8),
              const SmallCards(text1: "Floor", text2: "Mats"),
              const SizedBox(width: 8),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        // Create and return the widget for the new screen here.
                        return ShoppingScreen();
                      },
                    ),
                  );
                },
                child: const SmallCards(text1: "Seat", text2: "Covers"),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmallCards(text1: "Car Audio", text2: "Systems"),
              SizedBox(width: 8),
              SmallCards(text1: "Dash", text2: "Cameras"),
              SizedBox(width: 8),
              SmallCards(text1: "Lighting", text2: "Accessories"),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmallCards(text1: "Cleaning", text2: "Tools"),
              SizedBox(width: 8),
              SmallCards(text1: "Wax", text2: "Polish"),
              SizedBox(width: 8),
              SmallCards(text1: "Engine Oil", text2: "Fluids"),
            ],
          )
        ],
      ),
    );
  }
}

class SmallCards extends StatelessWidget {
  final String text1;
  final String text2;
  const SmallCards({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: size.width * 0.25,
        height: 100,
        color: Colors.black12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text1,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.blueGrey.shade700),
            ),
            Text(
              text2,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.blueGrey.shade700),
            )
          ],
        ),
      ),
    );
  }
}
