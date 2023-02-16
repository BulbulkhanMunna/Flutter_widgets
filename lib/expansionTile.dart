import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Expan extends StatefulWidget {
  const Expan({super.key});

  @override
  State<Expan> createState() => _ExpanState();
}

class _ExpanState extends State<Expan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExpansionTile(title: Text('This is expansion'),
            subtitle: Text('helo'),
            leading: CircleAvatar(),
            children: [
              Container(
                height: 200,
                color: Colors.green,
              )
            ],
            ),
      
          ],
          
        ),
      ),
    );
  }
}