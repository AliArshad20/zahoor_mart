import 'package:flutter/material.dart';
import 'package:myshop/providers/Productlist.dart';
import 'package:myshop/screens/productdetailscreen.dart';
import 'package:myshop/screens/productscreen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context,orientation,deviceType) {
      return ChangeNotifierProvider(

        create: (BuildContext context)=>Productlist(),
        child: MaterialApp(
          title: 'My Shop',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          debugShowCheckedModeBanner: false,
         //home: Productscreen(),

        initialRoute:'start',
          routes: {
            'start':(BuildContext ctx){
              return Splashscreen();},
              Productdetailscreen.routeName:(BuildContext context)=>Productdetailscreen(),

        },
        ),
      );
    }
    );
  }
}

