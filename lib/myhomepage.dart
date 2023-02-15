import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homescreentest3/update.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

String cdate = DateFormat("yyyy-MM-dd").format(DateTime.now());

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: Size.height,
          width: Size.width,
          decoration: const BoxDecoration(color: Color(0xfff2f4f8)),
        ),
        Positioned(
            top: -360.0,
            right: -50.0,
            child: Container(
              height: Size.height,
              width: Size.width + 400,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  // ignore: unnecessary_const
                  gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xff0099BD),
                        Color(0xff00BF44),
                      ])),
            )),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            //title: Text("Today",
            title: Center(
              child: Text("${cdate}",
                  style: Theme.of(context).primaryTextTheme.headline5),
            ),

            actions: [
              IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              )
            ],
          ),
          body: SingleChildScrollView(
            child:
                // ignore: prefer_const_literals_to_create_immutables
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const Text(
                "Wel Come !!! \n TecRetail Health Management",
                style: TextStyle(
                    fontSize: 22.0,
                    fontFamily: "Monserrat",
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 14.0,
              ),
              // ignore: prefer_const_constructors
              Text(
                "私たちのおすすめ",
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Montserrat",
                    color: Colors.white,
                    fontWeight: FontWeight.w800),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 10.0,
              ),
              //
              CarouselSlider(
                options: CarouselOptions(
                    height: 450.0, autoPlay: true, viewportFraction: 1),
                items: [
                  "https://cdn.pixabay.com/photo/2015/11/12/13/08/heart-care-1040229__480.png",
                  "https://cdn.pixabay.com/photo/2015/04/08/16/21/health-712980__480.jpg",
                  "https://cdn.pixabay.com/photo/2016/02/21/00/29/fruit-1213041__480.jpg",
                  "https://cdn.pixabay.com/photo/2016/10/09/14/00/vegetable-juices-1725835__480.jpg",
                  "https://cdn.pixabay.com/photo/2014/06/21/21/00/salad-374173__480.jpg"
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 0.0),
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Image.network(
                          i,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: Row(
                  children: [
                    const BreakFastCard(),
                    Column(
                      children: const [
                        LunchCard(),
                        DinnerCard(),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}

// breakfast
class BreakFastCard extends StatelessWidget {
  const BreakFastCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
      child: Container(
        height: 210.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: const Color(0xff3AD5A6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "images/breakfast.jpeg",
                height: 60.0,
                width: 60.0,
                fit: BoxFit.fill,
              ),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: const Text(
                "BreakFast",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold),
              ),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: const Text(
                "Recomommend:\n571 cals -9g net Carbs",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontFamily: "Monstserrat",
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Get.to(() => UpdateView());
                  },
                  child: Container(
                    height: 60.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: Colors.grey),
                      gradient: const LinearGradient(colors: [
                        Color(0xff3AD5A6),
                        Color(0xff00BF44),
                      ]),
                    ),
                    child: const Center(
                        child: Text(
                      "+ Add BreakFast",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LunchCard extends StatelessWidget {
  const LunchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
      child: Container(
        height: 100.0,
        width: 202.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: const Color(0xff3AD5A6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6.0, left: 10),
              child: Image.asset(
                "images/lunch.jpeg",
                height: 25.0,
                width: 25.0,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Get.to(() => UpdateView());
                  },
                  child: Container(
                    height: 20.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: Colors.grey),
                      gradient: const LinearGradient(colors: [
                        Color(0xff3AD5A6),
                        Color(0xff00BF44),
                      ]),
                    ),
                    child: const Center(
                        child: Text(
                      "+ Add Lunch",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              ),
            ),
            const Center(
              // ignore: unnecessary_const
              child: const Text(
                "Recomommend:\n571 cals -9g net Carbs",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontFamily: "Monstserrat",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Dinner
class DinnerCard extends StatelessWidget {
  const DinnerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
      child: Container(
        height: 100.0,
        width: 202.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: const Color(0xff3AD5A6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6.0, left: 10),
              child: Image.asset(
                "images/dinner.jpeg",
                height: 25.0,
                width: 25.0,
                fit: BoxFit.fill,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Get.to(() => UpdateView());
                  },
                  child: Container(
                    height: 20.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: Colors.grey),
                      gradient: const LinearGradient(colors: [
                        Color(0xff3AD5A6),
                        Color(0xff00BF44),
                      ]),
                    ),
                    child: const Center(
                        child: Text(
                      "+ Add Dinner",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              ),
            ),
            //
            const Center(
              child: Text(
                "Recomommend:\n571 cals -9g net Carbs",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontFamily: "Monstserrat",
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            // ),
          ],
        ),
      ),
    );
  }
}
