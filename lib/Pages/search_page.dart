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
          child: SizedBox(
            child: Image.asset(
              'assets/back.png',
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SearchHomepage(),
          const SizedBox(),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        'assets/gps.png',
                        fit: BoxFit.fill,
                      )),
                ],
              ),
              const Column(),
              const Column(),
              const Column(),
            ],
          ),
        ],
      ),
    );
  }
}
