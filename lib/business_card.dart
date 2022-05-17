import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/myImage.png'),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'JERIC ADRIANO',
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    const Text('Flutter Developer Trainee'),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: const [
                          CircleContainer(
                            radius: 15,
                            icon: Icons.call,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('09682235026'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: const [
                          CircleContainer(
                            radius: 15,
                            icon: Icons.email,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('1728zeb.jec@gmail.com'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: const [
                          CircleContainer(
                            radius: 15,
                            icon: Icons.location_pin,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Bagong Silang, Caloocan City'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CircleContainer extends StatelessWidget {
  final double radius;
  final IconData icon;

  const CircleContainer({Key? key, required this.radius, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: radius,
      child: Icon(
        icon,
        size: 20,
        color: Colors.black,
      ),
    );
  }
}
