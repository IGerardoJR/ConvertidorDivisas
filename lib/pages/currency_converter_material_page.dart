import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';


// 1. Crear una variable que almacene el valor a convertir.
// 2. Crear una funcion que haga el calculo de mxn a usd.
// 3. Guardar el resultado en una variable
// 4. Mostrarlo en pantalla.


// MaterialApp
// CupertinoApp (ios)

// Types of widgets
// 1. StatelessWidget - Inmutable. (Usado para elementos fijos que no tendran manejo de estado)
// 2. StatefulWidget - Mutable. (Usado para por ejemplo manejar algun contador o convertidor,etc).
// 3. InheritedWidget

// State : 'Some data that the Widget should care about'.

// 1. Material Design
// 2. Cupertino Design

class CurrencyConverterMaterialPage extends StatefulWidget{
   const CurrencyConverterMaterialPage({super.key});


  @override
  State<CurrencyConverterMaterialPage> createState()   
   => _CurrencyConverterMaterialPage();
  
}

class _CurrencyConverterMaterialPage extends State<CurrencyConverterMaterialPage>{
  final TextEditingController _controller = TextEditingController();
    double _result = 0;
    String _hint = "Porfavor, introduzca el valor en MXN";

  @override
  void initState(){
    // TODO : Initi state
    super.initState();
  }

  @override
  Widget build(BuildContext context)
  {
    print('rebuild');
    final border = OutlineInputBorder(
      // Color(0xAARRGGBB)
      // 0xFF000000
      borderSide: BorderSide(
        color: Colors.black,
        width: 3.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5),
    );

    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 3,
        title: const Text('Convertidor de MXN a USD'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              // Se encarga de lo de adentro.
              margin: const EdgeInsets.all(10),
              // Se encarga lo de fuera.

              // color: Colors.black,
              child: Text(
                _result.toStringAsFixed(2) + ' USD',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              
            ),
            // Padding
            // Container
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: _controller,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: _hint,
                    hintStyle: TextStyle(color: Colors.black),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () => {
                  setState(() { 
                  _result = double.parse(_controller.text) / 18.71;
                  }),     
                },
                style: ButtonStyle(
                    elevation: const MaterialStatePropertyAll(20),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.black),
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    fixedSize: const MaterialStatePropertyAll(
                        Size(double.maxFinite, 50)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)))),
                child: const Text('Convertir'),

                
              ),
              
            ),
            // Boton para limipiar texto
            Padding(padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () => {
                setState(() {
                  _controller.clear();
                  _result = 0;
                  _hint = "Introduce un nuevo valor!";
                })
              },
              style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(20),
                backgroundColor: const MaterialStatePropertyAll(Colors.black),
                foregroundColor: const MaterialStatePropertyAll(Colors.white),
                fixedSize: const MaterialStatePropertyAll(Size(double.maxFinite, 50)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
              ),
              child: const Text('Limpiar'),
            ),
            ),
            Padding(padding: const EdgeInsets.all(10),
            child:ElevatedButton(
              child: Text('Salir'),
              onPressed: () => {
                setState(() {
                  exit(0);
                })
              },
              style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(20),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                backgroundColor: const MaterialStatePropertyAll(Colors.black),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                fixedSize: const MaterialStatePropertyAll(Size(double.maxFinite, 50)))
              ),  
            ),
          ],
        ),
      ),
    ));
  }
}

