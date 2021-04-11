import 'package:flutter/material.dart';







class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
       Drawer(  
            child: ListView(children: <Widget>[

              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: const Color(0xFF232F34),
                  ) ,
                accountEmail: Text("a.elrhmanabas@gmail.com"),
                accountName: Text("Abdulrahman Abbas"),
                currentAccountPicture: CircleAvatar(child: Icon(Icons.person),) ,
                ),

              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: (){Navigator.of(context).pushNamed('challenge');},
              ),
              ListTile(
                title: Text("Profile"), 
                leading: Icon(Icons.pages),                     
                onTap: (){//Navigator.of(context).pushNamed('loginpage');
                },
              ),
              ListTile(
                title: Text("Community"), 
                leading: Icon(Icons.pages),                     
                onTap: (){Navigator.of(context).pushNamed('community');},
              ),
              Divider(color:const Color(0xFF232F34), height: 100,),
              ListTile(
                title: Text("About Us"),
                leading: Icon(Icons.contact_mail),
                onTap: (){},
              ),
              ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
                onTap: (){},
              ),

              ListTile(
                title: Text("Exit"),
                leading: Icon(Icons.exit_to_app),
                onTap: (){},
              ),



                  ] ), 



    );
  }
}