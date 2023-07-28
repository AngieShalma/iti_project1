import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class testScreen extends StatelessWidget {
  const testScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: Icon(Icons.arrow_back_ios),
        title: Center(child: Text("home")),
        actions: [
         // Icon(Icons.menu),
          Icon(Icons.delete),

          Icon(Icons.camera_alt),
          Icon(Icons.alarm),
        ],
      ),
      body:Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(50),
            color: Colors.redAccent,
          ),
          child: Column(
           // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Icon(Icons.email),
               Text(
                 "a@gmail.com",style: TextStyle(
                   fontSize: 18
               ),
               )
             ],
           ),
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.email),
                  Text(
                      "b@gmail.com",style: TextStyle(
                    fontSize: 18
                  ),
                  )
                ],
              ),
            ],
          ),
    ),
      ) ,
    );
  }
}
