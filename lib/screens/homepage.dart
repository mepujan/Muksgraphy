import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:muksgraphy/screens/cart.dart';
import 'package:muksgraphy/screens/drawer.dart';
import 'package:http/http.dart' as http;
import 'package:muksgraphy/screens/login.dart';
import 'package:muksgraphy/utils/preference.dart';

class Homepage extends StatelessWidget {
  static const String routeName ="/home";
  // final String userToken;
  // final String username;

  // const Homepage(this.userToken,this.username);
  
  final djangoEnd="http://10.0.2.2:8000";

Future getImage() async{
  final url= "http://10.0.2.2:8000/api/product/";
  var res = await http.get(
    url,
    headers: {
      // HttpHeaders.authorizationHeader: userToken,
    }
    );
  var data = jsonDecode(res.body);
  return data;

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title :Text("MUKSGRAPHY"),
        actions: <Widget>[
             IconButton(
            icon: Icon(Icons.shopping_cart), 
            onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
            }
            ),
          IconButton(
            icon: Icon(Icons.exit_to_app), 
            onPressed: (){
              Constants.pref.setBool("loggedIn",false);
              Navigator.pushNamed(context, LoginPage.routeName);
            }
            ),
        ],
      ),
      drawer: MuksDrawer(),
      body: FutureBuilder(
        future: getImage(),
        builder: (context,snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.active:
            case ConnectionState.none:
              return Center(
                child:Text("Fetch Something.")
              );
            case ConnectionState.waiting:
              return Center(
                child:CircularProgressIndicator()
              );
            case ConnectionState.done:
              if(snapshot.hasError){
                return Center(
                  child: Text("Some Error has occured."),
                );
              }
              return ListView.builder(
                itemBuilder: (context,index){
                  // return ListTile(
               
                  //   // title: Text(snapshot.data[index]['title']),
                    
                  //   leading:ConstrainedBox(constraints: BoxConstraints(
                      
                  //   ))
                   
                 
                  // );
                  return Column(
                    children: <Widget>[
                      Image.network(djangoEnd+snapshot.data[index]['image'],fit: BoxFit.cover,),
                      
                    ],
                  );
                },
              itemCount: snapshot.data.length,
                );
                
          }
        }
        )
      
      
    );
  }
}
