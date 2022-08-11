import 'package:flutter/material.dart';
import 'package:my_app/profile.dart';
import 'main.dart';
import 'second.dart';
import 'package:http/http.dart';
import 'dart:convert';








class LoginPage extends StatefulWidget {
  @override

  _LoginPageState createState() => _LoginPageState();
  
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
login() async {
      String email = emailController.text;
        String password = passwordController.text;
    
      
        // Store all data with Param Name.
        var data = {'email': email, 'password' : password};
    try{
      
Response response = await post(
        Uri.parse('https://postappbrillio.herokuapp.com/api/auth/login'),
        body: {
           'email_address' : email,
          'password' : password
        }
      );
 
// print(extractedData); 

      
     
      //  print(loadedProducts);
      if(response.statusCode == 200){
          print("sucess");
          var abc= json.decode(response.body)['employeeId'];
          print(abc);
          
          

var textname="abc";
         var name1;        
          // ignore: use_build_context_synchronously
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen(abc)));

      }else {
        print('failed');
      }
    }catch(e){
      print(e.toString());
    }
   
  }
  
  
  
  
  @override
  Widget build(BuildContext context) {
   
       return Scaffold(
 appBar: AppBar(
  title: Text("Login Page"),
 ),
 body:Stack(
  children: <Widget>[
    Center(
    child:Column(
   children:<Widget>[
    TextField(
      controller: emailController,
                      decoration: InputDecoration(
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                    ),
                    SizedBox(height: 20.0,),
                    TextField(
                      controller: passwordController,
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
                     
                     ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed:login,
          child: Text("Login"),
                
               
                ),
 Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20),
                  ),
                   onPressed: () {
            // Navigate to the second screen using a named route.
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpPage("")),
            );
          },
                )
              ]

 )


 ]) ) ],

 )      
       );
}
} 