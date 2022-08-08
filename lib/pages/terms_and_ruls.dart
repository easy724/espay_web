import 'package:espay/pages/common_widgets.dart';
import 'package:espay/pages/terms_and_ruls_page1.dart';
import 'package:espay/pages/terms_and_ruls_page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_web.dart';
import 'package:seo_renderer/renderers/link_renderer/link_renderer_web.dart';
import 'package:url_launcher/url_launcher.dart';

class TermsAndRulsPage extends StatefulWidget {
  const TermsAndRulsPage({Key? key}) : super(key: key);

  @override
  _TermsAndRulsPageState createState() => _TermsAndRulsPageState();
}

class _TermsAndRulsPageState extends State<TermsAndRulsPage> {
  bool showTooltip = false, termFPage = true;
  LiquidController termsSliderController = LiquidController();
  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;
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
                      Navigator.pop(context, -1);
                      Navigator.pushNamed(context, '/payments');
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
                      Navigator.pop(context, -1);
                      Navigator.pushNamed(context, '/dl');
                    },
                  ),
                  const ListTile(
                    title: Text(
                      "شرایط و قوانین",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'IRANYekan',
                          color: Color(0xFF546E7A)),
                    ),
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
                      Navigator.pop(context, -1);
                      Navigator.pushNamed(context, '/about-us');
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
                      Navigator.pop(context, -1);
                      Navigator.pushNamed(context, '/contact-us');
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
              liquidController: termsSliderController,
              ignoreUserGestureWhileAnimating: true,
              enableSideReveal: true,
              enableLoop: false,
              disableUserGesture: true,
              pages: const [
                TermsAndRulsPage1(),
                ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.black45,
                      BlendMode.luminosity,
                    ),
                    child: TermsAndRulsPage2()),
                TermsAndRulsPage2(),
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
                  InkWell(
                    onTap: () {
                      Navigator.pop(context, 1);
                    },
                    child: ImageRenderer(
                      alt: 'ESPay logo',
                      link: 'assets/Logo.png',
                      child: Image.asset(
                        'assets/Logo.png',
                        width: pageSize.width > 950 ? 180.0 : 140.0,
                      ),
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
                                  Navigator.pop(context, -1);
                                  Navigator.pushNamed(context, '/payments');
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
                                  Navigator.pop(context, -1);
                                  Navigator.pushNamed(context, '/dl');
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
                            const Text(
                              "شرایط و قوانین",
                              style: TextStyle(
                                  fontSize: 16.0, fontFamily: 'IRANYekan'),
                            ),
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
                                  Navigator.pop(context, -1);
                                  Navigator.pushNamed(context, '/about-us');
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
                                  Navigator.pop(context, -1);
                                  Navigator.pushNamed(context, '/contact-us');
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
                          if (!termFPage) {
                            setState(() {
                              termFPage = !termFPage;
                            });
                            termsSliderController.animateToPage(
                                page: termsSliderController.currentPage - 2,
                                duration: 1000);
                          }
                        },
                        child: SvgPicture.asset(
                          'assets/prev.svg',
                          height: 19.0,
                          color: termFPage ? Colors.white38 : Colors.white,
                        )),
                    const SizedBox(
                      width: 30.0,
                    ),
                    InkWell(
                        onTap: () {
                          if (termFPage) {
                            setState(() {
                              termFPage = !termFPage;
                            });
                            termsSliderController.animateToPage(
                                page: termsSliderController.currentPage + 2,
                                duration: 1500);
                          }
                        },
                        child: SvgPicture.asset(
                          'assets/next.svg',
                          height: 19.0,
                          color: termFPage ? Colors.white : Colors.white38,
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
