import 'package:flutter/material.dart';

import '../constant.dart';
class firstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      //color: Color(0xff0AAB98),
        color: Colors.greenAccent.withOpacity(0.9)
      ),
          child: Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Container(

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft:Radius.circular(50),topRight:Radius.circular(50))
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        children: [
                          Text("Price Monitor",style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),),
                          Spacer(),
                          Icon(Icons.search,color: Colors.grey),
                          Text("search",style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey,

                            decoration: TextDecoration.none,
                          ),),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(50),
                              image:DecorationImage(

                                image:AssetImage("assets/images/camera.jpeg",),fit: BoxFit.fill,
                              ),
                            ),
                          // child: Image.asset("assets/images/camera.jpeg"),
                          ),
                          SizedBox(width: 15,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               _text(text: "Photo Camera", size: 25.0, FontWeight: FontWeight.bold, Color: Colors.black),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    _text(text: "features", size: 22.0, FontWeight: FontWeight.normal, Color: Colors.grey),
                                    Spacer(),
                                    Icon(Icons.menu_outlined,size: 25,color: Colors.grey,),
                                  ],
                                ),
                                SizedBox(height: 10,),
                               Row(
                                 children: [
                                   _container(text: "Iso"),
                                   Spacer(),
                                   _container(text: "Back Focus"),
                                 ],
                               ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    _container(text: "Metering"),
                                   Spacer(),
                                    _container(text: "Focusing"),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    _text(text: "Shops:", size: 27.0, FontWeight: FontWeight.bold, Color: Colors.black),
                                     Spacer(),
                                    Icon(Icons.arrow_drop_down_outlined),
                                   _text(text: "Best Price", size: 24.0, FontWeight: FontWeight.bold, Color: Colors.grey)
                                  ],
                                ),
                              ),
                    SizedBox(height: 10,),
                     _shopProduct(image: image_lorem,text:"Lorem Shop" , text1:"Shipping Free" , Color: Colors.yellow, price: "\$1.865"),

                    _shopProduct(image: image_lpsum,text:"Lpsum Shop" , text1: "Shipping \$3.6", Color: Color(0xff0AAB98), price: "\$1.901"),

                    _shopProduct(image: image_dolor,text: "Dolor Shop", text1: "Shipping Free", Color: Color(0xff0AAB98).withOpacity(0.1), price: "\$1.987"),


                  ],
                ),
              ),
            ),
          ),
    );
  }
  Widget _text({required text,required size, required FontWeight ,required Color}){
    return  Text(text,style: TextStyle(
      fontSize: size,
      color: Color,
      fontWeight: FontWeight,

      decoration: TextDecoration.none,
    ),);
  }

Widget _container({required  text}){

    return Container(
        padding: EdgeInsets.symmetric(horizontal: 7, vertical:4),
        // margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(

        color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Center(
        child: Text(text,style: TextStyle(

          color: Colors.black,
          fontSize: 18,

        decoration: TextDecoration.none,
        ),),
      )
    );
}
Widget _shopProduct({required image,required text, required text1,required Color,required price}){
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              // color: Colors.redAccent,
              borderRadius: BorderRadius.circular(50),
              image:DecorationImage(

                image:NetworkImage(image),fit: BoxFit.fill,
              ),
            ),
            // child: Image.network(image,fit: BoxFit.fill),
          ),
          SizedBox(width: 15,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Row(
                  children: [
                    _text(text: text, size: 25.0, FontWeight: FontWeight.bold, Color: Colors.black),
                    Spacer(),
                    Icon(Icons.menu_outlined,size: 25.0,color: Colors.grey,),
                  ],
                ),
                SizedBox(height: 10,),
                _text(text: text1, size: 23.0, FontWeight: FontWeight.bold, Color: Colors.grey),

                Row(
                  children: [
                    Icon(Icons.blur_circular_rounded),
                    SizedBox(width: 10,),
                    _text(text: "Go on website", size: 23.0, FontWeight: FontWeight.bold, Color: Colors.grey),
                  ],
                ),
                SizedBox(height: 10,),
              Container(
                height: 40.0,
                width: 150.0,
                decoration: BoxDecoration(
                  color: Color,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Center(child: Text(price,style: TextStyle(
                    fontSize: 20, decoration: TextDecoration.none,color: Colors.black),)),
              )
              ],
            ),
          ),

        ],
      ),
    );
}
}
