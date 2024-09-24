import 'package:bentlos/Components/container_homepage.dart';
import 'package:bentlos/Components/container_homepage2.dart';
import 'package:bentlos/Components/containerhomepage3.dart';
import 'package:bentlos/Components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _scafoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scafoldKey,
      backgroundColor: const Color(0xffE7EFEC),
      drawer: const Drawers(),
      body: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          Row(
            children: [
              GestureDetector(
                child: Image.asset(
                  'assets/menu.png',
                  height: 20,
                  width: 50,
                ),
                onTap: () {
                  _scafoldKey.currentState?.openDrawer();
                },
              ),
              const SizedBox(
                width: 100,
              ),
              Text('Bentlos',
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          const Row(
            children: [
              SizedBox(
                width: 5,
              ),
              ContainerHomepage(),
              SizedBox(
                width: 10,
              ),
              ContainerHomepag(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Containerhomepage3(),
        ],
      ),
    );
  }
}
