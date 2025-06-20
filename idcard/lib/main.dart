import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student ID Card',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: StudentIDCard(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StudentIDCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(title: Text('Student ID Card'), centerTitle: true),
      body: Center(
        child: Card(
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            width: 280,
            height: 500, // ⬅ taller for vertical card
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                // Profile Photo
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/photo.jpg'),
                  backgroundColor: Colors.grey[200],
                ),
                SizedBox(height: 15),

                Text(
                  'PREETHI POOJARY',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),

                Text(
                  'Student ID: NNM24MC110',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                Divider(height: 30, thickness: 1),

                detailRow('Course', 'MCA'),
                SizedBox(height: 10),
                detailRow('Year', '2025'),
                SizedBox(height: 10),
                detailRow('College', 'NMAMIT Institute of Technology Nitte'),
                Spacer(),
                Text(
                  'Valid Till: 2026',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget detailRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$label: ', style: TextStyle(fontWeight: FontWeight.bold)),
        Expanded(child: Text(value, softWrap: true)),
      ],
    );
  }
}
