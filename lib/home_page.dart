import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:firstricoz/helper/services.dart';
import 'package:firstricoz/main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _SlidingImages = [
    "images/Rectangle 4081.png",
    "images/Rectangle 4082.png",
    "images/Rectangle 4083.png",
    "images/Rectangle 4086.png",
    "images/Rectangle 41938.png",
    "images/Rectangle 41939.png",
    "images/Rectangle 41940.png",
    "images/Rectangle 41941.png"
  ];
  int index = 0;
  int index2 = 0;
  List<String> name = [
    "Social Media Management",
    "Google Adwards",
    "Graphics Design",
    "Ads Management",
    "Ads Manager",
    "Website Development",
    "Digital Marketing",
    "Shopify Development"
  ];
  List<String> _SlidingImages2 = [
    "images/Rectangle 41949.png",
    "images/Rectangle 4082 (1).png",
    "images/Rectangle 41953.png",
    "images/Rectangle 41951.png",
    "images/Rectangle 41955.png",
    "images/Rectangle 4082 (2).png",
    "images/Rectangle 41959.png",
    "images/Rectangle 41957.png"
  ];
  List<String> name2 = [
    "Social Media Courses",
    "Graphics Design Courses",
    "Web Design Courses",
    "Ads Management",
    "Marketing Management",
    "Vedio Editing",
    "Email Marketing",
    "Search Engine Optimization",
  ];
  @override
  Widget build(BuildContext context) {
    double dot = _SlidingImages.length / 2;
    double pos = index / 2;
    double dot2 = _SlidingImages2.length / 2;
    double pos2 = index2 / 2;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: '#440101'.toColor(),
      body: SafeArea(
        top: false,
        minimum: EdgeInsets.only(
          top: height * 0.04,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 13, right: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: height * 0.08,
                        width: width * 0.08,
                        child: Image.asset("images/image 125.png")),
                    Image.asset("images/image 179.png"),
                    SizedBox(
                        height: height * 0.03,
                        child: Image.asset("images/Group 334.png"))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.02,
                    left: width * 0.04,
                    right: width * 0.04,
                    bottom: 5),
                child: Image.asset("images/Group 758530676.png"),
              ),
              DotsIndicator(
                  dotsCount: dot.toInt(),
                  position: pos.toInt(),
                  decorator: DotsDecorator(
                      spacing: EdgeInsets.all(2),
                      color: Colors.white,
                      activeColor: Colors.white,
                      size: Size(6, 6))),
              SizedBox(
                height: height * 0.02,
              ),
              CarouselSlider(
                items: _SlidingImages.map((item) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        child: Center(
                            child: Text(
                          name[index],
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(item),
                              fit: BoxFit.fitWidth,
                              colorFilter: ColorFilter.mode(
                                  Colors.white.withOpacity(0.4),
                                  BlendMode.modulate),
                            )),
                      ),
                    )).toList(),
                options: CarouselOptions(
                  onPageChanged: (val, carouselPageChangedReason) {
                    setState(() {
                      index = val;
                    });
                  },
                  viewportFraction: 0.96,
                  autoPlay: true,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  autoPlayCurve: Curves.linear,
                  autoPlayAnimationDuration: Duration(milliseconds: 200),
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              DotsIndicator(
                  dotsCount: dot.toInt(),
                  position: pos.toInt(),
                  decorator: DotsDecorator(
                      spacing: EdgeInsets.all(2),
                      color: Colors.white,
                      activeColor: Colors.white,
                      size: Size(6, 6))),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: height * 0.31,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: '#FFD9DA'.toColor(),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Services",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Services(
                                image: "images/image 158.png",
                                name1: "Social Media",
                                name2: "Management"),
                            Services(
                              image: "images/image 181.png",
                              name1: "Google",
                              name2: "Adwards",
                            ),
                            Services(
                                image: "images/image 160.png",
                                name1: "Graphics",
                                name2: "Design"),
                            Services(
                              image: "images/image 161.png",
                              name1: "Ads",
                              name2: "Management",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Services(
                                image: "images/image 165.png",
                                name1: "Ads",
                                name2: "Manager"),
                            Services(
                                image: "images/image 166.png",
                                name1: "Website",
                                name2: "Development"),
                            Services(
                                image: "images/image 168.png",
                                name1: "Digital",
                                name2: "Marketing"),
                            Services(
                                image: "images/image 170.png",
                                name1: "Shopify",
                                name2: "Development"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              CarouselSlider(
                items: _SlidingImages2.map((item) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        child: Center(
                            child: Text(
                          name2[index2],
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(item),
                              fit: BoxFit.fitWidth,
                              colorFilter: ColorFilter.mode(
                                  Colors.white.withOpacity(0.4),
                                  BlendMode.modulate),
                            )),
                      ),
                    )).toList(),
                options: CarouselOptions(
                    onPageChanged: (val, carouselPageChangedReason) {
                      setState(() {
                        index2 = val;
                      });
                    },
                    viewportFraction: 0.96,
                    autoPlay: true,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    autoPlayCurve: Curves.linear,
                    autoPlayAnimationDuration: Duration(milliseconds: 200)),
              ),
              DotsIndicator(
                  dotsCount: dot2.toInt(),
                  position: pos2.toInt(),
                  decorator: DotsDecorator(
                      spacing: EdgeInsets.all(2),
                      color: Colors.white,
                      activeColor: Colors.white,
                      size: Size(6, 6))),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: height * 0.335,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: '#FFD9DA'.toColor(),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Courses",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Services(
                                image: "images/image 182.png",
                                name1: "Social Media",
                                name2: "Courses"),
                            Services(
                              image: "images/image 184.png",
                              name1: "Graphics",
                              name2: "design courses",
                            ),
                            Services(
                                image: "images/image 186.png",
                                name1: "Web Design",
                                name2: "Courses"),
                            Services(
                              image: "images/image 188.png",
                              name1: "Search Engine",
                              name2: "Optimization",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.025,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Services(
                                image: "images/image 183.png",
                                name1: "Ads",
                                name2: "Management"),
                            Services(
                                image: "images/image 185.png",
                                name1: "Marketing",
                                name2: "Management"),
                            Services(
                                image: "images/image 187.png",
                                name1: "Vedio",
                                name2: "Editing"),
                            Services(
                                image: "images/image 189.png",
                                name1: "Email",
                                name2: "Marketing"),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                  color: const Color.fromARGB(255, 85, 37, 34),
                                  endIndent: width * 0.04,
                                  indent: width * 0.08,
                                  thickness: 1),
                            ),
                            Text(
                              "More",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black54),
                            ),
                            Expanded(
                              child: Divider(
                                color: const Color.fromARGB(255, 85, 37, 34),
                                thickness: 1,
                                endIndent: width * 0.08,
                                indent: width * 0.04,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: Container(
                    height: height * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Help us shape",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 19,
                                ),
                              ),
                              Text(
                                "THE FUTURE",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                              ),
                              Text(
                                "of our app with your",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "Feedback",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              SizedBox(
                                height: height * 0.035,
                                width: width * 0.33,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              "#440101".toColor()),
                                    ),
                                    child: Text(
                                      "TAKE SURVEY",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )),
                              )
                            ],
                          ),
                          Image.asset("images/image 171.png"),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                  right: 18,
                ),
                child: Container(
                    height: height * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("images/image 171(1).png"),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "ABOUT US",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 19,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset("images/image 172.png")
                                ],
                              ),
                              Text(
                                "Simplifying the way India",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "tech requirements",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              SizedBox(
                                height: height * 0.035,
                                width: width * 0.3,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              "#440101".toColor()),
                                    ),
                                    child: Text(
                                      "Know more",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    )),
                              )
                            ],
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Divider(
                color: Color.fromARGB(255, 114, 66, 10),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              SizedBox(
                  height: height * 0.035,
                  child: Image.asset("images/image 179.png")),
              SizedBox(
                height: height * 0.01,
              )
            ],
          ),
        ),
      ),
    );
  }
}
