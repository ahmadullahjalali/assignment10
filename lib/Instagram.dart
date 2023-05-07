import 'package:flutter/material.dart';

void main() {
  runApp(Instagram());
}

class Instagram extends StatefulWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
              'Instagram',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Playball',
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
          ),
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_ios, color: Colors.black,),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: Stack(),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    focusColor: Colors.grey.shade50,
                    labelText: 'Phone or Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 7),
                TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 7),
                Container(
                  alignment: Alignment.centerRight,
                  child: MaterialButton(
                    onPressed: () => print('Forgot Password Pressed'),
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 7,),
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
                    color: Colors.lightBlue,
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
                SizedBox(
                  width: 160,
                  child: Divider(),
                ), Text('OR'), SizedBox(width: 160, child: Divider(),),
                Container(
                  alignment: Alignment.center,
                  child: MaterialButton(
                    onPressed: () => print('Back Button Pressed'),
                    child: const Text(
                      'Log in with Facebook',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  child: Divider(),
                ),
                GestureDetector(
                  onTap: () => print('Sign Up Pressed'),
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don\'t have an Account? ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign Up.',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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

