import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AllView extends StatefulWidget {
  const AllView({super.key});

  @override
  State<AllView> createState() => _AllViewState();
}

class _AllViewState extends State<AllView> {
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _pageController.nextPage(
                duration: Duration(seconds: 1), curve: Curves.easeInOutBack);
          },
          child: Icon(Icons.arrow_circle_right),
        ),
        appBar: AppBar(
          title: Text('All View'),
        ),
        body: PageView(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 200,
              color: Colors.purple,
            ),
            Container(
              height: 200,
              color: Colors.red,
            ),
            Container(
              height: 200,
              color: Colors.yellow,
            ),
            Container(
              height: 200,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              color: Colors.green,
            ),
            Container(
              height: 200,
              color: Colors.red,
            ),
            Container(
              height: 200,
              color: Colors.yellow,
            ),
          ],
        ));
  }
}
