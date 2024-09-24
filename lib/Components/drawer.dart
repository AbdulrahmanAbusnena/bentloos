import 'package:bentlos/Pages/homepage.dart';
import 'package:bentlos/Pages/register/logoutpage.dart';
import 'package:bentlos/Pages/walletpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Drawers extends StatefulWidget {
  const Drawers({super.key});

  @override
  State<Drawers> createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green[200],
            ),
            child: Text('Bentlos',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: Text('Home',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )),
            onTap: () {
              // Handle

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Homepage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.wallet,
            ),
            title: Text('Wallet ',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )),
            onTap: () {
              // Handle settings page navigation
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WalletPage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: Text('Logout',
                style: GoogleFonts.montserrat(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )),
            onTap: () {
              // Handle about page navigation
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignOut(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
