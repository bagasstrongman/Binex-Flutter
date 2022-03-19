import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:developer';

class TradePage extends StatefulWidget {
  const TradePage({Key? key}) : super(key: key);

  @override
  State<TradePage> createState() => _TradePageState();
}

class _TradePageState extends State<TradePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      /*appBar: AppBar(
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
      ),*/
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          child: Image(
            image: AssetImage("assets/FrameAplikasi.png"),
            fit: BoxFit.cover,
          ),
        ),
        Align(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.07,
                    //color: Colors.blue,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 1, color: Colors.grey))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.07,
                          decoration: BoxDecoration(
                              //borderRadius: BorderRadius.circular(20),
                              border: Border(
                                  bottom: BorderSide(
                                      width: 3, color: Colors.blue))),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Overeview",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 17),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.07,
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 3))),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Info",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade400,
                                  fontSize: 17),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.07,
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 3))),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "History",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade400,
                                  fontSize: 17),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Last Close",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Rp.80.345.877",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "High ",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Low ",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Rp.55.200",
                            style: TextStyle(
                              color: Colors.red.shade400,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            " Rp.49.670",
                            style: TextStyle(
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ])
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.5,
                //color: Colors.blue,
                child: Image(
                  image: AssetImage("assets/Chart.png"),
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width * 0.44,
                        height: MediaQuery.of(context).size.height * 0.065,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.blueGrey.shade900,
                          child: Row(children: [
                            Image(
                              image: AssetImage("assets/Up.png"),
                              width: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Withdraw",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ]),
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        )),
                    ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width * 0.44,
                        height: MediaQuery.of(context).size.height * 0.065,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.blueGrey.shade900,
                          child: Row(children: [
                            Image(
                              image: AssetImage("assets/Down.png"),
                              width: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Deposit",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ]),
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ))
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.065,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.amber.shade700,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage("assets/Main.png"), width: 50),
                          Text(
                            "Exchange",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )
                        ]),
                  ),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
