import 'package:bentlos/Components/card.dart';
import 'package:bentlos/Components/icon.dart';
import 'package:bentlos/Components/search_homepage.dart';
import 'package:bentlos/Pages/ExtPage/car_rentals.dart';
import 'package:bentlos/Pages/ExtPage/exclusive.dart';
import 'package:bentlos/Pages/ExtPage/flights.dart';
import 'package:bentlos/Pages/ExtPage/hotels.dart';
import 'package:bentlos/Pages/ExtPage/mobile_serivces.dart';
import 'package:bentlos/Pages/ExtPage/more.dart';
import 'package:bentlos/Pages/ExtPage/resturants.dart';
import 'package:bentlos/Pages/ExtPage/vacation_rentals.dart';
import 'package:bentlos/Pages/logoutpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/* 
The HomePage() 
the Main page in the App Bentlos  

 */
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // the background color of the app
      backgroundColor: const Color(0xffECE6CB),
      // The AppBar() which is located in the top of the Application,
      /* 
     ** Inside of the AppBar 
     - The Title - Which is centered 
     - And the leading picture  
     */
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchHomepage(),
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
                    blurRadius: 12,
                    spreadRadius: 0,
                  ),
                ],
                color: const Color(0xffEDEDED),
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
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
                      const SizedBox(
                        width: 10,
                      ),
                      IconButts(
                        iconss: 'assets/smartphone.png',
                        height: 70.0,
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
                  width: 30.0,
                ),
                Text('Top Adventures and Tours',
                    style: GoogleFonts.montserrat(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    )),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      ReCards(
                        image: 'assets/tokyo.jpeg',
                        locationName: 'Top Experiences',
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30.0,
                ),
                Text('Recommended Trips',
                    style: GoogleFonts.montserrat(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    )),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      ReCards(
                        image: 'assets/paris.jpeg',
                        locationName: 'Paris, France',
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
