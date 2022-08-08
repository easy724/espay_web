import 'dart:html';

import 'package:espay/pages/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_web.dart';
import 'package:seo_renderer/renderers/link_renderer/link_renderer_web.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_web.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  _DownloadPageState createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  bool showTooltip = false;
  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;
    final RenderController _controller = RenderController();
    final RenderController _controller1 = RenderController();
    final RenderController _controller2 = RenderController();
    final RenderController _controller3 = RenderController();
    final RenderController _controller4 = RenderController();
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
                  const ListTile(
                    title: Text(
                      "دانلود",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'IRANYekan',
                          color: Color(0xFF546E7A)),
                    ),
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
                      Navigator.pop(context, -1);
                      Navigator.pushNamed(context, '/privacy-policy');
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
            Padding(
              padding: EdgeInsets.only(
                  right: pageSize.width / 15,
                  left: pageSize.width / 15,
                  top: pageSize.width > 950 ? 143.0 : 120.0,
                  bottom: pageSize.width > 950 ? 60.0 : 90.0),
              child: SingleChildScrollView(
                controller: ScrollController()
                  ..addListener(() {
                    _controller.refresh();
                    _controller1.refresh();
                    _controller2.refresh();
                    _controller3.refresh();
                    _controller4.refresh();
                  }),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextRenderer(
                      controller: _controller,
                      element: HeadingElement.h1(),
                      text: const Text('دانلود اپلیکیشن',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontFamily: 'IRANYekan',
                              fontSize: 48.0,
                              color: Colors.white)),
                    ),
                    ImageRenderer(
                      controller: _controller1,
                      alt: 'Download',
                      link: 'assets/page7.png',
                      child: Image.asset(
                        'assets/page7.png',
                        height: pageSize.height / 2.2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Flex(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          direction: pageSize.width < 850
                              ? Axis.vertical
                              : Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: LinkRenderer(
                                controller: _controller2,
                                anchorText: 'Download Web',
                                link: '',
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        elevation: 10.0,
                                        primary: const Color(0xFF2F52F6),
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 32.0,
                                          right: 32.0,
                                          top: 24.0,
                                          bottom: 24.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset(
                                            'assets/web.svg',
                                            width: 32.0,
                                          ),
                                          const SizedBox(
                                            width: 18.0,
                                          ),
                                          Text(
                                            "نسخه وب",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: LinkRenderer(
                                controller: _controller3,
                                anchorText: 'Download Android',
                                link:
                                    'https://play.google.com/store/apps/details?id=ca.espay.android',
                                child: ElevatedButton(
                                    onPressed: () {
                                      launch(
                                          'https://play.google.com/store/apps/details?id=ca.espay.android');
                                    },
                                    style: ElevatedButton.styleFrom(
                                        elevation: 10.0,
                                        primary: const Color(0xFF2F52F6),
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 21.0,
                                          bottom: 21.0,
                                          left: 48.0,
                                          right: 48.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset(
                                            'assets/android.svg',
                                            height: 48.0,
                                          ),
                                          const SizedBox(
                                            width: 18.0,
                                          ),
                                          Text(
                                            "اندروید",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: LinkRenderer(
                                controller: _controller4,
                                anchorText: 'Download iOS',
                                link: 'https://apps.apple.com/app/ez-accounting-solution/id1605834976',
                                child: ElevatedButton(
                                    onPressed: () {
                                      launch(
                                          'https://apps.apple.com/app/ez-accounting-solution/id1605834976');
                                    },
                                    style: ElevatedButton.styleFrom(
                                        elevation: 10.0,
                                        primary: const Color(0xFF2F52F6),
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 24.0,
                                          bottom: 24.0,
                                          left: 48.0,
                                          right: 48.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset(
                                            'assets/apple.svg',
                                            width: 32.0,
                                          ),
                                          const SizedBox(
                                            width: 18.0,
                                          ),
                                          Text(
                                            "آیفون",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
                      child: Image.asset('assets/Logo.png',
                          width: pageSize.width > 950 ? 180.0 : 140.0),
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
                            const Text(
                              "دانلود",
                              style: TextStyle(
                                  fontSize: 16.0, fontFamily: 'IRANYekan'),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context, -1);
                                  Navigator.pushNamed(
                                      context, '/privacy-policy');
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
            const WhiteLine(),
            const SocialMedias(),
            const Copyright(),
          ],
        ),
      ),
    );
  }
}
