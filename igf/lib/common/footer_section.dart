import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:igf/common/constantstrings.dart';
import 'package:get/get.dart';
import 'package:mb_contact_form/mb_contact_form.dart';

class FooterSection extends StatefulWidget {
  const FooterSection({super.key});

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
          width: double.infinity,
          color: Color.fromARGB(255, 59, 59, 59),
          child: Flex(
            direction: MediaQuery.of(context).size.width > 600
                ? Axis.horizontal
                : Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed("/servcis");
                        },
                        onHover: ((value) {
                          setState(() {
                            value
                                ? _isHovering[1] = true
                                : _isHovering[1] = false;
                          });
                        }),
                        child: Column(
                          children: [
                            Text(
                              "Services",
                              style: TextStyle(
                                color: _isHovering[1]
                                    ? Color.fromARGB(255, 173, 159, 30)
                                    : Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: _isHovering[1] ? 24 : 18,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[1],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed("/aboutus");
                        },
                        onHover: ((value) {
                          setState(() {
                            value
                                ? _isHovering[2] = true
                                : _isHovering[2] = false;
                          });
                        }),
                        child: Column(
                          children: [
                            Text(
                              "About",
                              style: TextStyle(
                                color: _isHovering[2]
                                    ? Color.fromARGB(255, 173, 159, 30)
                                    : Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: _isHovering[2] ? 24 : 18,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[2],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed("/contactus");
                        },
                        onHover: ((value) {
                          setState(() {
                            value
                                ? _isHovering[3] = true
                                : _isHovering[3] = false;
                          });
                        }),
                        child: Column(
                          children: [
                            Text(
                              "Contact",
                              style: TextStyle(
                                color: _isHovering[3]
                                    ? Color.fromARGB(255, 173, 159, 30)
                                    : Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: _isHovering[3] ? 24 : 18,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[3],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: MediaQuery.of(context).size.width > 800
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: const [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    "CONTACT DETAILS",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Phone: +97455757600",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Phone: +97470122114",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Email: info@igf-international.com",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Doha, Qatar",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          height: 75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "© Copyright Reserved 2023 - IGF International Co. W.L.L",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
