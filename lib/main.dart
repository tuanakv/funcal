import 'package:calculator/calcButton.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(       
        primarySwatch: Colors.blue
      ),
      home: const CalCulatorView(),
    );
  }
}

class CalCulatorView extends StatefulWidget {
  const CalCulatorView({super.key}); 

  @override
  State<CalCulatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalCulatorView> {  
  String equation = "10";
  String result = "0";
  double equationFontSize = 18.0;
  double resultFontSize = 18.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black54,
        leading: const Icon(Icons.settings, color: Colors.orange,),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 1.0),
            // padding: EdgeInsets.all(10),
            child: Text('DEG', style: TextStyle(color: Colors.white38),),),
          SizedBox( width: 20,)
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(result,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 80
                          ),
                          ),
                          ),
                        const Icon(Icons.more_vert,
                        color: Colors.orange,
                        size: 30,),
                        const SizedBox(width: 20,)
                      ]
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(equation,
                          style: const TextStyle(
                            fontSize: 40,
                            color: Colors.white38,
                          ),),),
                        IconButton(icon: const Icon(Icons.backspace_outlined,
                          color: Colors.orange, size: 30,),
                          onPressed: (){
                            buttonPressed("<X|");
                          },),
                        const SizedBox(width: 20,)
                      ],
                    )
                  ],
                )
              )

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('AC', Colors.white10, () => buttonPressed('AC')),
                calcButton('%', Colors.white10, () => buttonPressed('%')),
                calcButton(':', Colors.white10, () => buttonPressed(':')),
                calcButton('x', Colors.white10, () => buttonPressed('x')),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcButton('7', Colors.white10, () => buttonPressed('7')),
              calcButton('8', Colors.white10, () => buttonPressed('8')),
              calcButton('9', Colors.white10, () => buttonPressed('9')),
              calcButton('-', Colors.white10, () => buttonPressed('-')),
            ],),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcButton('4', Colors.white10, () => buttonPressed('4')),
              calcButton('5', Colors.white10, () => buttonPressed('5')),
              calcButton('6', Colors.white10, () => buttonPressed('6')),
              calcButton('+', Colors.white10, () => buttonPressed('+')),
            ],),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcButton('1', Colors.white10, () => buttonPressed('1')),
              // SizedBox(width: MediaQuery.of(context).size.width*0.04,),
              calcButton('2', Colors.white10, () => buttonPressed('2')),
              // SizedBox(width: MediaQuery.of(context).size.width*0.04),
              calcButton('3', Colors.white10, () => buttonPressed('3')),
              // SizedBox(width: MediaQuery.of(context).size.width*0.04),
              calcButton('/', Colors.white10, () => buttonPressed('/')),
              // SizedBox(width: MediaQuery.of(context).size.width*0.04),
              
              
            ],),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcButton('+/-', Colors.white10, () => buttonPressed('+/-')),
              // SizedBox(width: MediaQuery.of(context).size.width*0.04,),
              calcButton('0', Colors.white10, () => buttonPressed('0')),
              // SizedBox(width: MediaQuery.of(context).size.width*0.04),
              calcButton('.', Colors.white10, () => buttonPressed('.')),
              // SizedBox(width: MediaQuery.of(context).size.width*0.04),
              calcButton('=', Colors.orange, () => buttonPressed('=')),
              // SizedBox(width: MediaQuery.of(context).size.width*0.04),
              
            ],
            ),
            //calcButton('=', Colors.orange, () => buttonPressed('=')),
          ],
        ),
        
        
        ),
    );
  }
  
  buttonPressed(String buttonText){

  }
}
