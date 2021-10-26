import 'package:flutter/material.dart';
class DrawerExample extends StatelessWidget {
  const DrawerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Demo'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Stack(
              children: [
                Image.asset('images/nature.jpg'),
                Positioned(
                    bottom: 50,
                    left: 20,
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Image.asset('images/flag.jpg'),
                    )
                 ),
                Positioned(
                    bottom: 20,
                    left: 20,
                    child: Text('Bangladesh',style: TextStyle(fontSize: 50,color: Colors.amber),
                    )

                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.mail,color: Colors.blue,size: 40,),
              title: Text('Mail Box'),
            ),

            ListTile(
              leading: Icon(Icons.settings,color: Colors.orange,size: 40,),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.contacts,size: 40,color: Colors.pink,),
              title: Text('Contacts'),
            ),
          ],
        ),
      ),
    );
  }
}
