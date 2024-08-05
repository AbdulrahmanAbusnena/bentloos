// import 'package:bentlos/Components/buttons.dart';
import 'package:bentlos/Components/icon.dart';
import 'package:bentlos/Pages/ExtPage/car_rentals.dart';
import 'package:bentlos/Pages/ExtPage/exclusive.dart';
import 'package:bentlos/Pages/ExtPage/flights.dart';
import 'package:bentlos/Pages/ExtPage/hotels.dart';
import 'package:bentlos/Pages/ExtPage/mobile_serivces.dart';
import 'package:bentlos/Pages/ExtPage/more.dart';
import 'package:bentlos/Pages/ExtPage/resturants.dart';
import 'package:bentlos/Pages/ExtPage/vacation_rentals.dart';
import 'package:bentlos/Pages/logoutpage.dart';
// import 'package:bentlos/Pages/loginpage.dart';
//import 'package:bentlos/Pages/registrationpage.dart';
//import 'package:bentlos/Services/authentication.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECE6CB),
      appBar: AppBar(
        title: Text(
          'Bentlos',
          style: GoogleFonts.inknutAntiqua(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffECE6CB),
        leading: GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignOut(),
              )),
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/earth-americas.png'),
            backgroundColor: Color(0xffECE6CB),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            //padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            padding: const EdgeInsets.all(25),
            child: Container(
              margin: const EdgeInsets.only(
                //   right: 40,
                //    left: 40,
                top: 15,
                //   bottom: 50,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xff4b4b4b),
                    blurRadius: 5,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your desired location or serivce',
                  hintStyle: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                  prefixIcon: const Icon(Icons.search_rounded, size: 35),
                  filled: true,
                  fillColor: Colors.white,
                  hoverColor: Colors.black,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 220,
            width: 390,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color(0xff4b4b4b),
                  blurRadius: 20,
                  spreadRadius: 0,
                ),
              ],
              color: const Color(0xffEDEDED),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButts(
                        height: 60.0,
                        width: 60.0,
                        iconss: 'assets/hotel.png',
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Hotels(),
                            )),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 3,
                        width: 0.01,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButts(
                        iconss: 'assets/restaurant.png',
                        height: 60.0,
                        width: 60.0,
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Resturants(),
                            )),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 3,
                        width: 0.01,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButts(
                        height: 60.0,
                        width: 60.0,
                        iconss: 'assets/rent.png',
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const VacationRentals(),
                            )),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 3,
                        width: 0.01,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButts(
                        height: 60.0,
                        width: 60.0,
                        iconss: 'assets/car-rent.png',
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CarRentals(),
                            )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 28.5,
                ),
                Row(
                  children: [
                    IconButts(
                      iconss: 'assets/smartphone.png',
                      height: 67.0,
                      width: 68.0,
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MobileSerivces(),
                          )),
                    ),
                    const SizedBox(width: 15),
                    const SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 3,
                        width: 0.01,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    IconButts(
                      iconss: 'assets/exclusive.png',
                      height: 67.0,
                      width: 68.0,
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Exclusive(),
                          )),
                    ),
                    const SizedBox(width: 15),
                    const SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 3,
                        width: 0.01,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    IconButts(
                      iconss: 'assets/plane.png',
                      height: 67.0,
                      width: 68.0,
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Flights(),
                          )),
                    ),
                    const SizedBox(width: 15),
                    const SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 3,
                        width: 0.01,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    IconButts(
                      iconss: 'assets/plus.png',
                      height: 67.0,
                      width: 68.0,
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const More(),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Text('Recommended Trips',
                  style: GoogleFonts.montserrat(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
