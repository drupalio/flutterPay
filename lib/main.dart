import 'package:flutter/material.dart';
import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:flutter_app/benefit.dart';
import 'package:flutter_app/blog.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/pricing.dart';

void main() {
  runApp(MyApp());
}

//
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          //brightness: Brightness.dark,
          primaryColor: Colors.white,
        ),
        home: LandingPage());
  }
}

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedMenuItemId;
  dynamic _widget = Home();

  final menu = Menu(items: [
    MenuItem(id: 0, title: 'Home',),
    MenuItem(id: 1, title: 'Benefits'),
    MenuItem(id: 2, title: 'Pricing'),
    MenuItem(id: 3, title: 'Blog'),
  ]);

//  TextStyle menuText = TextStyle(
//    fontSize:  20,
//    color: Colors.red
//  );

  @override
  void initState() {
    selectedMenuItemId = menu.items[0].id;
    super.initState();
  }

  Widget footerView(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 0, 150, 15),
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 2.5),
      ),
      child: Center(
          child: Text(
        'Sign Up',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
      )),
//      margin: EdgeInsets.fromLTRB(10, 0, 50, 10),
//      child:Padding(
//        padding: const EdgeInsets.fromLTRB(30,0,90, 10 ),
//        child: RaisedButton(
//          onPressed: null,
//        //clipBehavior: Clip.hardEdge ,
//        child:Text('Sign Up',
//          style: TextStyle(fontSize: 18,
//            fontWeight: FontWeight.bold,
//            color: Colors.white
//          ),),
//        ),
//      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DrawerScaffold(
        //extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Pay.',
            style: TextStyle(color: Colors.blue[900], fontSize: 25,
            ),
          ), //Image.asset('assets/images/paylogo.png', height: 50,),
          actions: [
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 16,
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ))

//          Padding(padding: EdgeInsets.only(top: 15),
//            child:  Text('Login', style: TextStyle(fontSize: 20, color: Colors.blue[900]),),
//          ),
//          IconButton(icon: Icon(Icons.input), onPressed: null, iconSize: 30,disabledColor: Colors.blue[900],)
          ],
        ),

        drawers: [
          SideDrawer(
            textStyle: TextStyle(fontSize: 22, color: Colors.white, fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold),
            percentage: 1,
            menu: menu,
            animation: true,
            color: Colors.blue[900],
            selectedItemId: selectedMenuItemId,
            selectorColor: Colors.yellow,
//            onMenuItemSelected: (itemId) {
//              setState(() {
//                selectedMenuItemId = itemId;
//              });
              onMenuItemSelected: (itemId) {
              selectedMenuItemId = itemId;
              if(itemId == 0){
                setState(() => _widget = Home());
              } else if (itemId == 1){
                setState(() => _widget = Benefit());
              } else if (itemId == 2){
                setState(() => _widget = Pricing());
              }  else if (itemId == 3){
                setState(() => _widget = Blog());
              }  else{
                setState(() {
                  selectedMenuItemId = itemId;
                });
              }


            },
            footerView: footerView(context),
          )
        ],

      builder: (context, id) => _widget

        );
  }
}
