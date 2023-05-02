import 'package:flutter/material.dart';
import 'dart:math';

void main() =>
  runApp(MaterialApp(home: Home(),
  debugShowCheckedModeBanner: false,
  ));


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
   int leftdiceroll =1;
   int rightdiceroll =1;

   void Dice(){
     setState(() {
       leftdiceroll =Random().nextInt(6)+1;
       rightdiceroll= Random().nextInt(6)+1;
     });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 70, 40),
      appBar: AppBar(
        title: const Text("Dice Game"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 114, 15, 15),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Image.asset("assets/images/dice$leftdiceroll.png")
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                     Expanded(
                    child: Image.asset("assets/images/dice$rightdiceroll.png")
                    ),
                ],
               
              ),
              const SizedBox(
                height: 40.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 114, 15, 15), foregroundColor: Colors.yellow, fixedSize: const Size(140, 40)),
                onPressed: (){
                  Dice();
                },
                child: const Text("Roll",))
              
            ],
          ),
        ),
      ),
    );
  }
}

