import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Containerhomepage3 extends StatefulWidget {
  const Containerhomepage3({super.key});

  @override
  State<Containerhomepage3> createState() => _Containerhomepage3State();
}

class _Containerhomepage3State extends State<Containerhomepage3> {
  final time = 1.25;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return Container(
            height: 500,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
            child: const Column(),
          );
        } else {
          return Container(
            height: 220,
            width: 405,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.grey,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/graph2.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 120,
                      ),
                      Container(
                        height: 100,
                        width: 405,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 10),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Icon(
                                      Icons.person_outlined,
                                    ),
                                    Text('AL-Ahli Stadium',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                        )),
                                  ],
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                const Icon(
                                  Icons.location_on_outlined,
                                ),
                                Text('Ben-Ashour, Tripoli',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            Row(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Icon(
                                      Icons.timer_outlined,
                                    ),
                                    Text('$time : 8:45',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    const SizedBox(
                                      width: 90,
                                    ),
                                    const Icon(
                                      Icons.attach_money_outlined,
                                    ),
                                    Text('49.0 per hour',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
