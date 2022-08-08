import 'dart:async';

import 'package:espay/pages/about_us_page.dart';
import 'package:espay/pages/common_widgets.dart';
import 'package:espay/pages/contact_us_page.dart';
import 'package:espay/pages/download_page.dart';
import 'package:espay/pages/page1.dart';
import 'package:espay/pages/page2.dart';
import 'package:espay/pages/page3.dart';
import 'package:espay/pages/page4.dart';
import 'package:espay/pages/page5.dart';
import 'package:espay/pages/page6.dart';
import 'package:espay/pages/payments_page.dart';
import 'package:espay/pages/terms_and_ruls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:universal_html/html.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ESPay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline2: TextStyle(
              fontFamily: 'IRANYekan', fontSize: 48, color: Colors.white),
          headline3: TextStyle(
              fontFamily: 'IRANYekan', fontSize: 32, color: Colors.white),
          headline6: TextStyle(
              fontFamily: 'IRANYekan',
              fontSize: 18,
              color: Colors.white,
              height: 2.0),
          bodyText1: TextStyle(
              fontFamily: 'IRANYekan',
              fontSize: 24,
              color: Colors.white,
              height: 2.0),
          bodyText2: TextStyle(
              fontFamily: 'IRANYekan',
              fontSize: 14,
              color: Colors.white,
              height: 1.8),
        ),
      ),
      navigatorObservers: [routeObserver],
      // locale: const Locale('fa'),
      // supportedLocales: const [
      //   Locale('fa'),
      // ],
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/dl': (context) => const DownloadPage(),
        '/privacy-policy': (context) => const TermsAndRulsPage(),
        '/contact-us': (context) => const ContactUsPage(),
        '/about-us': (context) => const AboutUsPage(),
        '/payments': (context) => const PaymentsPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  LiquidController sliderController = LiquidController();
  bool showTooltip = false,
      firstPage = true,
      lastPage = false,
      recentChange = false,
      pausePage = false;
  @override
  void initState() {
    // TODO: implement initState
    // Remove `loading` div
    final loader = document.getElementsByClassName('loading');
    if (loader.isNotEmpty) {
      loader.first.remove();
    }

    Future.delayed(const Duration(milliseconds: 1)).whenComplete(() {
      sliderController.animateToPage(page: 1, duration: 1500);
    });
    Timer.periodic(const Duration(seconds: 18), (Timer t) {
      int pn = 0;
      try {
        pn = sliderController.currentPage;
      } catch (e) {}
      if (!pausePage) {
        if (pn % 2 != 0) {
          // if its the last page go to first page.
          // else go to next page
          if (recentChange) {
            recentChange = false;
          } else {
            if (pn != 9) {
              if (pn >= 7) {
                setState(() {
                  lastPage = true;
                });
              } else {
                setState(() {
                  firstPage = false;
                  lastPage = false;
                });
              }
              sliderController.animateToPage(page: pn + 2, duration: 1500);
            } else {
              setState(() {
                firstPage = true;
                lastPage = false;
              });
              sliderController.animateToPage(page: 1, duration: 4000);
            }
          }
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;
    Page1 page1 = const Page1();
    Page2 page2 = const Page2();
    Page3 page3 = const Page3();
    Page5 page5 = const Page5();
    Page6 page6 = const Page6();
    return Scaffold(
      backgroundColor: const Color(0xFF546E7A),
      drawer: pageSize.width > 950
          ? null
          : Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    title: const Text(
                      "کارمزد",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'IRANYekan',
                          color: Color(0xFF546E7A)),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/payments').then((value) {
                        int pg = value as int;
                        if (pg != -1) {
                          if (pg == 9) {
                            setState(() {
                              lastPage = true;
                              firstPage = false;
                            });
                          } else if (pg == 1) {
                            setState(() {
                              lastPage = false;
                              firstPage = true;
                            });
                          } else {
                            setState(() {
                              lastPage = false;
                              firstPage = false;
                            });
                          }
                          if (sliderController.currentPage != pg) {
                            sliderController.animateToPage(
                                page: pg, duration: 2000);
                          }
                        }
                      });
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "دانلود",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'IRANYekan',
                          color: Color(0xFF546E7A)),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/dl').then((value) {
                        int pg = value as int;
                        if (pg != -1) {
                          if (pg == 9) {
                            setState(() {
                              lastPage = true;
                              firstPage = false;
                            });
                          } else if (pg == 1) {
                            setState(() {
                              lastPage = false;
                              firstPage = true;
                            });
                          } else {
                            setState(() {
                              lastPage = false;
                              firstPage = false;
                            });
                          }
                          if (sliderController.currentPage != pg) {
                            sliderController.animateToPage(
                                page: pg, duration: 2000);
                          }
                        }
                      });
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "شرایط و قوانین",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'IRANYekan',
                          color: Color(0xFF546E7A)),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/privacy-policy')
                          .then((value) {
                        int pg = value as int;
                        if (pg != -1) {
                          if (pg == 9) {
                            setState(() {
                              lastPage = true;
                              firstPage = false;
                            });
                          } else if (pg == 1) {
                            setState(() {
                              lastPage = false;
                              firstPage = true;
                            });
                          } else {
                            setState(() {
                              lastPage = false;
                              firstPage = false;
                            });
                          }
                          sliderController.animateToPage(
                              page: pg, duration: 2000);
                        }
                      });
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "راهنمای اپلیکیشن",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'IRANYekan',
                          color: Color(0xFF546E7A)),
                    ),
                    onTap: () {
                      setState(() {
                        showTooltip = !showTooltip;
                      });
                    },
                  ),
                  if (showTooltip)
                    ListTile(
                      title: Column(
                        children: [
                          const SizedBox(
                            height: 5.0,
                          ),
                          SvgPicture.asset(
                            'assets/triangle.svg',
                            width: 5.0,
                            color: const Color(0xFFB9B9B9),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFFB9B9B9),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  LinkRenderer(
                                    anchorText: 'YouTube',
                                    link:
                                        'https://www.youtube.com/channel/UCS8DwhpXygdYqFcgGyAKavA',
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.transparent,
                                        elevation: 0.0,
                                      ),
                                      onPressed: () {
                                        launch(
                                            'https://www.youtube.com/channel/UCS8DwhpXygdYqFcgGyAKavA');
                                      },
                                      child: SvgPicture.asset(
                                        'assets/YouTube.svg',
                                        width: 95.0,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  LinkRenderer(
                                    anchorText: 'آپارات',
                                    link: 'https://www.aparat.com/ESPay',
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.transparent,
                                        elevation: 0.0,
                                      ),
                                      onPressed: () {
                                        launch('https://www.aparat.com/ESPay');
                                      },
                                      child: SvgPicture.asset(
                                        'assets/Aparat.svg',
                                        width: 95.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ListTile(
                    title: const Text(
                      "درباره ما",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'IRANYekan',
                          color: Color(0xFF546E7A)),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/about-us').then((value) {
                        int pg = value as int;
                        if (pg != -1) {
                          if (pg == 9) {
                            setState(() {
                              lastPage = true;
                              firstPage = false;
                            });
                          } else if (pg == 1) {
                            setState(() {
                              lastPage = false;
                              firstPage = true;
                            });
                          } else {
                            setState(() {
                              lastPage = false;
                              firstPage = false;
                            });
                          }
                          if (sliderController.currentPage != pg) {
                            sliderController.animateToPage(
                                page: pg, duration: 2000);
                          }
                        }
                      });
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "تماس با ما",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'IRANYekan',
                          color: Color(0xFF546E7A)),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/contact-us').then((value) {
                        int pg = value as int;
                        if (pg != -1) {
                          if (pg == 9) {
                            setState(() {
                              lastPage = true;
                              firstPage = false;
                            });
                          } else if (pg == 1) {
                            setState(() {
                              lastPage = false;
                              firstPage = true;
                            });
                          } else {
                            setState(() {
                              lastPage = false;
                              firstPage = false;
                            });
                          }
                          sliderController.animateToPage(
                              page: pg, duration: 2000);
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
      body: SizedBox(
        width: pageSize.width,
        height: pageSize.height,
        child: Stack(
          children: [
            LiquidSwipe(
              liquidController: sliderController,
              ignoreUserGestureWhileAnimating: true,
              enableSideReveal: true,
              disableUserGesture: true,
              enableLoop: false,
              pages: [
                ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                      Colors.black45,
                      BlendMode.luminosity,
                    ),
                    child: page1),
                page1,
                ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                      Colors.black45,
                      BlendMode.luminosity,
                    ),
                    child: page2),
                page2,
                ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                      Colors.black45,
                      BlendMode.luminosity,
                    ),
                    child: page3),
                page3,
                ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                      Colors.black45,
                      BlendMode.luminosity,
                    ),
                    child: page5),
                page5,
                ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                      Colors.black45,
                      BlendMode.luminosity,
                    ),
                    child: page6),
                page6,
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(42.0),
              child: Row(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageRenderer(
                    alt: 'ESPay logo',
                    link: 'assets/Logo.png',
                    child: Image.asset(
                      'assets/Logo.png',
                      width: pageSize.width > 950 ? 180.0 : 140.0,
                    ),
                  ),
                  if (pageSize.width <= 950)
                    Builder(builder: (context2) {
                      return IconButton(
                          onPressed: () {
                            Scaffold.of(context2).openDrawer();
                          },
                          icon: const Icon(
                            Icons.dehaze,
                            color: Colors.white,
                            size: 34.0,
                          ));
                    }),
                  if (pageSize.width > 950)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: SizedBox(
                        width: pageSize.width - 280,
                        child: Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/payments')
                                      .then((value) {
                                    int pg = value as int;
                                    if (pg != -1) {
                                      if (pg == 9) {
                                        setState(() {
                                          lastPage = true;
                                          firstPage = false;
                                        });
                                      } else if (pg == 1) {
                                        setState(() {
                                          lastPage = false;
                                          firstPage = true;
                                        });
                                      } else {
                                        setState(() {
                                          lastPage = false;
                                          firstPage = false;
                                        });
                                      }
                                      if (sliderController.currentPage != pg) {
                                        sliderController.animateToPage(
                                            page: pg, duration: 2000);
                                      }
                                    }
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    shadowColor: Colors.white,
                                    primary: Colors.transparent,
                                    elevation: 0.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0))),
                                child: const Text(
                                  "کارمزد",
                                  style: TextStyle(
                                      fontSize: 16.0, fontFamily: 'IRANYekan'),
                                )),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/dl')
                                      .then((value) {
                                    int pg = value as int;
                                    if (pg != -1) {
                                      if (pg == 9) {
                                        setState(() {
                                          lastPage = true;
                                          firstPage = false;
                                        });
                                      } else if (pg == 1) {
                                        setState(() {
                                          lastPage = false;
                                          firstPage = true;
                                        });
                                      } else {
                                        setState(() {
                                          lastPage = false;
                                          firstPage = false;
                                        });
                                      }
                                      if (sliderController.currentPage != pg) {
                                        sliderController.animateToPage(
                                            page: pg, duration: 2000);
                                      }
                                    }
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    shadowColor: Colors.white,
                                    primary: Colors.transparent,
                                    elevation: 0.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0))),
                                child: const Text(
                                  "دانلود",
                                  style: TextStyle(
                                      fontSize: 16.0, fontFamily: 'IRANYekan'),
                                )),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                          context, '/privacy-policy')
                                      .then((value) {
                                    int pg = value as int;
                                    if (pg != -1) {
                                      if (pg == 9) {
                                        setState(() {
                                          lastPage = true;
                                          firstPage = false;
                                        });
                                      } else if (pg == 1) {
                                        setState(() {
                                          lastPage = false;
                                          firstPage = true;
                                        });
                                      } else {
                                        setState(() {
                                          lastPage = false;
                                          firstPage = false;
                                        });
                                      }
                                      sliderController.animateToPage(
                                          page: pg, duration: 2000);
                                    }
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    shadowColor: Colors.white,
                                    primary: Colors.transparent,
                                    elevation: 0.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0))),
                                child: const Text(
                                  "شرایط و قوانین",
                                  style: TextStyle(
                                      fontSize: 16.0, fontFamily: 'IRANYekan'),
                                )),
                            InkWell(
                              onTap: () {},
                              onHover: (hover) {
                                setState(() {
                                  showTooltip = hover;
                                });
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shadowColor: Colors.white,
                                          primary: Colors.transparent,
                                          elevation: 0.0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0))),
                                      onPressed: () {},
                                      child: const Text(
                                        "راهنمای اپلیکیشن",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'IRANYekan'),
                                      )),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  if (showTooltip)
                                    SvgPicture.asset(
                                      'assets/triangle.svg',
                                      width: 5.0,
                                      color: const Color(0xFFB9B9B9),
                                    ),
                                  if (showTooltip)
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFFB9B9B9),
                                          width: 1.0,
                                        ),
                                        color: const Color(0xFF546E7A),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          children: [
                                            LinkRenderer(
                                              anchorText: 'YouTube',
                                              link:
                                                  'https://www.youtube.com/channel/UCS8DwhpXygdYqFcgGyAKavA',
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.transparent,
                                                  elevation: 0.0,
                                                  shadowColor: Colors.white,
                                                ),
                                                onPressed: () {
                                                  launch(
                                                      'https://www.youtube.com/channel/UCS8DwhpXygdYqFcgGyAKavA');
                                                },
                                                child: SvgPicture.asset(
                                                  'assets/YouTube.svg',
                                                  width: 95.0,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 12.0,
                                            ),
                                            LinkRenderer(
                                              anchorText: 'آپارات',
                                              link:
                                                  'https://www.aparat.com/ESPay',
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.transparent,
                                                  elevation: 0.0,
                                                  shadowColor: Colors.white,
                                                ),
                                                onPressed: () {
                                                  launch(
                                                      'https://www.aparat.com/ESPay');
                                                },
                                                child: SvgPicture.asset(
                                                  'assets/Aparat.svg',
                                                  width: 95.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/about-us')
                                      .then((value) {
                                    int pg = value as int;
                                    if (pg != -1) {
                                      if (pg == 9) {
                                        setState(() {
                                          lastPage = true;
                                          firstPage = false;
                                        });
                                      } else if (pg == 1) {
                                        setState(() {
                                          lastPage = false;
                                          firstPage = true;
                                        });
                                      } else {
                                        setState(() {
                                          lastPage = false;
                                          firstPage = false;
                                        });
                                      }
                                      if (sliderController.currentPage != pg) {
                                        sliderController.animateToPage(
                                            page: pg, duration: 2000);
                                      }
                                    }
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    shadowColor: Colors.white,
                                    primary: Colors.transparent,
                                    elevation: 0.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0))),
                                child: const Text(
                                  "درباره ما",
                                  style: TextStyle(
                                      fontSize: 16.0, fontFamily: 'IRANYekan'),
                                )),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/contact-us')
                                      .then((value) {
                                    int pg = value as int;
                                    if (pg != -1) {
                                      if (pg == 9) {
                                        setState(() {
                                          lastPage = true;
                                          firstPage = false;
                                        });
                                      } else if (pg == 1) {
                                        setState(() {
                                          lastPage = false;
                                          firstPage = true;
                                        });
                                      } else {
                                        setState(() {
                                          lastPage = false;
                                          firstPage = false;
                                        });
                                      }
                                      sliderController.animateToPage(
                                          page: pg, duration: 2000);
                                    }
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    shadowColor: Colors.white,
                                    primary: Colors.transparent,
                                    elevation: 0.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0))),
                                child: const Text(
                                  "تماس با ما",
                                  style: TextStyle(
                                      fontSize: 16.0, fontFamily: 'IRANYekan'),
                                )),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                    right: pageSize.width / 8,
                    bottom: pageSize.width < 951 ? 103.0 : 75.5),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                        onTap: () {
                          int pageNumber = sliderController.currentPage;
                          if (pageNumber <= 3) {
                            setState(() {
                              firstPage = true;
                            });
                          } else {
                            setState(() {
                              firstPage = false;
                              lastPage = false;
                            });
                          }
                          if (pageNumber % 2 != 0 && pageNumber > 1) {
                            recentChange = true;
                            sliderController.animateToPage(
                                page: pageNumber - 2, duration: 1000);
                          }
                        },
                        child: SvgPicture.asset(
                          'assets/prev.svg',
                          height: 19.0,
                          color: firstPage ? Colors.white38 : Colors.white,
                        )),
                    const SizedBox(
                      width: 10.0,
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            pausePage = !pausePage;
                          });
                        },
                        icon: Icon(
                          pausePage ? Icons.play_arrow : Icons.pause,
                          color: Colors.white,
                        )),
                    const SizedBox(
                      width: 10.0,
                    ),
                    InkWell(
                        onTap: () {
                          int pageNumber = sliderController.currentPage;
                          if (pageNumber >= 9) {
                            setState(() {
                              lastPage = true;
                            });
                          } else {
                            setState(() {
                              firstPage = false;
                              lastPage = false;
                            });
                          }
                          if (pageNumber % 2 != 0) {
                            recentChange = true;
                            sliderController.animateToPage(
                                page: pageNumber + 2, duration: 1500);
                          }
                        },
                        child: SvgPicture.asset(
                          'assets/next.svg',
                          height: 19.0,
                          color: lastPage ? Colors.white38 : Colors.white,
                        )),
                  ],
                ),
              ),
            ),
            const WhiteLine(),
            const SocialMedias(),
            const Copyright(),
          ],
        ),
      ),
    );
  }
}
