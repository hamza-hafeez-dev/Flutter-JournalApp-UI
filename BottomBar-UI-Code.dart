import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  // Selected item
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.white,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [

          // HOME
          GestureDetector(
            onTap: () {

              setState(() {
                selectedIndex = 0;
              });

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Home clicked"),
                  duration: Duration(seconds: 1),
                ),
              );
            },

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Icon(
                  Icons.home_outlined,
                  size: 25,

                  color: selectedIndex == 0
                      ? Colors.amber
                      : Colors.grey,
                ),

                Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 10,

                    color: selectedIndex == 0
                        ? Colors.amber
                        : Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          // EXPLORE
          GestureDetector(
            onTap: () {

              setState(() {
                selectedIndex = 1;
              });

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Explore clicked"),
                  duration: Duration(seconds: 1),
                ),
              );
            },

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Icon(
                  Icons.explore_outlined,
                  size: 25,

                  color: selectedIndex == 1
                      ? Colors.amber
                      : Colors.grey,
                ),

                Text(
                  "Explore",
                  style: TextStyle(
                    fontSize: 10,

                    color: selectedIndex == 1
                        ? Colors.amber
                        : Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          // PLUS BUTTON
          GestureDetector(
            onTap: () {

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Add Journal"),
                  duration: Duration(seconds: 1),
                ),
              );
            },

            child: Container(
              height: 45,
              width: 45,

              decoration: const BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
              ),

              child: const Icon(
                Icons.add,
                size: 28,
              ),
            ),
          ),

          // JOURNEY
          GestureDetector(
            onTap: () {

              setState(() {
                selectedIndex = 2;
              });

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Journey clicked"),
                  duration: Duration(seconds: 1),
                ),
              );
            },

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Icon(
                  Icons.book_outlined,
                  size: 25,

                  color: selectedIndex == 2
                      ? Colors.amber
                      : Colors.grey,
                ),

                Text(
                  "Journey",
                  style: TextStyle(
                    fontSize: 10,

                    color: selectedIndex == 2
                        ? Colors.amber
                        : Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          // PROFILE
          GestureDetector(
            onTap: () {

              setState(() {
                selectedIndex = 3;
              });

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Profile clicked"),
                  duration: Duration(seconds: 1),
                ),
              );
            },

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Icon(
                  Icons.person_outline,
                  size: 25,

                  color: selectedIndex == 3
                      ? Colors.amber
                      : Colors.grey,
                ),

                Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 10,

                    color: selectedIndex == 3
                        ? Colors.amber
                        : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
