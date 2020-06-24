import 'package:flutter/material.dart';
import 'package:muksgraphy/screens/login.dart';

class SignUP extends StatefulWidget {
  static const String routeName ="/signup";
  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();
  final _image = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Create Account")
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "images/pujan.jpeg",
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.7),
            colorBlendMode: BlendMode.darken,
            ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: _username,
                          validator: (value){
                            if(value.isEmpty){
                              return "Enter Username";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText:"Username",
                            hintText:"Enter Username",
                          ),
                        ), 
                        SizedBox(
                          height:20
                        ),
                        TextFormField(
                          controller: _email,
                          validator: (value){
                            if(value.isEmpty){
                              return "Enter email";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText:"Email",
                            hintText:"Enter Email",
                          ),

                        ), 
                               SizedBox(
                          height:20
                        ),

                        TextFormField(
                          controller: _password,
                          validator: (value){
                            if(value.isEmpty){
                              return "Enter Password";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText:"password",
                            hintText:"Enter Password",
                          ),



                        ),
                               SizedBox(
                          height:20
                        ),

                         TextFormField(
                          controller: _confirmPassword,
                          validator: (value){
                            if(value.isEmpty){
                              return "Enter password";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText:"Confirm Password",
                            hintText:"Enter Password",
                          ),



                        ), 
                               SizedBox(
                          height:20
                        ),

                        TextFormField(
                          controller: _image,


                        ),
                        RaisedButton(
                          child: Text("Signup"),
                          color: Colors.purple,
                          textColor: Colors.white,
                          onPressed: (){
                            if(_formKey.currentState.validate()){
                              setState(() {
                                debugPrint("Signup Successful.");
                                Navigator.pushNamed(context, LoginPage.routeName);
                              });
                            }
                          }
                          )

                    ],),
                  )
                ),
              )
        ),
            ),
          ),
        ],
     ),
      
    );
  }
}