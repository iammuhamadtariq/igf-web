import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MobileCarouselSlider extends StatefulWidget {
  const MobileCarouselSlider({super.key});

  @override
  State<MobileCarouselSlider> createState() => _MobileCarouselSliderState();
}

class _MobileCarouselSliderState extends State<MobileCarouselSlider> {
  final sliderController = CarouselController();
  int activeIndex = 0;
  final List<String> imageList = [
    'http://www.igf-international.com/staticfiles/mobs1.png',
    'http://www.igf-international.com/staticfiles/mobs2.png',
    'http://www.igf-international.com/staticfiles/mobs3.png',
    'http://www.igf-international.com/staticfiles/mobs4.png',
    'http://www.igf-international.com/staticfiles/mobs5.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CarouselSlider.builder(
            itemCount: imageList.length,
            itemBuilder: (context, index, realIndex) {
              final imageURL = imageList[index];
              return buildImage(imageURL, index);
            },
            options: CarouselOptions(
              autoPlay: true,
              reverse: true,
              //     autoPlayInterval: const Duration(seconds: 2),
              viewportFraction: 1,
              onPageChanged: (index, reason) => setState(
                () => activeIndex = index,
              ),
            ),
          ),
          // Positioned(
          //   top: MediaQuery.of(context).size.height / 2 - 180,
          //   left: 25,
          //   child: InkWell(
          //     onTap: () => sliderController.previousPage(),
          //     child: Container(
          //       height: 30,
          //       width: 50,
          //       child: Icon(Icons.arrow_back),
          //       color: Colors.white.withOpacity(0.5),
          //     ),
          //   ),
          // ),
          // Positioned(
          //   top: MediaQuery.of(context).size.height / 2 - 180,
          //   right: 25,
          //   child: ElevatedButton(
          //     child: Icon(Icons.arrow_back),
          //     onPressed: () {
          //       sliderController.previousPage();
          //     },
          //   ),
          // ),
          Positioned(
            bottom: 15,
            left: MediaQuery.of(context).size.width / 2 - 50,
            child: buildIndicator(),
          ),
        ],
      ),
    );
  }

  buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: imageList.length,
      effect: JumpingDotEffect(
        dotWidth: 10,
        dotHeight: 10,
        dotColor: const Color.fromARGB(255, 158, 156, 39).withOpacity(0.3),
      ),
    );
  }
}

Widget buildImage(String ImageURL, int index) {
  return Container(
    margin: const EdgeInsets.all(10.0),
    color: Colors.white,
    child: Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: CachedNetworkImage(
          imageUrl: ImageURL,
          fit: BoxFit.fill,
          width: 1600,
          placeholder: (context, url) => Container(
              height: 75,
              width: 75,
              child: Center(child: CircularProgressIndicator())),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    ),
  );
}
