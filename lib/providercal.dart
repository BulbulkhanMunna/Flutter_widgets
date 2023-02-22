import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:navigationrail/app_theme.dart';
import 'package:navigationrail/counterr.dart';
import 'package:navigationrail/route.dart';
import 'package:provider/provider.dart';

import 'another.dart';

class providercl extends StatefulWidget {
  const providercl({super.key});

  @override
  State<providercl> createState() => _providerclState();
}

class _providerclState extends State<providercl> {
  RxBool darkMood = false.obs;

//show dialog
  Future changeLanguage(context) async {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Select your language!'),
              content: SizedBox(
                height: 200,
                child: Column(
                  children: [
                    TextButton(
                        onPressed: () => Get.updateLocale(
                              Locale('bn', 'BD'),
                            ),
                        child: const Text("Bangla")),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed: () => Get.updateLocale(
                        Locale('en', 'US'),
                      ),
                      child: const Text("English"),
                    ),
                  ],
                ),
              ),
            ));
  }

  String name = 'Munna';
  final box = GetStorage();
  final counterController = Get.find<Counterr>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'appName'.tr,
          style: TextStyle(),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(another);
              },
              icon: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(
              () => Text(
                counterController.value.value.toString(),
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    box.write('name', name);
                  },
                  child: Text('Store data')),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(box.read('name'));
                  },
                  child: Text('Retrive data')),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(box.remove('name'));
                  },
                  child: Text('Revove data')),
            ],
          ),
          ListTile(
              title: Text('darkMode'.tr),
              trailing: Obx(
                () => Switch(
                    value: darkMood.value,
                    onChanged: (bool value) {
                      darkMood.value = value;
                      Get.changeTheme(darkMood.value == false
                          ? AppTheme().lightTheme(context)
                          : AppTheme().darkTheme(context));
                    }),
              )),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text('languages'.tr),
            onTap: () => changeLanguage(context),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20))),
        onPressed: () => counterController.counterData(),
        //Get.snackbar('Learning', 'Snack',),
        // Get.defaultDialog(title: 'Learning'),
        child: Icon(Icons.add),
      ),
    );
  }
}
