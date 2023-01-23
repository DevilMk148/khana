import 'package:flutter/material.dart';

class SreachPage extends StatefulWidget {
  const SreachPage({Key? key}) : super(key: key);

  @override
  State<SreachPage> createState() => _SreachPageState();
}

class _SreachPageState extends State<SreachPage> {
  var userDetails = {};
  var i;
  List returnTicketDetails = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(color: Colors.white, height: 1, thickness: 1),
            Container(
              width: double.infinity,
              height: 200,
              color: Color.fromRGBO(107, 0, 0, 1),
              child: Column(
                children: [
                  Container(
                      height: 90,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 20, bottom: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Discover",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "Discover Your Things, Enjoy!!",
                            style: TextStyle(fontSize: 16, color: Colors.white70),
                          ),
                        ],
                      )),
                  Container(
                    height: 50,
                    width: 340,
                    alignment: Alignment.bottomCenter,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          // labelText: "Search",
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Icon(Icons.close)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            "Genres",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromRGBO(107, 0, 0, 1)),
                          ),
                          height: 60,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 20),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/images/fast.png'),backgroundColor: Color.fromRGBO(107, 0, 0, 1),
                                    ),
                                    Text("Breakfast",style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(107, 0, 0, 1),
                                ),
                                width: 120,
                                height: 50,
                                margin: EdgeInsets.only(left: 20),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/images/lunch.png'),backgroundColor: Color.fromRGBO(107, 0, 0, 0),
                                    ),
                                    Text("Lunch")
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(107, 0, 0, 0.5),
                                ),
                                width: 120,
                                height: 50,
                                margin: EdgeInsets.only(left: 20),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                      AssetImage('assets/images/food.png'),backgroundColor: Color.fromRGBO(107, 0, 0, 0),
                                    ),
                                    Text("Dinner",style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(107, 0, 0, 1),
                                ),
                                width: 120,
                                height: 50,
                                margin: EdgeInsets.only(left: 20),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                      AssetImage('assets/images/sweets.png'),backgroundColor: Color.fromRGBO(107, 0, 0, 0),
                                    ),
                                    Text("Dessert")
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(107, 0, 0, 0.5),
                                ),
                                width: 120,
                                height: 50,
                                margin: EdgeInsets.only(left: 20),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Near You",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromRGBO(107, 0, 0, 1))),
                        InkWell(
                          child: Container(
                            child: Row(
                              children: [
                                Text(
                                  "Explore",
                                  style: TextStyle(
                                      color: Color.fromRGBO(107, 0, 0, 1)),
                                ),
                                Icon(
                                  Icons.chevron_right_outlined,
                                  color: Color.fromRGBO(107, 0, 0, 1),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/food10.jpeg'),
                                  fit: BoxFit.cover)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Margherita",style: TextStyle(fontSize: 20,color: Colors.white),),
                                    Text("Rs.550",style: TextStyle(color: Colors.white)),
                                  ],
                                ),

                                height: 60,
                                width: 200,
                                alignment: Alignment.bottomCenter,
                                decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/food5.jpeg'),
                                    fit: BoxFit.cover),
                            ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Burger",style: TextStyle(fontSize: 20,),),
                                    Text("Rs.550",),
                                  ],
                                ),

                                height: 60,
                                width: 200,
                                alignment: Alignment.bottomCenter,
                                decoration: BoxDecoration(
                                  color: Colors.white60,
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Margherita",style: TextStyle(fontSize: 20,color: Colors.white),),
                                  Text("Rs.550",style: TextStyle(color: Colors.white)),
                                ],
                              ),
                              height: 60,
                              width: 200,
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(107, 0, 0, 0.6),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                              ),
                            ),
                          ],
                        ),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/food7.jpeg'),
                                    fit: BoxFit.cover))
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Salad",style: TextStyle(fontSize: 20),),
                                  Text("Rs.350"),
                                ],
                              ),
                              height: 60,
                              width: 200,
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(250, 240, 240, 0.7),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                              ),
                            ),
                          ],
                        ),


                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.orange,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/food2.jpeg'),
                                    fit: BoxFit.cover))),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
