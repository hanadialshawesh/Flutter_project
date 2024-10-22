import 'package:flutter/material.dart';


void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            // Changed to Column to stack elements vertically
            crossAxisAlignment:
                CrossAxisAlignment.stretch, // Make the text stretch
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Align icons left and right
                children: [
                  Icon(Icons.person, size: 30, color: Colors.brown[700]),
                  Text(
                    'Mind & Mugs',
                    style: TextStyle(
                      fontSize: 23,
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
              SizedBox(height: 20), // Space between the row and the new text
              Text(
                'Welcome,',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepOrange[800],
                  letterSpacing: 0.5,
                ),
                textAlign: TextAlign.left, // Center-align the new text
              ),
              SizedBox(height: 1), // Space between the row and the new text
               Text(
                'Hanadi Alshawesh',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.brown[900],
                  letterSpacing: 0.7,
                ),
                textAlign: TextAlign.left, // Center-align the new text
              ),
              SizedBox(height: 20), // Space before the image
              Center(
                child: Container(
                  width: 250, // Adjust the width of the rectangle
                  height: 150, // Adjust the height of the rectangle
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), // Rounded corners
                    image: DecorationImage(
                      image: NetworkImage(
                        'C:\Users\N000o\Documents\flutter\projects\flutter_projecct\lib\offer2.png', // Replace with your image URL
                      ),
                      fit: BoxFit.cover, // Cover the container

                    ),
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
