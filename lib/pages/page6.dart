import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_web.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_web.dart';
import 'package:seo_renderer/seo_renderer.dart';

class Page6 extends StatelessWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;
    final RenderController _controller = RenderController();
    final RenderController _controller1 = RenderController();
    final RenderController _controller2 = RenderController();
    return Container(
      color: const Color(0xFF546E7A),
      child: SizedBox(
        width: pageSize.width,
        height: pageSize.height,
        child: Padding(
          padding: EdgeInsets.only(
              right: pageSize.width / 15,
              left: pageSize.width / 15,
              top: pageSize.width > 950 ? 133.0 : 130.0,
              bottom: pageSize.width > 950 ? 64.0 : 90.0),
          child: SingleChildScrollView(
            controller: ScrollController()
              ..addListener(() {
                _controller.refresh();
                _controller1.refresh();
                _controller2.refresh();
              }),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextRenderer(
                  controller: _controller,
                  element: HeadingElement.h2(),
                  text: Text(
                    'آیا آماده اید: ',
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                TextRenderer(
                  controller: _controller1,
                  element: ParagraphElement(),
                  text: Text(
                    'ما توضیحات لازم را جهت انجام یک تجربه متفاوت با پلتفرم ESPay ارائه کردیم، شما کاربران محترم لازم است که فرآیند ثبت نام را به انجام رسانید و از مزایای این سیستم بهره مند گردید. فراموش کنید که قبل از آشنایی با ESPay با مراجعه حضوری به صرافی و صرف زمان بسیار زیاد و هزینه گزاف و زمان انتظار طولانی، فرآیند انتقال ارز انجام می‌شد، با پلتفرم ESPay تمامی فرآیند با چند کلیک ساده انجام می گردد. پلتفرم Espay امنیت نقل و انتقالات ارزی شما را با بیشترین ضریب اطمینان مهیا میسازد. ',
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: ImageRenderer(
                      controller: _controller2,
                      alt: 'Are you ready?',
                      link: 'assets/page6.png',
                      child: Image.asset(
                        'assets/page6.png',
                        height: pageSize.height / 2.3,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
