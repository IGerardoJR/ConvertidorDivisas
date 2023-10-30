import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'pages/currency_converter_material_page.dart';

void main()
{
  runApp(const MyApp());
}

// MaterialApp
// CupertinoApp (ios)

// Types of widgets
// 1. StatelessWidget - Inmutable. (Usado para elementos fijos que no tendran manejo de estado)
// 2. StatefulWidget - Mutable. (Usado para por ejemplo manejar algun contador o convertidor,etc).
// 3. InheritedWidget


// State : 'Some data that the Widget should care about'.


// 1. Material Design
// 2. Cupertino Design


class MyApp extends StatelessWidget {
  
  // const MyApp({Key? key}): super(key: key);
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('0',
            style: 
            TextStyle(
              color:Color.fromRGBO(255, 255, 255, 1),
                fontSize: 60,
                fontFamily: AutofillHints.jobTitle,
                fontWeight: FontWeight.bold
                ),
            ),
            TextField(
                
            ),
          
          ],  
        ),
       ),  
      )
    );


    // return MaterialApp(
    //   home: CurrencyConverterMaterialPage(),
    // );
  }

  
}
