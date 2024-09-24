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
        if (constraints.maxHeight < 600) {
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
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.person_outlined),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Al-Ahli Stadium',
                              style: GoogleFonts.montserrat(
                                fontSize: 19,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        const Icon(Icons.timer_outlined),
                        Text(
                          '$time',
                          style: GoogleFonts.montserrat(
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.location_on_outlined),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Ben-Ashour, Libya',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ));
        }
      },
    );
  }
}
