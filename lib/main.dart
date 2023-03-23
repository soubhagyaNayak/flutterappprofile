
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Profile App using Row and Column'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'My Profile',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage("assets/images/photo.png"),
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Soubhagya Ranjan Nayak',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'MCA,Computer Application',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'MOHALI, PUNJAB, INDIA, 140103',
                        style: TextStyle(fontSize: 16.0,
                        color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                'My Skills',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 25.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildSkillItem('Flutter'),
                  _buildSkillItem('Dart'),
                  _buildSkillItem('Java'),
                  _buildSkillItem('Kotlin'),
                ],
              ),
              SizedBox(height: 25.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Personal Summary',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'I am a passionate Flutter developer with experience in developing mobile applications for both Android and iOS platforms.'
                        ' My goal is to gain exposure to domains that provide intellectually challenging work in the field of computers so that I can improve and broaden my knowledge and skills while building on projects.',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillItem(String skill) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.black,
      ),
      child: Text(
        skill,
        style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
