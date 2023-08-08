import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:wordpress_app/pages/search.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:wordpress_app/riyadh/menu/e_learning.dart';
import 'package:wordpress_app/riyadh/menu/ekskul.dart';
import 'package:wordpress_app/riyadh/menu/psb_online.dart';
import 'package:wordpress_app/riyadh/menu/mekanisme_smp.dart';
import 'package:wordpress_app/riyadh/menu/sejarah_riyadh.dart';
import 'package:wordpress_app/riyadh/menu/tentang_kami.dart';
import 'package:wordpress_app/riyadh/menu/eperpus.dart';
import 'package:wordpress_app/widgets/drawer.dart';

import '../config/config.dart';
import '../utils/next_screen.dart';
import 'notifications.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<String> imgList = [
    'https://www.thawalibpadangpanjang.sch.id/Slider1.jpg',
    'https://www.thawalibpadangpanjang.sch.id/Slider2.jpg',
    'https://www.thawalibpadangpanjang.sch.id/Slider3.jpg',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Image(
          image: AssetImage(
            Config.logo,
          ),
          height: 19,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              AntDesign.search1,
              size: 22,
            ),
            onPressed: () {
              nextScreen(context, SearchPage());
            },
          ),
          SizedBox(width: 3),
          IconButton(
            padding: EdgeInsets.only(right: 8),
            constraints: BoxConstraints(),
            icon: Icon(
              AntDesign.bells,
              size: 20,
            ),
            onPressed: () => nextScreen(context, Notifications()),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      drawer: CustomDrawer(),
      key: scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                      viewportFraction: 1,
                      height: 150,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                  items: imgList
                      .map((item) => Container(
                            child: Container(
                              margin: EdgeInsets.all(5.0),
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  child: Stack(
                                    children: <Widget>[
                                      Image.network(item,
                                          fit: BoxFit.cover, width: 1000.0),
                                      Positioned(
                                        bottom: 0.0,
                                        left: 0.0,
                                        right: 0.0,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color.fromARGB(200, 0, 0, 0),
                                                Color.fromARGB(0, 0, 0, 0)
                                              ],
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                            ),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 20.0),
                                          // child: Text(
                                          //   'No. ${imgList.indexOf(item)} image',
                                          //   style: TextStyle(
                                          //     color: Colors.white,
                                          //     fontSize: 20.0,
                                          //     fontWeight: FontWeight.bold,
                                          //   ),
                                          // ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ))
                      .toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 10.0,
                        height: 10.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Colors.white
                                        : Colors.blueAccent)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Informasi",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(fontSize: 13),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return TentangKami();
                    }));
                  },
                  child: HeaderItem(
                    images: 'assets/images/riyadh.png',
                    title: 'Tentang Kami',
                    textcolor: Colors.grey,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return SejarahRiyadh();
                    }));
                  },
                  child: HeaderItem(
                    images: 'assets/images/agenda.png',
                    title: 'Sejarah',
                    textcolor: Colors.grey,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return PpdbOnline();
                    }));
                  },
                  child: HeaderItem(
                    images: 'assets/images/iconmeksd.png',
                    title: 'PPDB',
                    textcolor: Colors.grey,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: <Widget>[
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Text(
            //         "Menu",
            //         style: Theme.of(context)
            //             .textTheme
            //             .bodyText1
            //             ?.copyWith(fontSize: 13),
            //       ),
            //     )
            //   ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return Eperpus();
                    }));
                  },
                  child: HeaderItem(
                    images: 'assets/images/statsmp.png',
                    title: 'e-Perpus',
                    textcolor: Colors.grey,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return Elearning();
                    }));
                  },
                  child: HeaderItem(
                    images: 'assets/images/agenda.png',
                    title: 'e-learning',
                    textcolor: Colors.grey,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return Ekskul();
                    }));
                  },
                  child: HeaderItem(
                    images: 'assets/images/iconmeksmp.png',
                    title: 'ekskul',
                    textcolor: Colors.grey,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Management",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontSize: 13),
              ),
            ),

            SizedBox(
              height: 5,
            ),

          ],
        ),
      ),
    );
  }
}

class HeaderItem extends StatelessWidget {
  const HeaderItem(
      {Key? key,
      required this.images,
      required this.title,
      required this.textcolor})
      : super(key: key);
  final String images;
  final String title;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Column(
        children: <Widget>[
          Image.asset(
            images,
            scale: 3,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.blue),
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
