import 'package:flutter/material.dart';
import 'package:flutter_drawer_flutter/bottom_bar.dart';
import 'package:flutter_drawer_flutter/cardsForUi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calander App',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(129, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu, color: Colors.black),
            );
          },
        ),
        title: Center(
          child: const Text(
            'Hi , Hamza Hafeez',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'You Cannot Enter On Profile',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  duration: Duration(seconds: 1),
                  backgroundColor: Colors.amber,
                ),
              );
            },
            icon: Icon(Icons.person_outline, color: Colors.black, size: 35),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFFFB51B)),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Icon(Icons.person_outline_rounded, size: 40),
                    SizedBox(height: 15),
                    Text(
                      'My Journal',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            listTile(context, 'Home', Icons.home),
            SizedBox(height: 10),
            listTile(context, 'Journal', Icons.book),
            SizedBox(height: 10),
            listTile(context, 'Profile', Icons.person),
            SizedBox(height: 10),
            listTile(context, 'Setting', Icons.settings),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: height * 0.01),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(
                    'Mon',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Text(
                    'Tue',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Text(
                    'Wed',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Text(
                    'Thu',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Text(
                    'Fri',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Text(
                    'Sat',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Text(
                    'Sun',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Container(
                    height: height * 0.05,
                    width: width * 0.1,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(90, 158, 158, 158),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Center(
                      child: Text(
                        '6',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.05,
                    width: width * 0.1,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(90, 158, 158, 158),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Center(
                      child: Text(
                        '7',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.05,
                    width: width * 0.1,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(90, 158, 158, 158),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Center(
                      child: Text(
                        '8',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.05,
                    width: width * 0.1,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(90, 158, 158, 158),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Center(
                      child: Text(
                        '9',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.05,
                    width: width * 0.1,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(90, 158, 158, 158),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Center(
                      child: Text(
                        '10',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.05,
                    width: width * 0.1,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(90, 158, 158, 158),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Center(
                      child: Text(
                        '11',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.05,
                    width: width * 0.1,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(90, 158, 158, 158),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Center(
                      child: Text(
                        '12',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.04),
              Row(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    'My Journal',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.03),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: height * 0.3,
                      width: width * 0.09,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assest/cardimage.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: height * 0.3,
                      width: width * 0.01,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(120, 121, 85, 72),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            'Evening',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.03),
              Row(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    'Quick Journal',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              SizedBox(height: height * 0.03),
              // ListView
              SizedBox(
                height: height * 0.18,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CardUI(
                      title: 'Pause & reflect 🌿',
                      question: 'What are you grateful\nfor today?',
                      tag: 'Personal',
                      color: const Color.fromARGB(83, 255, 64, 128),
                    ),

                    SizedBox(width: width * 0.02),
                    CardUI(
                      title: 'Set Intentions 🌞',
                      question: 'How do you want to\nfeel today?',
                      tag: 'Family',
                      color: const Color.fromARGB(82, 121, 85, 72),
                    ),

                    SizedBox(width: width * 0.02),
                    CardUI(
                      title: 'Check in 💭',
                      question: 'How are you feeling\nright now?',
                      tag: 'Personal',
                      color: const Color.fromARGB(122, 223, 64, 251),
                    ),

                    SizedBox(width: width * 0.02),
                    CardUI(
                      title: 'Look ahead ✨',
                      question: 'What are you looking\nforward to?',
                      tag: 'Future',
                      color: const Color.fromARGB(122, 255, 235, 59),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}

Widget listTile(BuildContext context, String name, IconData icons) {
  return ListTile(
    leading: Icon(icons, size: 30),
    title: Text(
      name,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    onTap: () {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Your Clicked On $name'),
          duration: Duration(milliseconds: 600),
        ),
      );
    },
  );
}
