import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:igf/common/drawercontent.dart';
import 'package:igf/common/footer_section.dart';
import 'package:igf/common/tab_bar_content.dart';

import '../../common/contact_email.dart';

class ContactUS extends StatefulWidget {
  ContactUS({super.key});

  @override
  State<ContactUS> createState() => _ContactUSState();
}

class _ContactUSState extends State<ContactUS> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      drawer: Drawer(
        child: DrawerContent(),
      ),
      appBar: screenSize.width > 800
          ? PreferredSize(
              preferredSize: Size(screenSize.width, 85.0),
              child: TabBarContent(),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 85.0),
              child: AppBar(
                iconTheme:
                    IconThemeData(color: Color.fromARGB(255, 173, 159, 30)),
                backgroundColor: Colors.white,
                title: CachedNetworkImage(
                  imageUrl:
                      'http://www.igf-international.com/staticfiles/logo.jpg',
                  placeholder: (context, url) => Container(
                      height: 75,
                      width: 75,
                      child: Center(child: CircularProgressIndicator())),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
      body: ListView(
        children: const [
          ContactSection(),
          FooterSection(),
        ],
      ),
    );
  }
}
