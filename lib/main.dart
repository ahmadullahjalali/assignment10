import 'package:flutter/material.dart';
import 'package:homework/Facebook.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text(
          'Ahmadullah Jalali',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(2000, 500), bottomRight: Radius.elliptical(2000, 500)),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50.0,
                child: Icon(Icons.person,
                  size: 50,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          ),
       ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                labelText: 'First Name',
                icon: Icon(Icons.person),
              ),
            ),
            TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                labelText: 'Birthday',
                icon: Icon(Icons.calendar_month),
              ),
            ),
            TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                labelText: '+93 777 000 34',
                icon: Icon(Icons.phone_android_sharp),
              ),
            ),
            TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                labelText: 'Instagram',
                icon: Icon(Icons.square_outlined),
              ),
            ),
            TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                labelText: 'YourEmai.com',
                icon: Icon(Icons.email_outlined),
              ),
            ),
            TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                labelText: 'Password',
                icon: Icon(Icons.remove_red_eye),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            MaterialButton(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 20),
              color: Colors.pink,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20),),
              ),
              onPressed: () {},
              child: Text('Edit Profile',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20,),
              MaterialButton(
                onPressed: (){
                  var context = null;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FaceBook()));
                },
                child: const Text(
                  'Next Page',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
        ),
      ),
    ),
  );
}





