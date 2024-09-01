import 'package:bentlos/Components/cards2.dart';
import 'package:bentlos/Components/search_homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECE6CB),
      appBar: AppBar(
        backgroundColor: const Color(0xffECE6CB),
        title: Text(
          'where to ?',
          style: GoogleFonts.inknutAntiqua(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffD9D9D9),
            ),
            child: Image.asset(
              'assets/back.png',
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchHomepage(
              hintext: 'Enter your desired Hotel?',
            ),
            const Divider(
              indent: 30,
              endIndent: 30,
              thickness: 1,
              color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            // First Row
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      width: 60,
                      height: 65,
                      decoration: BoxDecoration(
                        color: const Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const Spacer(),
                          Image.asset(
                            'assets/gps.png',
                            width: 50,
                            height: 50,
                            // fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text('Find a Hotel Nearby',
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            // The recommended Hotels Row
            Row(
              children: [
                const SizedBox(
                  width: 18,
                ),
                Text('Recommended Hotels',
                    style: GoogleFonts.montserrat(
                      color: const Color(0xff000000),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),

            // Second Row

            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      width: 60,
                      height: 65,
                      decoration: BoxDecoration(
                        color: const Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const Spacer(),
                          Image.asset(
                            'assets/gps.png',
                            width: 50,
                            height: 50,
                            // fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text('La plaza Hotel',
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            // Third Row Hotel
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      width: 60,
                      height: 65,
                      decoration: BoxDecoration(
                        color: const Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const Spacer(),
                          Image.asset(
                            'assets/gps.png',
                            width: 50,
                            height: 50,
                            // fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text('La plaza Hotel',
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            // Fourh Row

            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      width: 60,
                      height: 65,
                      decoration: BoxDecoration(
                        color: const Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const Spacer(),
                          Image.asset(
                            'assets/gps.png',
                            width: 50,
                            height: 50,
                            // fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text('La plaza Hotel',
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            // Fifth Row
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      width: 60,
                      height: 65,
                      decoration: BoxDecoration(
                        color: const Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const Spacer(),
                          Image.asset(
                            'assets/gps.png',
                            width: 50,
                            height: 50,
                            // fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text('La plaza Hotel',
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),

            // The top services
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Our top Services',
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
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
                      Cards(
                        image: 'assets/tokyo.jpeg',
                        locationName: 'Top Experiences',
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
