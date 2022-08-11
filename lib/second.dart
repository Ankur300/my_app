import 'package:flutter/material.dart';
import 'package:my_app/login.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage(String email);

  @override
  _SignUpPageState createState() => _SignUpPageState();
  
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
Signup() async {
      
  
   
  }

  @override
  Widget build(BuildContext context) {
   
       return Scaffold(
        resizeToAvoidBottomInset: false,
 appBar: AppBar(
  title: Text("Sign Up"),
 ),
 body:Stack(
  
  children: <Widget>[
    Center(
    child:Column(
      children:<Widget>[
          
    TextField(
           controller: nameController,
                      decoration: InputDecoration(
                          labelText: 'First Name',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                    ),
                     TextField(
           controller: nameController,
                      decoration: InputDecoration(
                          labelText: 'Last Name',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                    ),
                     TextField(
           controller: nameController,
                      decoration: InputDecoration(
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                    ),
                    
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'PASSWORD',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                      obscureText: true,
                    ),
                        
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Contact Number',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                      obscureText: true,
                    ),
                        
TextField(
   
                      decoration: InputDecoration(
                          labelText: 'Employee Id',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                      obscureText: true,
                    ),
                     ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed:Signup,
          child: Text("Sign Up"),
                     ),

 Row(
              children: <Widget>[
                const Text('Already have an account?'),
                TextButton(
                  child: const Text(
                    'login',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                      Navigator.pushNamed(context, '/second');
                  },
                )
              ]

 )


 ]) ) ],

 )      
       );
}
}