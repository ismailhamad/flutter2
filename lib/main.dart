import 'package:flutter/material.dart';

void main() {
  runApp( ismail());
}

class ismail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: orientation(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class orientation extends StatelessWidget{

  @override
  Widget build(BuildContext context) {



    return OrientationBuilder(
      builder: (context, orientation) {

        return Scaffold(
            appBar: AppBar(
              title: Text("Ismail Drawer"),
            ),
            body: orientation==Orientation.portrait?buildContainer(): Row(
              children: [
                Expanded(child: buildListView()),
                Expanded(child: buildContainer()),
              ],
            ),

            drawer: orientation==Orientation.portrait?Drawer(
              child: Container(padding: const EdgeInsets.only(top: 120),
                child: buildListView(),
              ),):null
        );
      },
    );
  }

  Container buildContainer() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
    );
  }

  Container buildListView() {
    return Container(
      color: Colors.white ,

      child: ListView(

        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
        children: const [
          Text("FIRST ELEMENT"),
          SizedBox(height: 18,),
          Text("SECOND ELEMENT"),
          SizedBox(height: 18,),
          Text("THIRD ELEMENT"),
          SizedBox(height: 18,),
          Text("FORTH ELEMENT"),
          SizedBox(height: 18,),
          Text("FIFTHE ELEMENT"),
        ],
      ),
    );
  }
}
