import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 1,
        shadowColor: Colors.white,
        title: Container(
          child: Image(image: AssetImage("assets/binex.png"), height: 45),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Icon(
                      Icons.notifications_rounded,
                      color: Colors.grey,
                    ),
                    width: 50,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 10, left: 5),
                      width: 25,
                      height: 15,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "10",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          child: Image(
              image: AssetImage("assets/FrameBlue.png"), fit: BoxFit.cover),
        ),
        Align(
          child: Container(
            child: Stack(children: [
              ListView(scrollDirection: Axis.vertical, children: [
                Center(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.amber.shade800,
                              image: DecorationImage(
                                  image: AssetImage("assets/Pattern.png"))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                //margin: EdgeInsets.only(left: 20),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Total Balance",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "80,000.56",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "BTC 4.96129767",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(Icons.remove_red_eye_outlined,
                                  color: Colors.white),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                                child: Icon(Icons.arrow_forward,
                                    color: Colors.amber.shade800),
                              )
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Top Movement",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 5),
                        height: MediaQuery.of(context).size.height * 0.25,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 5),
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.height * 0.25,
                              decoration: BoxDecoration(
                                  //color: Colors.amber,
                                  image: DecorationImage(
                                      image: AssetImage("assets/Card1.png"),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              //margin: EdgeInsets.only(right: 5),
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.height * 0.25,
                              decoration: BoxDecoration(
                                  //color: Colors.amber,
                                  image: DecorationImage(
                                      image: AssetImage("assets/Card2.png"),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.height * 0.25,
                              decoration: BoxDecoration(
                                  //color: Colors.amber,
                                  image: DecorationImage(
                                      image: AssetImage("assets/Card3.png"),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.height * 0.25,
                              decoration: BoxDecoration(
                                  //color: Colors.amber,
                                  image: DecorationImage(
                                      image: AssetImage("assets/Card4.png"),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.height * 0.25,
                              decoration: BoxDecoration(
                                  //color: Colors.amber,
                                  image: DecorationImage(
                                      image: AssetImage("assets/Card5.png"),
                                      fit: BoxFit.cover)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "News",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              height: MediaQuery.of(context).size.width * 0.2,
                              //color: Colors.blue,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Bitcoin, Ethereum, Crypto News and Price Data",
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "News Media  |  19h ago",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.width * 0.15,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage("assets/News1.jpg"))),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  image: AssetImage("assets/News1.jpg"),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey.shade600,
                              width: 0.5,
                            )),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              height: MediaQuery.of(context).size.width * 0.2,
                              //color: Colors.blue,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Coinbase's Junk Bonds Show Crypto Really is Going",
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "News Media  |  19h ago",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.width * 0.15,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage("assets/News1.jpg"))),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  image: AssetImage("assets/News2.jpg"),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey.shade600,
                              width: 0.5,
                            )),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              height: MediaQuery.of(context).size.width * 0.2,
                              //color: Colors.blue,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Bitcoin, Ethereum, Crypto News and Price Data",
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "News Media  |  19h ago",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.width * 0.15,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage("assets/News3.jpg"))),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  image: AssetImage("assets/News3.jpg"),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey.shade600,
                              width: 0.5,
                            )),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              height: MediaQuery.of(context).size.width * 0.2,
                              //color: Colors.blue,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Bitcoin, Ethereum, Crypto News and Price Data",
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "News Media  |  19h ago",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.width * 0.15,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage("assets/News4.jpg"))),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  image: AssetImage("assets/News4.jpg"),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey.shade600,
                              width: 0.5,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.amber.shade800),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("1",
                                    //textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.shade700),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("2",
                                    //textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.shade700),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("3",
                                    //textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.shade700),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("...",
                                    //textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.12,
                      )
                    ],
                  ),
                ),
              ]),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.width * 0.2,
                  //color: Colors.blue,
                  child: Stack(
                    children: [
                      Column(children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.width * 0.03,
                          //color: Colors.amber,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.width * 0.17,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              
                            ),
                            
                          ),
                          //color: Colors.black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image:AssetImage("assets/Home.png")),
                                )
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image:AssetImage("assets/Wallet.png")),
                                )
                              ),
                              Container(
                                width: 40,
                                height: 40,
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image:AssetImage("assets/Static.png")),
                                )
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image:AssetImage("assets/Account.png")),
                                )
                              )
                            ],
                          )
                        ),
                      ]),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.amber.shade800,
                              image: DecorationImage(image: AssetImage("assets/Main.png"))),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ]),
    );
  }
}
