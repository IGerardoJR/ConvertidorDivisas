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
    final border =  OutlineInputBorder(
                      // Color(0xAARRGGBB)
                      // 0xFF000000
                      borderSide: BorderSide(
                        color: Colors.black,  
                        width: 3.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius:
                        BorderRadius.circular(20),
                      
                    );

    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10), // Se encarga de lo de adentro.
              margin: const EdgeInsets.all(10), // Se encarga lo de fuera.
              
              // color: Colors.black,
              child: Text('0',
              textAlign:TextAlign.center ,
              style: 
              TextStyle(
                color:Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                  
                  ),
              ),
            ),
            // Padding 
            // Container
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                    style:TextStyle(
                      color:Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                    decoration: InputDecoration(
                        hintText: 'Porfavor, introduzca el valor en MXN', 
                        
                        hintStyle: TextStyle(
                            color:Colors.black
                        ),
                        prefixIcon: Icon(
                            Icons.monetization_on_outlined,
                        ),
                        prefixIconColor: Colors.black,
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: border,
                        enabledBorder: border,
                        
                      ),
                      keyboardType: TextInputType.number,
                    ),
              ),
                
                // Raised
                // Appears like a text
          
            ),
            TextButton(onPressed: () => {
              print('Haz dado click!'),
            }, child: const Text('Click me!'))
            
            ], 
             
        ),
        
       ),
         
       

       
      )
      
    );
  }

  
}
