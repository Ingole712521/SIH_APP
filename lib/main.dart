import 'package:flutter/material.dart' ;
// import 'package:flutter/cupertino.dart';
void main(){
  runApp(MaterialApp(
    title: "Sign App",
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.red,  
    ),
  ),
);
}

class  HomePage extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign APP"),
      ),
      body: Container(),
      
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // DrawerHeader(
            //   child : Text("Hii I am Draer", 
            //   style: TextStyle(color: Colors.white),
            //   ),
            //   decoration: BoxDecoration(color: Colors.indigo),
            //  ),
            UserAccountsDrawerHeader(
              accountName: Text("Nehal Ingole"),
              accountEmail: Text("SIH@gmail.com"),
              currentAccountPicture: Image.network("https://previews.123rf.com/images/yupiramos/yupiramos1607/yupiramos160710209/60039275-%E8%8B%A5%E3%81%84%E7%94%B7%E6%80%A7%E6%BC%AB%E7%94%BB%E3%83%97%E3%83%AD%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%80%81%E3%83%99%E3%82%AF%E3%83%88%E3%83%AB-%E3%82%A4%E3%83%A9%E3%82%B9%E3%83%88-%E3%82%B0%E3%83%A9%E3%83%95%E3%82%A3%E3%83%83%E3%82%AF-%E3%83%87%E3%82%B6%E3%82%A4%E3%83%B3%E3%80%82.jpg"),
              
              ),

            
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),  
            ListTile(
              leading: Icon(Icons.email),
              title: Text("EmailID"),
              subtitle: Text("nehalingole2001@gmail.com"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
          ],),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {},
        child: Icon(Icons.edit),
        ),
    );
  }
}