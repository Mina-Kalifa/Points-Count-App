import 'package:flutter/material.dart';

class Points_Counter extends StatefulWidget {
  const Points_Counter({super.key});

  @override
  State<Points_Counter> createState() => _Pointer_CounterState();
}

class _Pointer_CounterState extends State<Points_Counter> {
  int teamApoint = 0;
  int teamBpoint = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pointer Count'),
          backgroundColor: Color.fromARGB(255, 250, 150, 11),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 58,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      '$teamApoint',
                      style: TextStyle(
                        fontSize: 160,
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(120, 40),
                      ),
                      onPressed: () {
                        setState(() {
                          teamApoint++;
                        });
                      },
                      child: Text('Add 1 Point'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(120, 40),
                      ),
                      onPressed: () {
                        setState(() {
                          teamApoint += 2;
                        });
                      },
                      child: Text('Add 2 Point'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(120, 40),
                      ),
                      onPressed: () {
                        setState(() {
                          teamApoint += 3;
                        });
                      },
                      child: Text('Add 3 Point'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 360,
                  child: VerticalDivider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      '$teamBpoint',
                      style: TextStyle(
                        fontSize: 160,
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(120, 40),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoint++;
                        });
                      },
                      child: Text('Add 1 Point'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(120, 40),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoint += 2;
                        });
                      },
                      child: Text('Add 2 Point'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(120, 40),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoint += 3;
                        });
                      },
                      child: Text('Add 3 Point'),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(
              flex: 2,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: Size(120, 40),
              ),
              onPressed: () {
                setState(() {
                  teamApoint = 0;
                  teamBpoint = 0;
                });
              },
              child: Text('Reset'),
            ),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
