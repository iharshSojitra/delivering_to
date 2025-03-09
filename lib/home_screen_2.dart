import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home_screen_2 extends StatefulWidget {
  const home_screen_2({Key? key}) : super(key: key);

  @override
  State<home_screen_2> createState() => _home_screen_2State();
}

class _home_screen_2State extends State<home_screen_2> {
  List icons = [
    'assets/images/burger.png',
    'assets/images/tshirt.png',
    'assets/images/medicine.png',
    'assets/images/hotdog.png',
    'assets/images/cosmetics.png',
  ];
  List icons2 = [
    'assets/images/web.png',
    'assets/images/free-delivery.png',
    'assets/images/email.png'
  ];
  List text1 = [
    "Deliverd\nby primzee",
    "Free\nDelivery",
    "Special\nOffers",
  ];
  List images3 = ['assets/images/burger_3.png', 'assets/images/food_3.png'];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.menu,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "PRIMZEE",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.yellow,
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(
                              5,
                              (index) => GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        select = index;
                                      });
                                    },
                                    child: Image.asset(
                                      icons[index],
                                      height: 40,
                                      width: 40,
                                      color: select == index
                                          ? Colors.orange
                                          : Colors.black,
                                    ),
                                  )),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          "Deliver to",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(30)),
                            prefixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.bookmark_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            suffixIcon: Icon(Icons.gps_fixed),
                            hintText: 'Enter Address',
                            hintStyle:
                                TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    width: 160,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            icons2[index],
                            height: 35,
                            width: 35,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(text1[index]),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 15,
                    child: Icon(
                      Icons.settings_backup_restore_rounded,
                      color: Colors.yellow,
                      size: 18,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Recent Order",
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "View all",
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 170,
              width: 375,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/food_6.jpg'),
                      fit: BoxFit.cover),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, top: 20),
                      child: Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                          child: Text(
                            "4.9 🖤",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 68,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('assets/images/chilis.png'),
                            height: 50,
                            width: 50,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "1x Mashroom soup...",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              Text(
                                "85,00t",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                            ],
                          ),
                          Spacer(),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.tealAccent.shade400,
                            child: Icon(
                              Icons.settings_backup_restore_rounded,
                              size: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Recomended",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 85,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      width: 174,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Image(
                        image: AssetImage(images3[index]),
                        height: 20,
                        width: 20,
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
