import 'package:flutter/material.dart';
import 'package:igf/services_text/services_const.dart';

class ServiceSectionPage extends StatelessWidget {
  const ServiceSectionPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width > 1000 ? 100.0 : 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Service",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 2,
                    width: 30,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: MediaQuery.of(context).size.width > 1000 ? 100.0 : 8.0,
          ),
          itemCount: serviceHeadingList.length,
          shrinkWrap: true,
          primary: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio:
                MediaQuery.of(context).size.width > 1000 ? 2 / 1 : 1,
            crossAxisCount: MediaQuery.of(context).size.width > 1000 ? 2 : 1,
            crossAxisSpacing:
                MediaQuery.of(context).size.width > 1000 ? 100.0 : 10.0,
            mainAxisSpacing:
                MediaQuery.of(context).size.width > 1000 ? 100.0 : 10.0,
          ),
          itemBuilder: ((context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueAccent.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    serviceHeadingList[index],
                    style: const TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      serviceDescription[index],
                      style: const TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 80, 77, 77),
                          fontFamily: 'Open Sans',
                          letterSpacing: 2.0,
                          height: 2.0),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ],
    );
  }
}
