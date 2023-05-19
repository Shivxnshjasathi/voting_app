import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  runApp(Dashboard());
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VotingApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class VotingApp extends StatefulWidget {
  @override
  _VotingAppState createState() => _VotingAppState();
}

class _VotingAppState extends State<VotingApp> {
  int option1Count = 0;
  int option2Count = 0;

  void voteForOption1() {
    setState(() {
      option1Count++;
    });
  }

  void voteForOption2() {
    setState(() {
      option2Count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Voting App',
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 24),
          ),
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white30),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 50,
                      height: 145,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white30),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          "https://www.drupal.org/files/vote.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 18,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi Guys!',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24),
                            ),
                            Text(
                              'Welcome To Poll!',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 50,
                      animation: true,
                      lineHeight: 60.0,
                      animationDuration: 1000,
                      percent: option1Count / 10,
                      center: Text(
                        "Akshat!",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      barRadius: const Radius.circular(20),
                      progressColor: Colors.greenAccent,
                      backgroundColor: Colors.white30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 50,
                      animation: true,
                      lineHeight: 60.0,
                      animationDuration: 1000,
                      percent: option2Count / 10,
                      center: Text(
                        "Virat!",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      barRadius: const Radius.circular(20),
                      progressColor: Colors.indigo,
                      backgroundColor: Colors.white30,
                    ),
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      voteForOption1();
                    },
                    child: Container(
                      width: 190,
                      height: 80,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Akshat',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "$option1Count",
                              style: GoogleFonts.poppins(
                                  color: Colors.greenAccent,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.indigo),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      voteForOption2();
                    },
                    child: Container(
                      width: 190,
                      height: 80,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Virat',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '$option2Count',
                              style: GoogleFonts.poppins(
                                  color: Colors.greenAccent,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.indigo),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
