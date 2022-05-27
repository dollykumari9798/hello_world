import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(
    MaterialApp(
     home:Scaffold(
  // body: Center(
  //   child: Icon(Icons.print),
  // ),
      backgroundColor:Colors.white,
       floatingActionButton: FloatingActionButton(onPressed: null,
          backgroundColor: Colors.blueGrey,
         elevation:5,),
          appBar: AppBar(
           backgroundColor:Colors.blueGrey,
             elevation: 0,
             title: Text('BITS-N-PIXELS'),
        // child :   Icon(Icons.search),
        // child :  Icon(Icons.home)

         ),
         body: Column(
 crossAxisAlignment: CrossAxisAlignment.start,
           children:<Widget>[
             Container(
               height: 50,
               width: 50,
                padding :EdgeInsets.all(20),
              color: Colors.black,
               child:FlutterLogo(),


            )  ,
           Container(

             height: 100,
               width: 100,
               color: Colors.white,
child: Icon(Icons.home),
             ),
              Container(
               height: 100,
               width: 500,
               color: Colors.blueAccent,
               child:Center( child:Text ('😍😍😍😍',style:TextStyle(fontSize: 50,fontWeight:FontWeight.bold))),
             ),
             Container(
                height: 100,
               width: 500,
                color: Colors.white,
                child:Center( child:Text ('😍😍😍',style:TextStyle(fontSize: 50,fontWeight:FontWeight.bold))),
             ),
            Container(
              height: 100,
                width: 500,
                color: Colors.blueAccent,
               child:Center( child:Text ('😍😍', style:TextStyle(fontSize: 50,fontWeight:FontWeight.bold),)),
             ),
              Container(
               height: 100,
               width: 100,
              color: Colors.white,
                child:Center( child:Text ('😍' , style: TextStyle(fontWeight:FontWeight.bold,fontSize:50),)),
              ),
            ],
          )




//        Center(
//    child :
//   Text(
//   'HELLO FLUTTER  FROM  TEAM \n "Bits-n-Pixels" ',
//       style:
//       TextStyle(
//        color:Colors.blueGrey,
//    fontSize: 30,
//    fontWeight:FontWeight.bold,
//        ),
//        textAlign: TextAlign.center,
//        )
// ),
    ),
   ));

}