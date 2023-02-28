import 'dart:js';

import 'package:flutter/material.dart';
import 'package:igf/common/constantstrings.dart';
import 'package:igf/common/fonts.dart';
import 'package:igf/services_text/services_const.dart';

class NewServicePage extends StatelessWidget {
  const NewServicePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        servicesContainer(context),
      ],
    );
  }

  Container servicesContainer(context) {
    return Container(
      color: Colors.black54,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Services",
                style: TextStyle(
                  color: Colors.white,
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
          // serviceWidget(context, serviceHeadingList, serviceDescription),

          Container(
            width: double.infinity,
            child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                padding: const EdgeInsets.all(4.0),
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                children: serviceHeadingList.map((heading) {
                  return Container(
                    width: 400,
                    child: Text(heading),
                  );
                }).toList()),
          ),
        ],
      ),
    );
  }

  Widget serviceWidget(context, serviceHeadingList, serviceDescription) {
    return ListView.builder(
        itemBuilder: ((context, index) => Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 5, top: 25, right: 5, bottom: 50),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    width: MediaQuery.of(context).size.width < 600
                        ? double.infinity - 30
                        : 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          serviceHeadingList[index],
                          style: TextStyle(
                            color: Color.fromARGB(255, 39, 38, 38),
                            fontSize: 30,
                            fontFamily: servicesfont,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 3,
                          color: Colors.grey.withOpacity(0.3),
                          width: 50,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          serviceDescription[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 31, 29, 29),
                            fontSize: 18,
                            fontFamily: servicesfont,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}

class ServicesGridSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white30,
      child: GridView.count(
          crossAxisCount: 4,
          childAspectRatio: 1.0,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: serviceHeadingList.map((String url) {
            return GridTile(child: Image.network(url, fit: BoxFit.cover));
          }).toList()),
    );
  }
}

Container mepService() {
  return Container(
    margin: const EdgeInsets.only(left: 5, top: 25, right: 5, bottom: 50),
    padding: const EdgeInsets.symmetric(horizontal: 10),
    width: double.infinity - 30,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          "Building Construction",
          style: TextStyle(
            color: Color.fromARGB(255, 39, 38, 38),
            fontSize: 30,
            fontFamily: servicesfont,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 3,
          color: Colors.grey.withOpacity(0.3),
          width: 50,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "IGF provides construction services for all kinds of buildings by using the latest equipment's and machineries withing time frame with high quality.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 31, 29, 29),
            fontSize: 18,
            fontFamily: servicesfont,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}

Container designAndBuild() {
  return Container(
    margin: const EdgeInsets.only(left: 5, top: 25, right: 5, bottom: 50),
    padding: const EdgeInsets.symmetric(horizontal: 10),
    width: double.infinity - 30,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          "Design & Build",
          style: TextStyle(
            color: Color.fromARGB(255, 39, 38, 38),
            fontSize: 30,
            fontFamily: servicesfont,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 3,
          color: Colors.grey.withOpacity(0.3),
          width: 50,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "We offer our services to produced awesome by a team of experienced editors and contributors with latest technological developments.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 31, 29, 29),
            fontSize: 18,
            fontFamily: servicesfont,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}

Container acInstallation() {
  return Container(
    margin: const EdgeInsets.only(left: 5, top: 25, right: 5, bottom: 50),
    padding: const EdgeInsets.symmetric(horizontal: 10),
    width: double.infinity - 30,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          "AC Installation",
          style: TextStyle(
            color: Color.fromARGB(255, 39, 38, 38),
            fontSize: 30,
            fontFamily: servicesfont,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 3,
          color: Colors.grey.withOpacity(0.3),
          width: 50,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "We do all kinds of AC Repair, AC Technician Services, AC Installation, AC Maintenance, AC Gas Refilling, AC Advanced Piping Services, AC Mounting, and Dismounting & all types of Air Conditioner Service & Split AC Repair in Doha, Qatar. Our AC technicians have years of practical, in-field experience. They possess just the right knowledge and skills needed to diagnose and rule out any AC complication and give you a solution regarding all problems you may have.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 31, 29, 29),
            fontSize: 18,
            fontFamily: servicesfont,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}
