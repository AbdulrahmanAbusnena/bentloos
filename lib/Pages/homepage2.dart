import 'package:bentlos/Components/contianer_homepage.dart';
import 'package:bentlos/Pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage2 extends StatefulWidget {
  const Homepage2({super.key});

  @override
  State<Homepage2> createState() => _Homepage2State();
}

class _Homepage2State extends State<Homepage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECE6CB),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 3,
                ),
                Text(
                  "Find your",
                  style: GoogleFonts.montserrat(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 243,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchPage(),
                      )),
                  child: Image.asset(
                    "assets/search.png",
                    height: 40,
                    width: 50,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 3,
                ),
                Text(
                  "Next Destination",
                  style: GoogleFonts.montserrat(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    ContianerHomepage(
                      height: 50,
                      width: 160,
                      imagepath: 'assets/bed.png',
                      text: 'Stays',
                      imageheight: 35,
                      //   imagewidth: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContianerHomepage(
                      height: 45,
                      width: 220,
                      text: 'Restaurents',
                      imagepath: 'assets/restaurent.png',
                      imageheight: 35,
                      //   imagewidth: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    ContianerHomepage(
                      height: 45,
                      width: 250,
                      text: 'Top Attractions',
                      imagepath: 'assets/topattractions.png',
                      imageheight: 35,
                      //   imagewidth: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContianerHomepage(
                      height: 50,
                      width: 160,
                      imagepath: 'assets/airplane.png',
                      text: 'Stays',
                      imageheight: 35,
                      //   imagewidth: 20,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
