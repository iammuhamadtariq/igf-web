import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:igf/common/constantstrings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DrawerContent extends StatefulWidget {
  DrawerContent({
    super.key,
  });

  @override
  State<DrawerContent> createState() => _DrawerContentState();
}

class _DrawerContentState extends State<DrawerContent> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CachedNetworkImage(
              height: 50,
              width: 275,
              imageUrl: 'http://www.igf-international.com/staticfiles/logo.jpg',
              placeholder: (context, url) => Container(
                  height: 40,
                  width: 40,
                  child: Center(child: CircularProgressIndicator())),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Get.toNamed("/");
              },
              onHover: ((value) {
                setState(() {
                  value ? _isHovering[0] = true : _isHovering[0] = false;
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
              height: 20,
            ),
            InkWell(
              onTap: () {
                Get.toNamed("/servcis");
              },
              onHover: ((value) {
                setState(() {
                  value ? _isHovering[1] = true : _isHovering[1] = false;
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
              height: 20,
            ),
            InkWell(
              onTap: () {
                Get.toNamed("/aboutus");
              },
              onHover: ((value) {
                setState(() {
                  value ? _isHovering[2] = true : _isHovering[2] = false;
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
              height: 20,
            ),
            InkWell(
              onTap: () {
                Get.toNamed("/contactus");
              },
              onHover: ((value) {
                setState(() {
                  value ? _isHovering[3] = true : _isHovering[3] = false;
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
        ));
  }
}
