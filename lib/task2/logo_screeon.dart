import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.4),
        // image: DecorationImage(
        //   image: AssetImage("assets/images/logo-transparent.png"),
        // )
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo-transparent.png"),
              Text("Track Items To Destination Every Time",style: TextStyle(
                color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),),
              SizedBox(height: 20,),
              Text("Monitor the goods untill the destination",style: TextStyle(
                color: Colors.white.withOpacity(0.7),fontSize: 20,
                decoration: TextDecoration.none,
              ),),
              SizedBox(height: 25,),
              MaterialButton(onPressed: (){},

              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.lightGreenAccent.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Get Started"),
                    SizedBox(width: 5,),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
