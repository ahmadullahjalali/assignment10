import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(FaceBook());
}

class FaceBook extends StatefulWidget {
  const FaceBook({Key? key}) : super(key: key);

  @override
  State<FaceBook> createState() => _FaceBookState();
}

class _FaceBookState extends State<FaceBook> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(150),
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/logo.png'),
                  ),
                ],
              ),
          ),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsetsDirectional.all(10),
            child: Column(
              children: [
                TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone or Email',
                  ),
                ),
                TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  width: double.infinity,
                  child: MaterialButton(
                    elevation: 5,
                    onPressed: () => print('Log in'),
                    padding: EdgeInsets.all(25),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    color: Colors.indigo,
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 15,),
                Container(
                  alignment: Alignment.center,
                  child: MaterialButton(
                    onPressed: () => print('Forgot Password Pressed'),
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  alignment: Alignment.center,
                  child: MaterialButton(
                    onPressed: () => print('Back Button Pressed'),
                    child: const Text(
                      'Back',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 160, child: Divider(),), Text('or'), SizedBox(width: 160, child: Divider(),),
                Container(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () => print('Create new Account'),
                    padding: EdgeInsets.all(25),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    color: Colors.lightBlueAccent.shade100,
                    child: const Text(
                      'Create new Account',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
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
}
