import 'package:flutter/material.dart';
import 'package:project1/second.dart';

import 'backgroundcolor.dart';
import 'container.dart';
import 'loginwithvalidation.dart';
import 'numberguessing.dart';

void main()
{
  runApp(MaterialApp(home: NumberGuessing(),debugShowCheckedModeBanner: false,));
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title:Text("First App"),backgroundColor: Colors.blue,foregroundColor: Colors.deepOrange,
          actions:
          [

              IconButton(onPressed: ()
              {
                  //pop -exit
                  Navigator.pop(context);

              }, icon: Icon(Icons.logout))

          ],),
        body: Center
          (



            child:Column(


                children: [

                  Text("Flutter",style:TextStyle(fontSize:50.00,color: Colors.deepPurple),),

                  ElevatedButton(onPressed: ()
                  {

                      print("hello from xyz");

                  }, child: Text("Click Me")),
                  ElevatedButton(onPressed: ()
                  {

                    print("hello from xyz2");

                  }, child: Text("Click Me2"))




                ],

            )





          ),
      floatingActionButton: FloatingActionButton(onPressed: ()
      {

          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));


      },child: Icon(Icons.add),),
      );
  }

}


