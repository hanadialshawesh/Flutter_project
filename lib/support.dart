
import 'package:flutter/material.dart';

class HelpSupport extends StatefulWidget {
const HelpSupport({Key? key}) : super(key: key);

@override
_HelpSupportState createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> {
final TextEditingController _textController = TextEditingController();

@override
void dispose() {
_textController.dispose();
super.dispose();
}

void _handleSubmit() {
String issueDescription = _textController.text;
// Handle the submit action, e.g., send the issue description to a server or display a message
print('Issue submitted: $issueDescription');
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(content: Text('Issue submitted: $issueDescription')),
);
_textController.clear();
}

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
elevation: 20,
title: const Text("Mind & Mugs"),
centerTitle: true,
backgroundColor: const Color.fromARGB(255, 29, 25, 21),
leading: IconButton(
onPressed: () {
Navigator.pop(context);
},
icon: const Icon(
Icons.arrow_back,
size: 22,
color: Color.fromARGB(255, 193, 170, 144),
),
),
),
body: SingleChildScrollView(
child: Padding(
padding: const EdgeInsets.all(20.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Container(
margin:
const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
padding: const EdgeInsets.all(11),
width: 455,
decoration: BoxDecoration(
border: Border.all(
color: Color.fromARGB(255, 171, 138, 114), width: 10),
borderRadius: BorderRadius.circular(65),
color: const Color.fromARGB(255, 96, 67, 24),
),
child: const Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Icon(
Icons.search,
size: 22,
color: Color.fromARGB(255, 171, 138, 114),
),
const SizedBox(width: 10), // Space between icon and text
const Text(
"How can we help you?",
textAlign: TextAlign.center,
style: TextStyle(
fontSize: 27,
color: Colors.white,
),
),
],
),
),
const SizedBox(height: 20),
Container(
width: 955,
child: TextField(
controller: _textController,
decoration: InputDecoration(
labelText: 'Describe your issue',
labelStyle: const TextStyle(color: Colors.white),
filled: true,
fillColor: const Color.fromARGB(255, 96, 67, 24),
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(45),
),
focusedBorder: OutlineInputBorder(
borderSide: const BorderSide(
color: Color.fromARGB(255, 171, 138, 114), width: 10),
borderRadius: BorderRadius.circular(65),
),
),
maxLines: 5,
style: const TextStyle(color: Colors.white),
),
),
const SizedBox(height: 20),
Center(
child: ElevatedButton(
onPressed: _handleSubmit,
style: ElevatedButton.styleFrom(
backgroundColor: const Color.fromARGB(255, 171, 138, 114),
padding: const EdgeInsets.symmetric(
horizontal: 30, vertical: 15),
textStyle: const TextStyle(fontSize: 18),
),
child: const Text("Submit"),
),
),
const SizedBox(height: 20),
// Replace the Row widget with this Column widget in your existing code
Column(
children: [
// FAQ Container
Container(
padding: const EdgeInsets.all(11),
margin: const EdgeInsets.all(11),
decoration: BoxDecoration(
border: Border.all(
color: Color.fromARGB(255, 171, 138, 114), width: 10),
borderRadius: BorderRadius.circular(45),
color: const Color.fromARGB(255, 96, 67, 24),
),
child: Column(
children: [
const Text(
"FAQ",
textAlign: TextAlign.center,
style: TextStyle(
fontSize: 27,
color: Colors.white,
),
),
const SizedBox(height: 5),
const Image(
image: AssetImage('assets/images/FAQ.jpg'),
width: 400,
height: 500,
),
const SizedBox(height: 5),
const Text(
'Frequently Asked Questions (FAQ)',
style: TextStyle(
fontSize: 22, fontWeight: FontWeight.bold),
),
const SizedBox(height: 5),
Container(
padding: const EdgeInsets.all(8),
decoration: BoxDecoration(
border: Border.all(
color: Color.fromARGB(255, 171, 138, 114),
width: 10),
borderRadius: BorderRadius.circular(45),
color: const Color.fromARGB(255, 96, 67, 24),
),
child: const Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'1. What is the Study Coffee App?\nA platform to find coffee shops for studying or working.',
style: TextStyle(color: Colors.white),
),
SizedBox(height: 10),
Text(
'2. How do I find a coffee shop near me?\nEnable location services to see nearby coffee shops.',
style: TextStyle(color: Colors.white),
),
SizedBox(height: 10),
Text(
'3. Can I see the amenities offered by each coffee shop?\nYes, details include Wi-Fi, power outlets, and more.',
style: TextStyle(color: Colors.white),
),
SizedBox(height: 10),
Text(
'4. How do I leave a review for a coffee shop?\nSelect the shop, scroll to reviews, and click "Write a Review."',
style: TextStyle(color: Colors.white),
),
SizedBox(height: 10),
Text(
'5. Is there a way to filter coffee shops based on specific criteria?\nYes, use the filter options for your preferences.',
style: TextStyle(color: Colors.white),
),
SizedBox(height: 10),
Text(
'6. Can I save my favorite coffee shops?\nYes, click the heart icon next to the shop\'s name.',
style: TextStyle(color: Colors.white),
),
SizedBox(height: 10),
Text(
'7. How can I report incorrect information about a coffee shop?\nGo to the shop\'s page and click "Report Issue."',
style: TextStyle(color: Colors.white),
),
SizedBox(height: 10),
Text(
'8. Is the Study Coffee App free to use?\nYes, with some premium features available.',
style: TextStyle(color: Colors.white),
),
SizedBox(height: 10),
Text(
'9. How do I contact customer support?\nUse the "Help & Support" section or email support@studycoffeeapp.com.',
style: TextStyle(color: Colors.white),
),
],
),
),
],
),
),
const SizedBox(
height: 20), // Space between the two containers
// Support Articles Container
Container(
padding: const EdgeInsets.all(11),
decoration: BoxDecoration(
border: Border.all(
color: Color.fromARGB(255, 171, 138, 114), width: 10),
borderRadius: BorderRadius.circular(45),
color: const Color.fromARGB(255, 96, 67, 24),
),
child: Column(
children: [
const Text(
"Support Articles",
textAlign: TextAlign.center,
style: TextStyle(
fontSize: 27,
color: Colors.white,
),
),
const SizedBox(height: 5),
const Image(
image: AssetImage('assets/images/support.jpg'),
width: 450,
height: 550,
),
const SizedBox(height: 5),
const Text(
'Support Articles(SA)',
style: TextStyle(
fontSize: 22, fontWeight: FontWeight.bold),
),
const SizedBox(height: 5),
Container(
padding: const EdgeInsets.all(8),
decoration: BoxDecoration(
border: Border.all(
color: Color.fromARGB(255, 171, 138, 114),
width: 10),
borderRadius: BorderRadius.circular(45),
color: const Color.fromARGB(255, 96, 67, 24),
),
child: const Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'1. How to Create an Account\nFollow these steps to create an account and get started.',
style: TextStyle(color: Colors.white),
),
SizedBox(height: 10),
Text(
'2. Resetting Your Password\nInstructions on how to reset your password if you\'ve forgotten it.',
style: TextStyle(color: Colors.white),
),
SizedBox(height: 10),
Text(
'3. Navigating the App\nA guide to help you understand and navigate the app features.',
style: TextStyle(color: Colors.white),
),
SizedBox(height: 10),
Text(
'4. Managing Your Profile\nSteps to update your profile information and settings.',
style: TextStyle(color: Colors.white),
),
SizedBox(height: 10),
Text(
'5. Connecting with Friends\nLearn how to find and connect with friends on the app.',
style: TextStyle(color: Colors.white),
),
SizedBox(height: 10),
Text(
'6. Using Premium Features\nDetails on how to access and use the premium features available.',
style: TextStyle(color: Colors.white),
),
SizedBox(height: 10),
Text(
'7. Troubleshooting Common Issues\nSolutions to common problems you might encounter.',
style: TextStyle(color: Colors.white),
),
SizedBox(height: 10),
Text(
'8. Contacting Support\nHow to reach out to our support team for additional help.',
style: TextStyle(color: Colors.white),
),
],
),
),
],
),
),
],
),
const SizedBox(height: 40),
Center(
child: Column(
children: [
const Text(
"Contact us:",
style: TextStyle(fontSize: 18, color: Colors.white),
),
const SizedBox(height: 10),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
IconButton(
icon: const Icon(Icons.phone,
color: Color.fromARGB(255, 171, 138, 114)),
onPressed: () {
ScaffoldMessenger.of(context).showSnackBar(
const SnackBar(content: Text('0123456')),
);
},
),
IconButton(
icon: const Icon(Icons.email,
color: Color.fromARGB(255, 171, 138, 114)),
onPressed: () {
ScaffoldMessenger.of(context).showSnackBar(
const SnackBar(
content: Text('contact@mindmugs.com')),
);
},
),
IconButton(
icon: const Icon(Icons.chat,
color: Color.fromARGB(255, 171, 138, 114)),
onPressed: () {
ScaffoldMessenger.of(context).showSnackBar(
const SnackBar(content: Text('Chat with us')),
);
},
),
],
),
],
),
),
],
),
),
),
);
}
}
