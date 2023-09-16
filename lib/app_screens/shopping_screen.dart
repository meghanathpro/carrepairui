import 'package:carrepairui/app_screens/service_screen.dart';
import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  ShoppingScreen({super.key});

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              color: Colors.black12,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const CategoryCard(
                      text: 'Coolants',
                    ),
                    const CategoryCard(
                      text: 'Floor Mats',
                    ),
                    Card(
                      color: Colors.black,
                      margin: const EdgeInsets.all(10),
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        child: const Text(
                          "Seat Covers",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              letterSpacing: 1),
                        ),
                      ),
                    ),
                    const CategoryCard(
                      text: 'Car Audio Systems',
                    ),
                    const CategoryCard(
                      text: 'Dash Cameras',
                    ),
                    const CategoryCard(
                      text: 'Lighting Accessories',
                    ),
                    const CategoryCard(
                      text: 'Cleaning Tools',
                    ),
                    const CategoryCard(
                      text: 'Wax Polish',
                    ),
                    const CategoryCard(
                      text: 'Engine Oil',
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.all(10),
                width: 150,
                child: const Card(
                  child: Row(
                    children: [
                      Icon(
                        Icons.filter_alt_outlined,
                        size: 35,
                      ),
                      Text(
                        "Filters",
                        style: TextStyle(fontSize: 24),
                      ),
                      Icon(
                        Icons.sort,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ProductWidget(
                          imagename: 'assets/images/img1.jpg',
                          text1: "Gorla Gear",
                          price: "\$49.99"),
                      ProductWidget(
                          imagename: 'assets/images/img2.jpg',
                          text1: "Caterpillar",
                          price: "\$48.99")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ProductWidget(
                          imagename: 'assets/images/img3.jpg',
                          text1: "Luckyman Club",
                          price: "\$67.99"),
                      ProductWidget(
                          imagename: 'assets/images/img4.jpg',
                          text1: "Covercraft",
                          price: "\$39.99")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ProductWidget(
                          imagename: 'assets/images/img3.jpg',
                          text1: "Luckyman Club",
                          price: "\$67.99"),
                      ProductWidget(
                          imagename: 'assets/images/img4.jpg',
                          text1: "Covercraft",
                          price: "\$39.99")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
  final String imagename, text1, price;
  const ProductWidget({
    super.key,
    required this.imagename,
    required this.text1,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.43,
        height: 230,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imagename,
                    width: 150,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  text1,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  price,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ));
  }
}

class CategoryCard extends StatelessWidget {
  final String text;
  const CategoryCard({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Container(
          padding: const EdgeInsets.all(4),
          child: Text(
            text,
            style:
                const TextStyle(fontWeight: FontWeight.w500, letterSpacing: 1),
          )),
    );
  }
}
