import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttertoast/fluttertoast.dart';

class InkwellGesture extends StatefulWidget {
  const InkwellGesture({super.key});

  @override
  State<InkwellGesture> createState() => _InkwellGestureState();
}

class _InkwellGestureState extends State<InkwellGesture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inkwell_Gesture'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Click me',
              style: TextStyle(fontSize: 30),
            ),
            Divider(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Fluttertoast.showToast(msg: 'gesture detector');
                  },
                  child: Container(
                    height: 200,
                    width: 180,
                    color: Colors.red,
                  ),
                ),
                VerticalDivider(width: 10,),

                InkWell(
                  onTap: () {
                    Fluttertoast.showToast(msg: "inkwell");
                  },
                  splashColor: Colors.green,
                  child: Ink(
                    height: 200,
                    width: 180,
                    color: Colors.amber,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
