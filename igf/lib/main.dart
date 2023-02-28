import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:igf/common/contact_email.dart';
import 'package:igf/common/drawercontent.dart';
import 'package:igf/screens/aboutus/aboutus.dart';
import 'package:igf/screens/contacts/contact.dart';
import 'package:igf/screens/services/services.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';
import 'common/about_us.dart';
import 'common/flutter_carousel_slider.dart';
import 'common/footer_section.dart';
import 'common/mobile_carousel_slider.dart';
import 'common/services_section.dart';
import 'common/tab_bar_content.dart';

main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => MyHomePage(),
          transition: Transition.zoom,
        ),
        GetPage(
            name: '/servcis',
            page: () => ServicesPage(),
            transition: Transition.zoom),
        GetPage(
            name: '/aboutus',
            page: () => AboutPage(),
            transition: Transition.zoom),
        GetPage(
          name: '/contactus',
          page: () => ContactUS(),
          transition: Transition.zoom,
        ),
      ],
      debugShowCheckedModeBanner: false,
      title: 'IGF International',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}


class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        shrinkWrap: true,
        children: [
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 600) {
                return const MyCarouselSlider();
              } else {
                return const MobileCarouselSlider();
              }
            },
          ),
          AboutUsSectionMainPage(),
          ServiceSectionPage(),
          ContactSection(),
          FooterSection(),
        ],
      ),
    );
  }
}
