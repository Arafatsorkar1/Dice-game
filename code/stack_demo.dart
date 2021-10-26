import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Demo'),
      ),
      body: Center(
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ),
            Positioned(
                bottom: -80,
                child: CircleAvatar(
                  child: Icon(Icons.add),
              radius: 50,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
