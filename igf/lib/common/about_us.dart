import 'package:flutter/material.dart';
import 'package:igf/common/constantstrings.dart';

class AboutUsSectionMainPage extends StatelessWidget {
  const AboutUsSectionMainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width > 1000 ? 100 : 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "About",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 26,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w900,
                        letterSpacing: 3,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 2,
                  width: 30,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 30,
                ),
                //////////////////////////////
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    serviceintro,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 99, 96, 96),
                      fontFamily: 'lato',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ), /////////////////////////
                Text(
                  ourvisionheading,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color.fromARGB(255, 99, 96, 96),
                    fontFamily: 'lato',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ////////////////////////////
                Text(
                  ourvision,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 99, 96, 96),
                    fontFamily: 'lato',
                  ),
                ),
                ////////////////////////////
                const SizedBox(
                  height: 20,
                ),
                Text(
                  ourmissionheading,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color.fromARGB(255, 99, 96, 96),
                    fontFamily: 'lato',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ////////////////////////////
                Text(
                  ourmission,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 99, 96, 96),
                    fontFamily: 'lato',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
