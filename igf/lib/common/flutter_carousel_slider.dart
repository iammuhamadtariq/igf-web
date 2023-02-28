import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyCarouselSlider extends StatefulWidget {
  const MyCarouselSlider({super.key});

  @override
  State<MyCarouselSlider> createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider> {
  final sliderController = CarouselController();
  int activeIndex = 0;
  final List<String> imageList = [
    'http://www.igf-international.com/staticfiles/desktopslider1.png',
    'http://www.igf-international.com/staticfiles/desktopslider2.png',
    'http://www.igf-international.com/staticfiles/desktopslider3.png',
    'http://www.igf-international.com/staticfiles/desktopslider4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              onPageChanged: (index, reason) => setState(
                () => activeIndex = index,
              ),
              height: 500.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 1,
            ),
            items: imageList
                .map(
                  (item) => Container(
                    child: Center(
                      child: CachedNetworkImage(
                        imageUrl: item,
                        fit: BoxFit.cover,
                        width: 1600,
                        placeholder: (context, url) => Container(
                            height: 75,
                            width: 75,
                            child: Center(child: CircularProgressIndicator())),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
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
