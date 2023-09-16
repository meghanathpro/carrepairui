import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServiceScreen extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: drawerApp(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.surface,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 30),
            child: const Icon(Icons.notifications_none, size: 30),
          ),
          InkWell(
            onTap: () => scaffoldKey.currentState?.openEndDrawer(),
            child: Container(
                margin: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade200,
                ),
                child: const Icon(
                  Icons.person,
                  size: 30,
                  color: Color.fromARGB(255, 89, 145, 90),
                )),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                  ),
                  border:
                      Border.all(color: Theme.of(context).colorScheme.primary),
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 20, top: 10, right: 1),
                width: 110,
                height: 50,
                child: const Text(
                  "01 | Car",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                  ),
                  border:
                      Border.all(color: Theme.of(context).colorScheme.primary),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(left: 10),
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                  right: 20,
                  top: 10,
                ),
                width: 120,
                height: 50,
                child: const Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 213, 206, 227),
                      foregroundImage: AssetImage(
                        'assets/images/car1.png',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "ADD CAR",
                        style: TextStyle(color: Colors.black),
                      )))
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20),
            child: const Text(
              "Insurance & Taxes :",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
              border: Border.all(color: Theme.of(context).colorScheme.primary),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: 80,
            child: Row(
              children: [
                Icon(
                  Icons.library_books,
                  size: 50,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 20),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Insurance Expiring Soon!!",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "10-10-2023",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
              border: Border.all(color: Theme.of(context).colorScheme.primary),
              color: Colors.white,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: const Icon(
                    Icons.calendar_today,
                    size: 30,
                  ),
                ),
                const Text("My Bookings",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          Container(
            color: Colors.grey.shade100,
            margin: const EdgeInsets.only(top: 40),
            padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      size: 30,
                    ),
                    Text('Schedule'),
                    Text('Service'),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.calculate,
                      size: 30,
                    ),
                    Text('Cost'),
                    Text('Calculator')
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.history,
                      size: 30,
                    ),
                    Text('Service'),
                    Text('History')
                  ],
                )
              ],
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 245, 245, 245),
            padding:
                const EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 30),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.credit_card,
                      size: 30,
                    ),
                    Text('Payment'),
                    Text('History'),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.location_pin,
                      size: 30,
                    ),
                    Text('Service'),
                    Text('Locator')
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.car_crash,
                      size: 30,
                    ),
                    Text('Road'),
                    Text('Service')
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Drawer drawerApp() {
    return Drawer(
        child: SafeArea(
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(45)),
                  child: const Icon(
                    Icons.person_2,
                    size: 45,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "User Name",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const Text("View Profile", style: TextStyle(fontSize: 12))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20),
            child: Wrap(
              runSpacing: 16,
              children: [
                ListTile(
                  leading: const FaIcon(FontAwesomeIcons.house),
                  title: const Text("Home"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.verified_user,
                    size: 28,
                  ),
                  title: const Text("My Bookings"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const FaIcon(FontAwesomeIcons.car),
                  title: const Text("My Cars"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const FaIcon(FontAwesomeIcons.gift),
                  title: const Text("Orders"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const FaIcon(FontAwesomeIcons.city),
                  title: const Text("My Addresses"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.mail,
                    size: 28,
                  ),
                  title: const Text("Contact us"),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
