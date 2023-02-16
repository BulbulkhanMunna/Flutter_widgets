import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CheckSwiRadio extends StatefulWidget {
  const CheckSwiRadio({super.key});

  @override
  State<CheckSwiRadio> createState() => _CheckSwiRadioState();
}

class _CheckSwiRadioState extends State<CheckSwiRadio> {
  bool _checkBox = false;
  bool _switch = false;
  int _radioGroupValue = 1;
  List<bool> _isSelected = [false, true, false];
  bool _checkBoxListTile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckRadio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(value: _checkBox, onChanged: (value){
              setState(() {
                _checkBox = value!;
              });
            }),
            Divider(thickness: 5.0,),

            Switch(value: _switch, onChanged: (value){
              setState(() {
                _switch = value;
              });
            }),

             Divider(thickness: 5.0,),
            Text('Choose your gender'),

            Row(
              children: [
                Radio(value: 1, groupValue: _radioGroupValue, onChanged: (value){
                  setState(() {
                    _radioGroupValue = value!;
                  });

                }),
                Text('Male'),
              ],
            ),
              Row(
              children: [
                Radio(value: 2, groupValue: _radioGroupValue, onChanged: (value){
                  setState(() {
                    _radioGroupValue = value!;
                  });

                }),
                Text('Female'),
              ],
            ),

             Divider(thickness: 5.0,),

             ToggleButtons(children: <Widget>[
              Icon(Icons.bluetooth),
              Icon(Icons.wifi),
              Icon(Icons.network_cell),
             ], isSelected: _isSelected,
             onPressed: (int index){
              setState(() {
                _isSelected[index] = !_isSelected[index];
              });

             },),
             Divider(thickness: 5.0,),

             CheckboxListTile(
              title: Text('CheckBox List Tile'),
              subtitle: Text('A programming  This set of instructions is code structured following a definite programming language syntax.'
    ),
              value: _checkBoxListTile, onChanged: (value){
              setState(() {
                _checkBoxListTile = value!;
              });

             })


            
          ],
        ),
      ),
    );
  }
}
