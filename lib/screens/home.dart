import 'package:flutter/material.dart';
import 'package:mech_app/model/mech.dart';
import 'package:mech_app/widgets/mechanicBox.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    Home(),
    const NearBy(),
    const RatePage(),
    const ProfilePage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.purple,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.place_outlined,
                    color: Colors.black,
                    size: 35,
                  )
                : const Icon(
                    Icons.place_outlined,
                    color: Colors.black,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.rocket_launch,
                    color: Colors.black,
                    size: 35,
                  )
                : const Icon(
                    Icons.rocket_launch,
                    color: Colors.black,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 35,
                  )
                : const Icon(
                    Icons.person_outline,
                    color: Colors.black,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 4;
              });
            },
            icon: pageIndex == 4
                ? const Icon(
                    Icons.settings,
                    color: Colors.black,
                    size: 35,
                  )
                : const Icon(
                    Icons.settings_applications,
                    color: Colors.black,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String title = 'Mechapro';

  final items = Mechapro.getmechapro();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Mechapro',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return mechBox(item: items[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NearBy extends StatelessWidget {
  const NearBy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class RatePage extends StatelessWidget {
  const RatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Page Number 3",
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
