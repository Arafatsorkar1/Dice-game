import 'package:flutter/material.dart';
class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Demo'),
        centerTitle: true,

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Stack(
              children: [
                Image.asset('images/nature.jpg',width: double.infinity,),
                Positioned(
                  bottom: 50,
                  left: 20,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset('images/flag.jpg', ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text('Aiub Ali',style: TextStyle(color: Colors.purple),),)
              ],
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('Mailbox'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
            ListTile(
              leading: Icon(Icons.record_voice_over),
              title: Text('Record'),
            ),
          ],
        ),

      ),
      body: Center(
        child: Text('Hello Drawer Demo'),
      ),
    );
  }
}
