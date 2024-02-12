// import 'dart:io';


import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double? _deviceWidth;

  @override
  Widget build(BuildContext context) {
    //_deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
              color: Colors.grey[200],
              child: Column(
                        //main column
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
              const SizedBox(height: 10),
              _ColumnBase(),
              const SizedBox(height: 10),
              Card(
                elevation: 10,
                      surfaceTintColor: Colors.white,
              
                color: const Color.fromARGB(255, 255, 255, 255),
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                //main card base
                child: Column(
                  //card column base
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 30),
                    _cardstore(),
                    const SizedBox(height: 20),
                    _subscribe(),
                    const SizedBox(height: 10),
                    _profile(),
                    const SizedBox(height: 10),
                    _lastcard(),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
                        ],
                      ),
            )),
      ),
    );
  }

  Widget _ColumnBase() {
    return Column(
      children: [
        Row(
          //// container for icon and text
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                FloatingActionButton(
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xff7D23E0),
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                    size: 30,
                    color: const Color(0xfff3f7ff),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Add Institute Cover",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const Text(
                  "Browse your Gallery or take a Picture\n from the phone Camera to upload",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget _cardstore() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      // color: Color.fromARGB(255, 220, 219, 218),
      child: Row(
        children: [
          Stack(
            alignment: const Alignment(1.3, 1.2),
            children: [
              Container(
                height: 158,
                width: 158,
                decoration: BoxDecoration(
                  color: const Color(0xfff3f7ff),
                  borderRadius: BorderRadius.circular(20),
                ),
                
              

                
                child: const Icon(
                  Icons.storefront_outlined,
                  size: 70,
                  color: Colors.black,
                ),
              ),
              FloatingActionButton.small(
                shape: const CircleBorder(),
                onPressed: () {},
                backgroundColor: Color(0xff7329d8),
                child: const Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          const Text(
            "Aakash Institute\n \n" "--------",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget _subscribe() {
    return Card(
      //  margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        side: const BorderSide(
            width: 1, color: Color.fromARGB(255, 175, 116, 243)),
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: const Color(0xffd3acff),
      child: Column(
        children: [
          Container(
            width: _deviceWidth! * 0.5,
            //alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              // color: Colors.black,
            ),
            child: const Image(
              image: AssetImage('lib/btick.png'),
            ),
          ),
          const Text(
            textAlign: TextAlign.center,
            "Become a Verified OstelloAI \nInstitute!",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                "₹3500",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                "/year",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [_card1(), _card2()]),
          _text1(),
          _button(),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  Widget _card1() {
    return Container(
      width: _deviceWidth! * 0.45,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 190, 139, 249),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            "₹2500",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            "Charges to verify",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          )
        ],
      ),
    );
  }

  Widget _card2() {
    return Container(
      width: _deviceWidth! * 0.45,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 190, 139, 249),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            "₹1000",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            "In your Wallet",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _text1() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
      alignment: Alignment.centerLeft,
      child: RichText(
        textAlign: TextAlign.start,
        text: const TextSpan(
          // text: 'Hello ',
          // style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            // TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text: '• '
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. \n',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                wordSpacing: 3,
              ),
            ),
            TextSpan(
              text: '• '
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. \n',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                wordSpacing: 3,
              ),
            ),
            TextSpan(
              text:
                  '• Lorem Ipsum is simply dummy text of the printing and typesetting industry. \n',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                wordSpacing: 3,
              ),
            ),
            TextSpan(
              text:
                  '• Lorem Ipsum is simply dummy text of the printing and typesetting industry. \n',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                wordSpacing: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _button() {
    return MaterialButton(
      height: 48,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      color: const Color.fromARGB(255, 110, 73, 220),
      minWidth: _deviceWidth! * 0.9,
      // backgroundColor: Colors.blue,
      onPressed: () {},
      child: const Text(
        "Subscribe to Ostello Now",
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w800),
      ),
    );
  }

  Widget _profile() {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              Container(
                alignment: Alignment.center,
                height: 60.0,
                width: 60.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(color: Colors.green, width: 8),
                    bottom: BorderSide(color: Colors.green, width: 8),
                    left: BorderSide(color: Colors.green, width: 8),
                    right: BorderSide(color: Colors.green, width: 8),
                  ),
                ),
                child: const Text(
                  "😥",
                  // textAlign:TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                child: const Column(
                  children: [
                    Text(
                      "100% Profile Completed!",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "5 of 5 tasks completed",
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Use this personalized guide to get your \ncoaching centre up and running!",
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            height: 68,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                  bottom:
                      BorderSide(color: Color.fromARGB(255, 233, 227, 227))),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff7D23E0),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Add your first course details",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                IconButton(
                  iconSize: 30,
                  icon: const Icon(
                    Icons.chevron_right_rounded,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            height: 68,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                  bottom:
                      BorderSide(color: Color.fromARGB(255, 233, 227, 227))),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff7D23E0),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Customize your institute details",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                IconButton(
                  iconSize: 30,
                  icon: const Icon(
                    Icons.chevron_right_rounded,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            height: 68,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                  bottom:
                      BorderSide(color: Color.fromARGB(255, 233, 227, 227))),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff7D23E0),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Upload your first video",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                IconButton(
                  iconSize: 30,
                  icon: const Icon(
                    Icons.chevron_right_rounded,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            height: 68,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                  bottom:
                      BorderSide(color: Color.fromARGB(255, 233, 227, 227))),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff7D23E0),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Add popular hastags",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                IconButton(
                  iconSize: 30,
                  icon: const Icon(
                    Icons.chevron_right_rounded,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            height: 68,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                  bottom:
                      BorderSide(color: Color.fromARGB(255, 233, 227, 227))),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff7D23E0),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Become Ostello Verified",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                IconButton(
                  iconSize: 30,
                  icon: const Icon(
                    Icons.chevron_right_rounded,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            height: 59,
            width: _deviceWidth! * 0.9,
            decoration: BoxDecoration(
              color: const Color(0xFFECFFE3),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              textAlign: TextAlign.center,
              "You’re all set!",
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _lastcard() {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(12)),
        width: _deviceWidth! * 0.95,
        height: 250,
        child: const Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Double Dhamaka Offer!",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Accept payment on Google Pay \nfor Business QR to win weekly \ncashbacks!",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Check Out!",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff7329D8),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Align(
                    alignment: Alignment(1.9,4.4),

              child: Image(
                image: AssetImage(
                  "lib/flag_img.png"
                ),
                height: 200,
              ),
            ),
          ],
        ),);
  }
}
