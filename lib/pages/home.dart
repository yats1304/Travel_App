import 'package:flutter/material.dart';
import 'package:travelapp/services/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool asia = false, europe = false, southamerica = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 246, 238),
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello! Dhwani",
                      style: AppWidget.headlineTextStyle(22.0),
                    ),
                    Text(
                      "Welconme to TripGlide",
                      style: TextStyle(fontFamily: "Popins"),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    "images/girl.jpg",
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 20),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search Location...",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Image.asset(
                    "images/filter.png",
                    height: 30,
                    width: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Select your next trip",
              style: AppWidget.headlineTextStyle(20.0),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  asia
                      ? Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Center(
                            child: Text(
                              "Asia",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: "Popins",
                              ),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            asia = true;
                            europe = false;
                            southamerica = false;
                            setState(() {});
                          },
                          child: Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Center(
                              child: Text(
                                "Asia",
                                style: TextStyle(
                                  color: Color.fromARGB(196, 0, 0, 0),
                                  fontSize: 18,
                                  fontFamily: "Popins",
                                ),
                              ),
                            ),
                          ),
                        ),
                  SizedBox(width: 10),
                  europe
                      ? Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Center(
                            child: Text(
                              "Europe",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: "Popins",
                              ),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            asia = false;
                            europe = true;
                            southamerica = false;
                            setState(() {});
                          },
                          child: Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Center(
                              child: Text(
                                "Europe",
                                style: TextStyle(
                                  color: Color.fromARGB(196, 0, 0, 0),
                                  fontSize: 18,
                                  fontFamily: "Popins",
                                ),
                              ),
                            ),
                          ),
                        ),
                  SizedBox(width: 10),
                  southamerica
                      ? Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Center(
                            child: Text(
                              "South America",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: "Popins",
                              ),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            asia = false;
                            europe = false;
                            southamerica = true;
                            setState(() {});
                          },
                          child: Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Center(
                              child: Text(
                                "South America",
                                style: TextStyle(
                                  color: Color.fromARGB(196, 0, 0, 0),
                                  fontSize: 18,
                                  fontFamily: "Popins",
                                ),
                              ),
                            ),
                          ),
                        ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Stack(
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "images/brazil.jpg",
                        height: 450,
                        width: 380,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 450,
                    width: 380,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(26, 0, 0, 0),
                          const Color.fromARGB(143, 0, 0, 0),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.only(right: 30, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Icon(
                                Icons.favorite_outline,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 220),
                        Text(
                          "Brazil",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Popins",
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "South America",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Popins",
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(116, 0, 0, 0),
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Row(
                            children: [
                              Spacer(),
                              Text(
                                "See More",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Popins",
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(width: 70),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
