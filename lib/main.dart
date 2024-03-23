import 'dart:math';
import 'package:flutter/material.dart';


void main(){
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: const Text('Low Budget Dicee',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico',
            fontSize: 20.0,
            color: Colors.white,
          ),),
        centerTitle: true,
      ),
      body: DiceePages(),
    ),
  ),);
}

class DiceePages extends StatefulWidget {
  const DiceePages({Key? key}) : super(key: key);

  @override
  _DiceePagesState createState() => _DiceePagesState();
}

class _DiceePagesState extends State<DiceePages> {
  int LeftDiceNum = 3;
  int RightDiceNum = 1;


  void ChangeDiceNum1(){
    setState(() {
      LeftDiceNum = Random().nextInt(6) + 1;

    });
  }
  void ChangeDiceNum2(){
    setState(() {
      RightDiceNum = Random().nextInt(6) + 1;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Card(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50.0,
                  width: 200.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  padding: const EdgeInsets.fromLTRB(60.0, 10.0, 50.0, 10.0),
                  child: const Text(
                    'Lets Play',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontFamily: 'Flamenco',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Icon(Icons.label_important_rounded),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: double.infinity,
          height: 10.0,
        ),
        Container(
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/Shif.jpg'),
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/armas.jpg'),
              )
            ],
          ),
        ),
        const SizedBox(
          width: double.infinity,
          height: 10.0,
        ),
        const SizedBox(
          child: Divider(
            height: 20.0,

            color: Colors.white,

          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 10.0,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextButton(
                    onPressed: (){
                      ChangeDiceNum1();
                    },
                    child: Image.asset('images/dice$LeftDiceNum.png')),
              ),

              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: TextButton(
                    onPressed: (){
                      ChangeDiceNum2();
                    },
                    child: Image.asset('images/dice$RightDiceNum.png')),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: double.infinity,
          height: 5.0,
        ),

        Card(
          color: Colors.white,
          margin: const EdgeInsets.all(40.0),
          child: Container(
            margin: const EdgeInsets.all(10.0),
            width: double.infinity,
            height: 40.0,
            child: const Text('Dicee is equal to life, We Dont know what will come afterwards!!!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontFamily: 'Ojuju',
                fontWeight: FontWeight.normal,
              ),),
          ),


        ),
        Card(
          margin: const EdgeInsets.fromLTRB(300.0, 0.0, 10.0, 0.0),
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(5.0),
            width: 30.0,
            height: 25.0,
            child: const Text('Shif',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10.0,
                fontFamily: 'Ojuju',

              ),
            ),
          ),
        ),
      ],

    );




  }
}

