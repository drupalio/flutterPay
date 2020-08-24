import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
       children: <Widget>[
         Expanded(
           flex: 3,
           child: Container(
//            height: 250,
             width: MediaQuery.of(context).size.width,
             child: Card(
               elevation: 10,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20)
               ),
        child: Image.asset('assets/images/homecover.jpeg',
           fit: BoxFit.cover,
        ),
               ),
           ),
         ),
          SizedBox(
            height: 30,
          ),

         Expanded(
           flex: 1,
           child: Container(
             width: MediaQuery.of(context).size.width,
             child: Padding(
               padding: const EdgeInsets.only(left: 15, right: 15),
               child: Text('Keep Track of Your Benefit at Pay Platform Payment',
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.bold,
                 fontFamily: 'OpenSans'
               ),
               ),
             ),
           ),
         ),
//
//          SizedBox(
//            height: 15,
//          ),

         Expanded(
           flex: 2,
           child: Container(
             child: Padding(
               padding: const EdgeInsets.only(left: 70, right: 70),
               child: Text('Payment and budgeting digital business made simple',
                 textAlign: TextAlign.center,
               ),
             ),
           ),
         ),

//          SizedBox(
//            height: 100,
//          ),

         Container(
           margin: EdgeInsets.all(15),
           width: MediaQuery.of(context).size.width,
           height: 50,
           decoration: BoxDecoration(
               color: Colors.blue[900],
               borderRadius: BorderRadius.circular(20)),
           child: Center(
             child: Text(
               'Get started',
               style: TextStyle(color: Colors.white, fontSize: 16,
               fontFamily: 'OpenSans',
                 fontWeight: FontWeight.bold
               ),
             ),
           ),
         ),
       ],
     );
  }
}
