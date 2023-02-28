import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:igf/common/constantstrings.dart';
import 'package:get/get.dart';

class TabBarContent extends StatefulWidget {
  TabBarContent({
    super.key,
  });

  @override
  State<TabBarContent> createState() => _TabBarContentState();
}

class _TabBarContentState extends State<TabBarContent> {
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
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CachedNetworkImage(
                  imageUrl:
                      'http://www.igf-international.com/staticfiles/logo.jpg',
                  placeholder: (context, url) => Container(
                      height: 75,
                      width: 75,
                      child: Center(child: CircularProgressIndicator())),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      SizedBox(
                        width: screenSize.width / 15,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed("/");
                        },
                        onHover: ((value) {
                          setState(() {
                            value
                                ? _isHovering[0] = true
                                : _isHovering[0] = false;
                          });
                        }),
                        child: Column(
                          children: [
                            Text(
                              hometab,
                              style: TextStyle(
                                color: _isHovering[0]
                                    ? Color.fromARGB(255, 173, 159, 30)
                                    : Colors.black26,
                                fontWeight: FontWeight.bold,
                                fontSize: _isHovering[0] ? 24 : 18,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[0],
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
                        width: 20,
                      ),
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
                                    : Colors.black26,
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
                        width: 20,
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
                                    : Colors.black26,
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
                        width: 20,
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
                                    : Colors.black26,
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
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
