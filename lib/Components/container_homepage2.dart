import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerHomepag extends StatefulWidget {
  const ContainerHomepag({super.key});

  @override
  State<ContainerHomepag> createState() => _ContainerHomepagState();
}

class _ContainerHomepagState extends State<ContainerHomepag> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return Container(
          height: 80.0,
          width: 200.0,
          decoration: BoxDecoration(
            color: const Color(0xffD4F3D2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Center(
                child: Text(
                  'Find a pitch near you',
                  style: GoogleFonts.notoSansLao(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const Icon(
                Icons.location_on_outlined,
                color: Colors.black,
                weight: 20,
              )
            ],
          ),
        );
      } else {
        return Container(
          height: 70.0,
          width: 200.0,
          decoration: BoxDecoration(
            color: const Color(0xffD4F3D2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Center(
                child: Text(
                  'Find a pitch near you',
                  style: GoogleFonts.notoSansLao(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              const Icon(
                Icons.location_on_outlined,
                color: Colors.black,
                weight: 20,
              )
            ],
          ),
        );
      }
    });
  }
}
