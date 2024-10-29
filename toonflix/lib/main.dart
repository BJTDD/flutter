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
                padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
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
                    padding: EdgeInsets.fromLTRB(20, 5, 0, 20),
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
                          '17 18 19 2', //오버플로우시 처리방법 알아보기...ㅇ=
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
              Column(
                children: [
                  MeetingWidget(
                    color: Color(0xFCFEF754),
                    text: 'DESIGN MEETING',
                    start: '11.30',
                    end: '12.20',
                    team: 'ALEX, HELENA, NANA',
                  ),
                  MeetingWidget(
                    color: Color(0xFF9C6BCE),
                    text: 'DAILY PROJECT',
                    start: '12.35',
                    end: '14.10',
                    team: 'ME, RICHARD, CIRY, 1, 2, 3, 4',
                  ),
                  MeetingWidget(
                    color: Color(0xFFBCEE4B),
                    text: 'WEEKLY PLANNING',
                    start: '15.00',
                    end: '16.30',
                    team: 'DEN, NANA, MARK',
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

class MeetingWidget extends StatelessWidget {
  final Color color;
  final String text;
  final String start;
  final String end;
  final String team;

  const MeetingWidget({
    super.key,
    required this.color,
    required this.text,
    required this.start,
    required this.end,
    required this.team,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(45),
            ),
            width: double.infinity,
            height: 200,
            child: Column(
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            start.split('.')[0],
                            style: const TextStyle(
                              fontSize: 25,
                              height: 0.8,
                            ),
                          ),
                          Text(start.split('.')[1]),
                          const SizedBox(height: 5),
                          const Text(
                            '|',
                            style: TextStyle(height: 0.2),
                          ),
                          const Text('|'),
                          const SizedBox(height: 5),
                          Text(
                            end.split('.')[0],
                            style: const TextStyle(
                              fontSize: 25,
                              height: 0.8,
                            ),
                          ),
                          Text(end.split('.')[1]),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          text,
                          style: const TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w600,
                            height: 0.8,
                          ),
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(width: 50),
                    Text(
                      team.split(',')[0],
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 30),
                    Text(
                      team.split(',')[1],
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 30),
                    Text(
                      team.split(',')[2],
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
