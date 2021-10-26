import 'package:flutter/material.dart';
class StackPosition extends StatelessWidget {
  const StackPosition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Demo'),
      ),

      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,

          children: [
            Container(
              height: 200,
              width: 200,
              color:Colors.pink,
            ),
            Positioned(
              bottom: -50,
              child: CircleAvatar(
                child: Icon(Icons.add),
                radius: 50,

              ),
            )
          ],
        ),
      )
    );
  }
}
