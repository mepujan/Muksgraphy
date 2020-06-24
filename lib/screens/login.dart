
import 'package:flutter/material.dart';
import 'package:muksgraphy/screens/homepage.dart';
import 'package:muksgraphy/screens/signup.dart';
import 'package:http/http.dart' as http;
import 'package:muksgraphy/utils/preference.dart';

class LoginPage extends StatefulWidget {
  static const String routeName ="/login";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey=GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController= TextEditingController();
  bool _isVisible = false;
  void _toggle(){
    setState(() {
      _isVisible = true;
    });
  }

    _login(String username,String password) async{
      

    var response = await http.post(
      Uri.encodeFull("http://10.0.2.2:8000/api/apilogin/"),
      headers: {
        'Accept':'application/json',
      },
      body: {
        'username': username,
        'password': password
      }
    );
    // var data = jsonDecode(response.body);
    // print(data['token']);
    if (response.statusCode == 200){
      setState(() {
      
        Navigator.pushNamed(context, Homepage.routeName);
        // Navigator.push(          --- yo paxi garne ho .
        //     context, MaterialPageRoute(builder: (context) => SafeArea(child: Homepage(data['token'].toString(),username))));
      });
    }
    else{
      _toggle();
      debugPrint("Not successful");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[   
          Image.asset(
            "images/muks.jpeg",
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
                        children:<Widget>[
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: _usernameController,
                            validator: (value){
                              if (value.isEmpty){
                                return "Enter Username";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: "Enter Username.",
                              labelText: "Username",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Visibility(
                              child: Text("Enter Valid Username or Email.",style: TextStyle(color:Colors.red),),
                              visible: _isVisible,
                            ),
                          ),
                           SizedBox(height: 20,),
                             TextFormField(
                              obscureText: true,
                            keyboardType: TextInputType.text,
                            controller: _passwordController,
                            validator: (value){
                              if (value.isEmpty){
                                return "Enter password";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: "Enter Password.",
                              labelText: "Password",
                              // border: OutlineInputBorder(
                              //   borderRadius: BorderRadius.circular(10.0)
                              // )
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Visibility(
                              child: Text("Enter Valid Password.",style: TextStyle(color:Colors.red),),
                              visible: _isVisible,
                            ),
                          ),
                          SizedBox(height: 20,),
                          RaisedButton(

                            onPressed: (){
                              Constants.pref.setBool("loggedIn", true);
                        
                              if(_formKey.currentState.validate()){
                                setState(() {
                                  _login(_usernameController.text, _passwordController.text);
                                  // Navigator.popAndPushNamed(context, Homepage.routeName);
                                });
                              }
                            },
                            child: Text("Login"),
                            color: Colors.purple,
                            textColor: Colors.white,
                          )

                        ]
                      ),
                                        ),
                    ),

                    )

                ),
              )
            )
        
        ],
        
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.person_pin),
        onPressed: (){
          Navigator.pushNamed(context, SignUP.routeName);
        }
        ),
    );
  }
}

