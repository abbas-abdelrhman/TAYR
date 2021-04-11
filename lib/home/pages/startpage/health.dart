import 'package:flutter/material.dart';
import '../../../components/drawer.dart';




class Health extends StatefulWidget {
  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {

  @override
  Widget build(BuildContext context) {
	return MaterialApp(
	home: Scaffold(
		appBar: AppBar(
                title: Text('Health Progress Bar'),
                centerTitle: true,
                backgroundColor: const Color(0xFF232F34),
              ),
    drawer: MyDrawer(),
		body: GridView.count(
  primary: false,
  padding: const EdgeInsets.all(10),
  crossAxisSpacing: 5,
  mainAxisSpacing: 5,
  crossAxisCount: 1,
  children: <Widget>[
    
        Container(
      child: Image.asset( "images/health4.jfif", fit:BoxFit.fitWidth
      ,),
    ),
    
        
        Container(
      child: Image.asset( "images/health5.jfif", fit:BoxFit.fitWidth
      ,),
    ),
    
        Container(
      child: Image.asset( "images/health1.jfif", fit:BoxFit.fitWidth
      ,),
    ),
        Container(
      child: Image.asset( "images/health3.jfif", fit:BoxFit.fitWidth
      ,),
    ),
    
        



  ],
)

	),
	);
}
}
