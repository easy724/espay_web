import 'package:espay/pages/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_web.dart';
import 'package:seo_renderer/renderers/link_renderer/link_renderer_web.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_web.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:universal_html/html.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  bool showTooltip = false;
  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;
    final RenderController _controller = RenderController();
    final RenderController _controller1 = RenderController();
    final RenderController _controller2 = RenderController();
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
                    onTap: () {},
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
                  top: pageSize.width > 950 ? 133.0 : 120.0,
                  bottom: pageSize.width > 950 ? 95.0 : 130.0),
              child: SingleChildScrollView(
                controller: ScrollController()
                  ..addListener(() {
                    _controller.refresh();
                    _controller1.refresh();
                    _controller2.refresh();
                  }),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: pageSize.width > 660
                                ? (pageSize.width * 0.45) - 70.0
                                : pageSize.width * 0.86,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextRenderer(
                                  controller: _controller,
                                  element: HeadingElement.h1(),
                                  text: Text(
                                    'درباره ما',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                                TextRenderer(
                                  controller: _controller1,
                                  element: ParagraphElement(),
                                  text: Text(
                                    ' ESPay بر اساس این باور اصلی ایجاد گردید که امکان دسترسی به خدمات مالی در سطح بین المللی را برای جامع ایرانیان میسر سازد.\nدر پی ایجاد چالش های جهانی که به دلایل مختلف در طی سالهای گذشته ایجاد شده، همکاران ما تلاش نمودند که با ایجاد یک بستر دموکراتیک در خدمات مالی، توانمندی نقل و انتقالات مالی را برای ایرانیانی که فارغ از هر گونه چالش و درگیری سیاسی برای انجام تراکنش های ضروری و قانونی مالی دچار مشکلات فراوان شده بودند را مهیا نماید.',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (pageSize.width > 660)
                            SizedBox(
                              width: (pageSize.width * 0.45) - 70.0,
                              child: Image.asset(
                                'assets/about_us.png',
                              ),
                            ),
                        ],
                      ),
                      if (pageSize.width <= 660)
                        SizedBox(
                          width: (pageSize.width * 0.86),
                          child: Image.asset(
                            'assets/about_us.png',
                          ),
                        ),
                      TextRenderer(
                        controller: _controller2,
                        element: ParagraphElement(),
                        text: Text(
                          'شروع طراحی این پلتفرم در سال 2018 توسط همکاران ما آغاز گردید تا با تلفیقی از روش های جدید و قدرتمند آنلاین، امکان انجام تراکنش های مالی را در هر زمان و مکان با انعطاف پذیری لازم و نوآوری های تکنولوژیکی فراهم سازد.\nESPay که فعالیتش را از آمریکای شمالی آغاز نموده، در تلاش است که ارسال و دریافت پول، جهت مصارف صحیح و قانونی در سراسر جهان را برای جامعه ایرانی تسهیل نماید. امیدواریم به زودی خدمات این پلتفرم را در سطح سایر کشورها نیز گسترده نماییم.',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ],
                  ),
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
                                onPressed: () {},
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
