import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

          appBar: AppBar(title: Text("Container Example"),),
          body: Container(

            height: 200,
            width: double.infinity,
            //color: Colors.purple,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(

              border: Border.all(color: Colors.black, width: 3),

            ),
            child: const Text("Hello! i am inside a container!",
                style: TextStyle(fontSize: 20)),



          ),

      );
  }

}