import 'dart:html';

import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_web.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_web.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;
    return Container(
      color: const Color(0xFF546E7A),
      child: Padding(
        padding: EdgeInsets.only(
            right: pageSize.width / 15,
            left: pageSize.width / 15,
            top: pageSize.width > 950 ? 143.0 : 110.0,
            bottom: pageSize.width > 950 ? 75.0 : 90.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextRenderer(
                    element: HeadingElement.h1(),
                    text: Text(
                      'ESPay چیه؟',
                      textDirection: TextDirection.rtl,
                      style: pageSize.width > 650
                          ? Theme.of(context).textTheme.headline2
                          : Theme.of(context).textTheme.headline3,
                    ),
                  ),
                  TextRenderer(
                    element: ParagraphElement(),
                    text: Text(
                      'به زبان خیلی ساده این اپلیکیشن برای انتقال پول خرد بین کشورهای کانادا و آمریکا و ایران استفاده میشه ',
                      textDirection: TextDirection.rtl,
                      style: pageSize.width > 650
                          ? Theme.of(context).textTheme.bodyText1
                          : Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: ImageRenderer(
                alt: 'What is ESPay?',
                link: 'assets/page1.png',
                child: Image.asset(
                  'assets/page1.png',
                  height: pageSize.height / 2.2,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
