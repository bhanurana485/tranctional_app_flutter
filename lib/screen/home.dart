import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color background = Color(0xff2a2a2a);
    Color cardColor = Color(0xffe5f4fb);
    Color cardColor2 = Color(0xffe6dcf5);

    return Scaffold(
      backgroundColor: background,
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    child: Image.asset(
                      'assets/four-dots.png',
                      height: 30,
                      width: 50,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                      child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/user.jpeg'),
                  )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 280,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: ((context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 25),
                        height: 280,
                        width: 220,
                        decoration: BoxDecoration(
                            color: cardColor,
                            borderRadius: BorderRadius.circular(50)),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                                bottom: 150,
                                left: 30,
                                child: Text("45879 32589",
                                    style: GoogleFonts.inter(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w700))),
                            Positioned(
                                bottom: 180,
                                left: 30,
                                child: Text("CARD NUMBER",
                                    style: GoogleFonts.inter(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300))),
                            Positioned(
                                bottom: 30,
                                left: 30,
                                child: Text("Zasya Solutions",
                                    style: GoogleFonts.inter(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700))),
                            Positioned(
                              top: 20,
                              left: 30,
                              child: Image.asset('assets/master-card.png',
                                  height: 30, width: 50, color: Colors.black),
                            )
                          ],
                        ),
                      );
                    })),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 350,
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(bottom: 30),
                          height: 75,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: background),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/icons8-spotify-50.png',
                                  height: 30,
                                  width: 50,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Spotify",
                                        style: GoogleFonts.inter(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white)),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("May 20",
                                        style: GoogleFonts.inter(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w100,
                                            color: Colors.white))
                                  ],
                                ),
                                SizedBox(
                                  width: 130,
                                ),
                                Text("Rs.250",
                                    style: GoogleFonts.inter(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white)),
                              ]),
                        ),
                      );
                    })),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: background,
        fixedColor: Colors.white,
        unselectedFontSize: 10,
        selectedFontSize: 20,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Music',
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
