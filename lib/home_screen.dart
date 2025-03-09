import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  List logo = [
    'assets/images/starbucks_logo.png',
    'assets/images/subway_2.png',
  ];

  List images = [
    'assets/images/restaurat_1.jpg',
    'assets/images/restaurat_2.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                      size: 35,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "PRIMZEE",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 23,
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Delivering to",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30)),
                  fillColor: Colors.white,
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.bookmark_border,
                          color: Colors.yellow, size: 30),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  suffixIcon: Icon(Icons.gps_fixed),
                  hintText: "Enter Address",
                  hintStyle: TextStyle(fontSize: 19),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Text(
                "Featured Restaurants",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 180,
                      width: 340,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage(
                                images[index],
                              ),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, right: 15),
                              child: Container(
                                height: 35,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "9.9 🖤",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 70,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/mc_logo.png'),
                                  height: 50,
                                  width: 50,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Mc Donald's Beeghley"),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "it is often frustrating to attempt to...",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Recomended",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 150,
                      width: 160,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Center(
                              child: Image.asset(
                            logo[index],
                            height: 70,
                            width: 70,
                          )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "30-35 mins",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    "min. 25.00",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                              Container(
                                height: 30,
                                width: 55,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.black54)),
                                child: Center(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "9.9 ",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Icon(
                                      Icons.favorite,
                                      size: 20,
                                    ),
                                  ],
                                )),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
