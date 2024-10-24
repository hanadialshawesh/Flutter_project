// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const Cafe());
}

class Cafe extends StatelessWidget {
  const Cafe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: const StudyRoom(),
    );
  }
}

// Predefined
class StudyRoom extends StatelessWidget {
  const StudyRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: const Color.fromARGB(255, 29, 25, 21),
        title: const Text(
          "Study Room",
          style: TextStyle(
            color: Color.fromARGB(255, 193, 170, 144),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: const Color.fromARGB(255, 193, 170, 144),
          iconSize: 25,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              color: const Color.fromARGB(255, 193, 170, 144),
              child: const Text(
                "Welcome to the Study Cafe! Find your space and focus on your studies in a peaceful environment.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 29, 25, 21),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Room 1: Quiet Study
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 105, 84, 65),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color.fromARGB(255, 193, 170, 144),
                  width: 3.0,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(12)),
                    child: Image.asset(
                      "assets/images/room2.png",
                      fit: BoxFit.cover,
                      height: 150,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Quiet Study Room",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 193, 170, 144),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      "A peaceful and serene space designed for focused, individual study. This room ensures minimal distractions, providing the perfect environment to concentrate on your work in silence. Ideal for students or professionals who need to dive deep into their studies or projects without interruption.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Tooltip(
                          message: "Wifi Available",
                          child:
                              Icon(Icons.wifi, color: Colors.white, size: 20),
                        ),
                        SizedBox(width: 8),
                        Tooltip(
                          message: "Power Supply",
                          child:
                              Icon(Icons.power, color: Colors.white, size: 20),
                        ),
                        SizedBox(width: 8),
                        Tooltip(
                          message: "Quiet area",
                          child: Icon(Icons.volume_off,
                              color: Colors.white, size: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Room 2: Group Study
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 105, 84, 65),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color.fromARGB(255, 193, 170, 144),
                  width: 3.0,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(12)),
                    child: Image.asset(
                      "assets/images/PHOTO-2024-10-24-01-33-47 (3).png",
                      fit: BoxFit.cover,
                      height: 150,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Group Study Room",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 193, 170, 144),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      "This room is designed for group collaborations, meetings, or study sessions with classmates or colleagues. Equipped with comfortable seating and ample workspace, it's the ideal spot to discuss ideas, brainstorm, or prepare for group presentations in a focused yet relaxed setting.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Tooltip(
                          message: "Wifi Available",
                          child:
                              Icon(Icons.wifi, color: Colors.white, size: 20),
                        ),
                        SizedBox(width: 8),
                        Tooltip(
                          message: "Group Seating",
                          child:
                              Icon(Icons.group, color: Colors.white, size: 20),
                        ),
                        SizedBox(width: 8),
                        Tooltip(
                          message: "Power Supply",
                          child:
                              Icon(Icons.power, color: Colors.white, size: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Room 3: Open Discussion
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 105, 84, 65),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color.fromARGB(255, 193, 170, 144),
                  width: 3.0,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(12)),
                    child: Image.asset(
                      "assets/images/room1.png",
                      fit: BoxFit.cover,
                      height: 150,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Open Discussion Room",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 193, 170, 144),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      "An open and casual area perfect for those who thrive in a more social or interactive atmosphere. Whether you're working on a project or catching up with friends, this space provides a dynamic environment with a bit more energy and conversation flowing around you.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Tooltip(
                          message: "Wifi Available",
                          child:
                              Icon(Icons.wifi, color: Colors.white, size: 20),
                        ),
                        SizedBox(width: 8),
                        Tooltip(
                          message: "Group Seating",
                          child: Icon(Icons.group_work,
                              color: Colors.white, size: 20),
                        ),
                        SizedBox(width: 8),
                        Tooltip(
                          message: "Discussion area",
                          child:
                              Icon(Icons.chat, color: Colors.white, size: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Room 4: Outdoor Study Area
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 105, 84, 65),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color.fromARGB(255, 193, 170, 144),
                  width: 3.0,
                ),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(12)),
                    child: Image.asset(
                      "assets/images/room3.png",
                      fit: BoxFit.cover,
                      height: 150,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Outdoor Study Area",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 193, 170, 144),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      "Enjoy fresh air and natural surroundings while staying productive in our outdoor study area. This space combines the benefits of nature with the convenience of a well-equipped workspace, ideal for those who prefer a relaxed, open-air environment to read, study, or work on creative tasks.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Tooltip(
                          message: " Wifi Available",
                          child:
                              Icon(Icons.wifi, color: Colors.white, size: 20),
                        ),
                        SizedBox(width: 8),
                        Tooltip(
                          message: "Open area",
                          child: Icon(Icons.wb_sunny,
                              color: Colors.white, size: 20),
                        ),
                        SizedBox(width: 8),
                        Tooltip(
                          message: "coffee",
                          child: Icon(Icons.local_cafe,
                              color: Colors.white, size: 20),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
