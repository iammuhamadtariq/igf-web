import 'package:flutter/material.dart';
import 'package:igf/constants.dart';

class ContactUSWidget extends StatelessWidget {
  const ContactUSWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
      width: double.infinity,
      color: const Color.fromARGB(255, 231, 229, 229),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Contact with us on following details..",
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
          Container(
            height: 2,
            width: 30,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            contactus_constant,
            style: const TextStyle(
              color: Color.fromARGB(255, 148, 159, 177),
              fontSize: 20,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w900,
              letterSpacing: 3,
            ),
          ),
          const SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
