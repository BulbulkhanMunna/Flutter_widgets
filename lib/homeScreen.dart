import 'package:flutter/material.dart';

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Set<Map> language = {
    {
      'language_name': 'Dart',
      'description':
          'A programming language is a set of instructions written by a programmer to deliver instructions to the computer to perform and accomplish a task. This set of instructions is usually viewed as incomprehensible code structured following a definite programming language syntax.'
    },
    {
      'language_name': 'Dart',
      'description':
          'A programming language is a set of instructions written by a programmer to deliver instructions to the computer to perform and accomplish a task. This set of instructions is usually viewed as incomprehensible code structured following a definite programming language syntax.'
    },
    {
      'language_name': 'Dart',
      'description':
          'A programming language is a set of instructions written by a programmer to deliver instructions to the computer to perform and accomplish a task. This set of instructions is usually viewed as incomprehensible code structured following a definite programming language syntax.'
    },
    {
      'language_name': 'Dart',
      'description':
          'A programming language is a set of instructions written by a programmer to deliver instructions to the computer to perform and accomplish a task. This set of instructions is usually viewed as incomprehensible code structured following a definite programming language syntax.'
    },
    {
      'language_name': 'Dart',
      'description':
          'A programming language is a set of instructions written by a programmer to deliver instructions to the computer to perform and accomplish a task. This set of instructions is usually viewed as incomprehensible code structured following a definite programming language syntax.'
    },
    {
      'language_name': 'Dart',
      'description':
          'A programming language is a set of instructions written by a programmer to deliver instructions to the computer to perform and accomplish a task. This set of instructions is usually viewed as incomprehensible code structured following a definite programming language syntax.'
    },
  };

  showSnackbar() {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Refreshed Successfully"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Refreshed'),
      ),
      body: RefreshIndicator(
        onRefresh: () => Future.delayed(
          Duration(seconds: 3),
          (){
            language.add({
              'language_name': 'Java',
              'description':'descrption'

            });
            setState(() {
              
            });
            language.add({
              'language_name': 'python',
              'description':'descrption'

            });
            showSnackbar();
          }
        ),
        child: ListView.builder(
          itemCount: language.length,
          itemBuilder: (_,index){
      
            return Padding(
              padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
              child: Card(
                elevation: 4,
                child: ListTile(
                  title: Text(
                    language.elementAt(index)['language_name'],
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    language.elementAt(index)['description'],
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
      
                    ),
                  ),
                ),
              ),
            );
      
        },
          ),
      ),
    );
  }
}
