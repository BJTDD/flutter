import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 40, 20, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('assets/images/girl-1562025_1280.jpg'),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'MONDAY 16',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          'TODAY',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 40,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.circle,
                          color: Color.fromARGB(255, 213, 67, 157),
                          size: 13,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '17 18 19 20',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 40,
                          ),
                          overflow: TextOverflow.clip,
                          maxLines: 1,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ); //materialapp cupertinoapp
  }
}
