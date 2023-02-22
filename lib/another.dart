import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

import 'counterr.dart';

class Another extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    //final counter = Provider.of<Counterr>(context);
    // final Counterr counterr = Get.put(Counterr());
    final counterController = Get.find<Counterr>();
    return Scaffold(
      appBar: AppBar(
        title: Text('another'),
      ),
      body: Center(
        child: Text(
          counterController.value.value.toString(),
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
