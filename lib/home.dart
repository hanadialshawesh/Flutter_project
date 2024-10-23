import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(), // Main page of the app
    );
  }
}

// The content of the home page remains in a separate widget
class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold wraps the content of the
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.person, size: 30, color: Colors.brown[700]),
                  Text(
                    'Mind & Mugs',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Ageo',
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      letterSpacing: 1.4,
                    ),
                  ),
                  Icon(Icons.help_outline_sharp,
                      size: 25, color: Colors.brown[400]),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Welcome,',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepOrange[800],
                  letterSpacing: 0.5,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10),
              Text(
                'Hanadi Alshawesh',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.brown[900],
                  letterSpacing: 0.7,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'assets/images/offer2.png', // This loads the image using the constant
                  width: 900, // Set the width of the image
                  height: 200,
                ),
              ),
              SizedBox(height: 30),
              // Row for 3 circles and "More" text
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(Icons.circle, size: 5),
                      SizedBox(width: 5),
                      Icon(Icons.circle, size: 5),
                      SizedBox(width: 5),
                      Icon(Icons.circle, size: 5),
                    ],
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NextPage()),
                      );
                    },
                    child: Text(
                      'to see More',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1),
              // New Row for three small pictures with text below each
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/images/room1.png',
                          width: 130, height: 130), // First small image
                      SizedBox(height: 0),
                      Text('Public_space'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/images/room2.png',
                          width: 130, height: 130), // Second small image
                      SizedBox(height: 0),
                      Text('Quiet_room'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/images/room3.png',
                          width: 130, height: 130), // Third small image
                      SizedBox(height: 0),
                      Text('outdoor_study'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Simple Next Page
class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Next Page')),
      body: Center(
        child: Text('Welcome to the Next Page!'),
      ),
    );
  }
}

// Move the StatefulWidget (MyHomePage) down here
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0; // Keeps track of the selected tab

  // Define the pages corresponding to each tab
  final List<Widget> _pages = [
    HomePageContent(), // The content of the home page
    Center(child: Text('Calendar Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Room Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Menu Page', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.grey[200], // Set background color for the entire page

      // Display the selected page content
      body: _pages[currentIndex],

      // BottomNavigationBar with black background color for everything
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black, // Set black background
        currentIndex: currentIndex, // Current selected tab
        onTap: (index) {
          setState(() {
            currentIndex = index; // Update the index on tap
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: Colors.deepOrange[800]), // Home icon with white color
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today,
                color:
                    Colors.deepOrange[800]), // Calendar icon with white color
            label: 'Event Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.meeting_room,
                color: Colors.deepOrange[800]), // Room icon with white color
            label: 'Room',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu,
                color: Colors.deepOrange[800]), // Menu icon with white color
            label: 'Menu',
          ),
        ],
        selectedItemColor: Colors.red, // Keep selected item red
        unselectedItemColor: Colors.black12, // Unselected item with low opacity
      ),
    );
  }
}
