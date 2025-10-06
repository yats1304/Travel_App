import 'package:flutter/material.dart';
import 'package:travelapp/services/support_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              "images/brazil.jpg",
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Icon(Icons.favorite_outline),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 3.4,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rio de Janeiro",
                        style: AppWidget.headlineTextStyle(24),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 5,
                          bottom: 5,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(82, 0, 0, 0),
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.star_outline),
                            SizedBox(width: 5),
                            Text(
                              "5.0",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "images/brazil1.jpg",
                          height: 30,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Brazil",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "143 reviews",
                        style: TextStyle(
                          color: const Color.fromARGB(173, 0, 0, 0),
                          fontSize: 15.0,
                          fontFamily: "Poppins",
                        ),
                      ),
                      Text(
                        "143 reviews",
                        style: TextStyle(
                          color: const Color.fromARGB(173, 0, 0, 0),
                          fontSize: 15.0,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.",
                    style: TextStyle(
                      color: const Color.fromARGB(173, 0, 0, 0),
                      fontSize: 15.0,
                      fontFamily: "Poppins",
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Read more",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: const Color.fromARGB(173, 0, 0, 0),
                      fontSize: 15.0,
                      fontFamily: "Poppins",
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Upcoming tours",
                        style: AppWidget.headlineTextStyle(22),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: const Color.fromARGB(173, 0, 0, 0),
                          fontSize: 16.0,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "images/bali.jpg",
                                  height: 200,
                                  width: 250,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Iconic Bali",
                                style: AppWidget.headlineTextStyle(18),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "8 days * from \$500/person",
                                    style: TextStyle(
                                      color: const Color.fromARGB(119, 0, 0, 0),
                                      fontSize: 14.0,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_outline),
                                  Text(
                                    "4.6",
                                    style: TextStyle(fontFamily: "Poppins"),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "56 reviews",
                                    style: TextStyle(
                                      color: const Color.fromARGB(119, 0, 0, 0),
                                      fontSize: 14.0,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "images/france.jpg",
                                  height: 200,
                                  width: 250,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Iconic France",
                                style: AppWidget.headlineTextStyle(18),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "8 days * from \$500/person",
                                    style: TextStyle(
                                      color: const Color.fromARGB(119, 0, 0, 0),
                                      fontSize: 14.0,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_outline),
                                  Text(
                                    "4.6",
                                    style: TextStyle(fontFamily: "Poppins"),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "56 reviews",
                                    style: TextStyle(
                                      color: const Color.fromARGB(119, 0, 0, 0),
                                      fontSize: 14.0,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "images/brazil.jpg",
                                  height: 200,
                                  width: 250,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Iconic Brazil",
                                style: AppWidget.headlineTextStyle(18),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "8 days * from \$500/person",
                                    style: TextStyle(
                                      color: const Color.fromARGB(119, 0, 0, 0),
                                      fontSize: 14.0,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_outline),
                                  Text(
                                    "4.6",
                                    style: TextStyle(fontFamily: "Poppins"),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "56 reviews",
                                    style: TextStyle(
                                      color: const Color.fromARGB(119, 0, 0, 0),
                                      fontSize: 14.0,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
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
