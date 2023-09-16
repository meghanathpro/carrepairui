import 'package:flutter/material.dart';

class RoadAssistanceForm extends StatelessWidget {
  const RoadAssistanceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Text('Roadside Assistance Request'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Card(
                color: Colors.white,
                child: SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'NISSAN ALTIMA - A10234',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "2.5L Sport, Super Black",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        child: const Icon(
                          Icons.arrow_drop_down,
                          size: 35,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Contact Information (Alternate):",
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: TextFieldContainer(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '(Optional)',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Theme.of(context).colorScheme.primary),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Current Location (Map):",
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: SizedBox(
                height: 80,
                width: MediaQuery.of(context).size.width * 0.9,
                child: const Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.location_pin,
                              size: 30,
                            ),
                            Text("Select here")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Additional Location Details :",
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: TextFieldContainer(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '(Optional) e.g., nearby landmark',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Theme.of(context).colorScheme.primary),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Type of Assistance Needed :",
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: TextFieldContainer(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'e.g., Emergency Repairs,Towing Services..',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Theme.of(context).colorScheme.primary),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Additional Comments or Notes :",
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: TextFieldContainer(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '(Optional) any additional information..',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Theme.of(context).colorScheme.primary),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Attach Photos :",
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: SizedBox(
                height: 90,
                width: MediaQuery.of(context).size.width * 0.9,
                child: const Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.camera_alt,
                              size: 34,
                            ),
                            Text("(Optional)")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.redAccent.shade200,
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Submit Request",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
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
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: size.width * 0.95,
      child: child,
    );
  }
}
