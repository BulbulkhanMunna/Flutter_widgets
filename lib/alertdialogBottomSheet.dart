import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertBottom extends StatefulWidget {
  const AlertBottom({super.key});

  @override
  State<AlertBottom> createState() => _AlertBottomState();
}

class _AlertBottomState extends State<AlertBottom> {


  alertDialog(){
    showDialog(context: context, builder: (_){
      return Dialog(
        child: Container(
          
          
          height: 200,
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('data'),
                ],
              ),
              ElevatedButton(onPressed: (){

              }, child: Text('Yes'),),

              SizedBox(width: 10,),

               ElevatedButton(onPressed: (){

              }, child: Text('No'),),
            ],
          ),
        ),

      );
    });

  }

  bottomSheet(){
    return showModalBottomSheet(
      
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      ),
      context: context, builder: (_){
      return Container(
        
        height: 300,
      );
    });


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Helo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              alertDialog();
      
            }, child: Text('Alert-dialog'),
            ),
            ElevatedButton(onPressed: (){
              bottomSheet();
      
            }, child: Text('Bottom-sheet'))
          ],
        ),
      ),
    );
  }
}