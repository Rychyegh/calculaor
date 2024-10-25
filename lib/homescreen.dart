import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  // Define variables for the calculator state
  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          // Perform the corresponding operation based on the button text
        },
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          padding: const EdgeInsets.all(20.0),
        ),
        child: Text(
          btntxt,
          style: TextStyle(
            fontSize: 35,
            color: txtcolor,
          ),
        ),
        // shape: CircleBorder(),
        // color: btncolor,
        // padding: EdgeInsets.all(20)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Calculator",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // calculator display

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '0',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 100,
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // here buttons functions will be called where we will pass some agruments
                calcbutton('AC', Colors.grey, Colors.black),
                calcbutton('+/-', Colors.grey, Colors.black),
                calcbutton(' % ', Colors.blue, Colors.black),
                calcbutton(' /  ', Colors.yellow, Colors.black),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // here buttons functions will be called where we will pass some agruments
                calcbutton('  7 ', Colors.grey, Colors.black),
                calcbutton('  8 ', Colors.grey, Colors.black),
                calcbutton('  9 ', Colors.blue, Colors.black),
                calcbutton(' *  ', Colors.yellow, Colors.black),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // here buttons functions will be called where we will pass some agruments
                calcbutton('  4 ', Colors.grey, Colors.black),
                calcbutton('  5 ', Colors.grey, Colors.black),
                calcbutton('  6 ', Colors.blue, Colors.black),
                calcbutton(' -  ', Colors.red, Colors.black),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // here buttons functions will be called where we will pass some agruments
                calcbutton('  1 ', Colors.grey, Colors.black),
                calcbutton('  2 ', Colors.grey, Colors.black),
                calcbutton('  3 ', Colors.blue, Colors.black),
                calcbutton('  + ', Colors.yellow, Colors.black),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Perform the calculation
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    padding: const EdgeInsets.all(20.0),
                  ),
                  child: Text(
                    ' 0 ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                    ),
                  ),
                  // child: Padding(
                  //   padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
                  // ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// RaisedButton(
//     {required Null Function() onPressed,
//     required Text child,
//     required CircleBorder shape}) {}
