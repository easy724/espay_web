import 'dart:html';

import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_web.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_web.dart';
import 'package:seo_renderer/seo_renderer.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;
    final RenderController _controller = RenderController();
    final RenderController _controller1 = RenderController();
    final RenderController _controller2 = RenderController();
    final RenderController _controller3 = RenderController();
    return Container(
      color: const Color(0xFF546E7A),
      child: SizedBox(
        width: pageSize.width,
        height: pageSize.height,
        child: Padding(
          padding: EdgeInsets.only(
              right: pageSize.width / 15,
              left: pageSize.width / 15,
              top: pageSize.width > 950 ? 153.0 : 130.0,
              bottom: pageSize.width > 950 ? 95.0 : 130.0),
          child: SingleChildScrollView(
            controller: ScrollController()
              ..addListener(() {
                _controller.refresh();
                _controller1.refresh();
                _controller2.refresh();
                _controller3.refresh();
              }),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextRenderer(
                  controller: _controller,
                  element: HeadingElement.h2(),
                  text: Text(
                    'خب ESPay چطور کار میکنه؟ ',
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                TextRenderer(
                  controller: _controller1,
                  element: ParagraphElement(),
                  text: Text(
                    'این اپلیکیشن به دو روش سرویس ارایه میکنه \nروش اول استفاده از روش صرافی هست که خیلی سریع پول رو به کشور مورد نظر انتقال میدیم  و البته کارمزد بیشتری برای کاربران داره. ',
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 16.0, bottom: pageSize.width > 615 ? 20.0 : 8.0),
                    child: ImageRenderer(
                      controller: _controller2,
                      alt: 'How ESPay works?',
                      link: 'assets/page5.png',
                      child: Image.asset(
                        'assets/page5.png',
                        height: pageSize.height / 2.7,
                      ),
                    ),
                  ),
                ),
                TextRenderer(
                  controller: _controller3,
                  element: ParagraphElement(),
                  text: Text(
                    'روش دوم که خیلی جذاب تره و البته با کمترین کارمزد انجام میشه اینطوری هست که کاربران مقدار پول مورد نظری که میخوان منتقل کنند رو به صورت درخواست خرید یا فروش  داخل اپلیکیشن ثبت میکنند و سایر کاربران اون درخواست رو تائید میکنند و ارز مورد نظر رو در کشور مقصد تحویل میگیرن ',
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
