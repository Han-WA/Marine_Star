import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static const routename = 'Profile_screen';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                onChanged: (value) {},
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  fillColor: Colors.blueAccent,
                  hintText: 'MR-9876',
                  hintStyle: TextStyle(
                    color: Colors.blue,
                  ),
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 3.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 18, right: 18),
              child: TextField(
                onChanged: (value) {},
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  fillColor: Colors.blueAccent,
                  hintText: '+91 72768 82532',
                  hintStyle: TextStyle(
                    color: Colors.blue,
                  ),
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 3.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            Material(
              elevation: 7,
              borderRadius: BorderRadius.circular(10),
              child: MaterialButton(
                onPressed: () {},
                child: Text('Update'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
