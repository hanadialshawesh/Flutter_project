import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

// The content of the home page remains in a separate widget
class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                'assets/images/offer2.png',
                width: 900,
                height: 200,
              ),
            ),
            SizedBox(height: 30),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset('assets/images/room1.png',
                        width: 130, height: 130),
                    SizedBox(height: 0),
                    Text('Public_space'),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/images/room2.png',
                        width: 130, height: 130),
                    SizedBox(height: 0),
                    Text('Quiet_room'),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/images/room3.png',
                        width: 130, height: 130),
                    SizedBox(height: 0),
                    Text('outdoor_study'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  final List<Widget> _pages = [
    HomePageContent(),
    Center(child: Text('Calendar Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Menu Page', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey[200],
      
      body: _pages[currentIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.brown[800]),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, color: Colors.brown[800]),
            label: 'Event Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: Colors.brown[800]),
            label: 'Menu',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
