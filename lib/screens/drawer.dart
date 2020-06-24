import 'package:flutter/material.dart';
class MuksDrawer extends StatelessWidget {
  // final String username;
  // MuksDrawer(this.username);
  @override
  Widget build(BuildContext context) {
  
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children:<Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("pujan Gautam"), 
            accountEmail: Text("mepujan10@gmail.com"),
            currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage("images/pujan.jpeg"),
            ),
            ),
            ListTile(
              title: Text("Pujan Gautam"),
              subtitle: Text("Developer"),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.edit),
              onTap: (){},
            ),
             ListTile(
               title: Text("Email"),
               subtitle: Text("mepujan10@gmail.com"),
               leading: Icon(Icons.email),
               trailing: Icon(Icons.edit),
               onTap: (){},
            ),

        ]
      ),
      
    );
  }
}