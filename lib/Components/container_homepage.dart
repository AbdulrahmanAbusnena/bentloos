import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerHomepage extends StatefulWidget {
  const ContainerHomepage({super.key});

  @override
  State<ContainerHomepage> createState() => _ContainerHomepageState();
}

class _ContainerHomepageState extends State<ContainerHomepage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth < 600) {
        return Container(
          height: 78,
          width: 210,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: Colors.grey[600],
            //  border: Border.all(color: Colors.white),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.search, color: Colors.white),
              const SizedBox(
                width: 5,
              ),
              Text('Search for a pitch',
                  style: GoogleFonts.notoSansLao(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  )),
            ],
          ),
        );
      } else {
        return Container(
          height: 70,
          width: 195,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: Colors.grey[500],
            //  border: Border.all(color: Colors.white),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 6,
              ),
              const Icon(
                Icons.search,
                color: Colors.white,
              ),
              const SizedBox(
                width: 3,
              ),
              Text(
                'Search for a  Pitch',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        );
      }
    });
  }
}
