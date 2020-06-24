import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Cart")
      ),
      body: SingleChildScrollView(
              child: Column(
          
          children: <Widget>[
            ListTile(
              title: Text("Pujan.jpeg"),
              subtitle: Text("Rs. 1200"),
              leading: Image.asset("images/pujan.jpeg"),
              trailing: Icon(Icons.remove_circle),
              onTap: (){},
            ),
             ListTile(
              title: Text("Pujan.jpeg"),
              subtitle: Text("Rs. 1200"),
              leading: Image.asset("images/pujan.jpeg"),
              trailing: Icon(Icons.remove_circle),
              onTap: (){},
            ),
             ListTile(
              title: Text("Pujan.jpeg"),
              subtitle: Text("Rs. 1200"),
              leading: Image.asset("images/pujan.jpeg"),
              trailing: Icon(Icons.remove_circle),
              onTap: (){},
            ),
             ListTile(
              title: Text("Pujan.jpeg"),
              subtitle: Text("Rs. 1200"),
              leading: Image.asset("images/pujan.jpeg"),
              trailing: Icon(Icons.remove_circle),
              onTap: (){},
            ),
             ListTile(
              title: Text("Pujan.jpeg"),
              subtitle: Text("Rs. 1200"),
              leading: Image.asset("images/pujan.jpeg"),
              trailing: Icon(Icons.remove_circle),
              onTap: (){},
            ),
             ListTile(
              title: Text("Pujan.jpeg"),
              subtitle: Text("Rs. 1200"),
              leading: Image.asset("images/pujan.jpeg"),
              trailing: Icon(Icons.remove_circle),
              onTap: (){},
            ),
             ListTile(
              title: Text("Pujan.jpeg"),
              subtitle: Text("Rs. 1200"),
              leading: Image.asset("images/pujan.jpeg"),
              trailing: Icon(Icons.remove_circle),
              onTap: (){},
            ),
             ListTile(
              title: Text("Pujan.jpeg"),
              subtitle: Text("Rs. 1200"),
              leading: Image.asset("images/pujan.jpeg"),
              trailing: Icon(Icons.remove_circle),
              onTap: (){},
            ),
             ListTile(
              title: Text("Pujan.jpeg"),
              subtitle: Text("Rs. 1200"),
              leading: Image.asset("images/pujan.jpeg"),
              trailing: Icon(Icons.remove_circle),
              onTap: (){},
            ),
             ListTile(
              title: Text("Pujan.jpeg"),
              subtitle: Text("Rs. 1200"),
              leading: Image.asset("images/pujan.jpeg"),
              trailing: Icon(Icons.remove_circle),
              onTap: (){},
            ),
          ],
        ),
      ),
      bottomNavigationBar:BottomAppBar(
        color: Colors.purple,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height:100,
              width:500,
              padding: const EdgeInsets.only(top: 30,left: 10),
              child:Text("Total",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,)),
              
            )
            
          ],
        ),
        
      )
      
    );
  }
}

