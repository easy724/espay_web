import 'dart:html';

import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_web.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_web.dart';
import 'package:seo_renderer/seo_renderer.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;
    final RenderController _controller = RenderController();
    final RenderController _controller1 = RenderController();
    final RenderController _controller2 = RenderController();
    final RenderController _controller3 = RenderController();
    final RenderController _controller4 = RenderController();
    return Container(
      color: const Color(0xFF546E7A),
      child: SizedBox(
        width: pageSize.width,
        height: pageSize.height,
        child: Padding(
          padding: EdgeInsets.only(
              right: pageSize.width / 15,
              left: pageSize.width / 15,
              top: pageSize.width > 950 ? 148.0 : 130.0,
              bottom: pageSize.width > 950 ? 64.0 : 90.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextRenderer(
                    controller: _controller,
                    element: HeadingElement.h2(),
                    text: Text(
                      'چرا سیستم همتا به همتا: ',
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: pageSize.width > 650
                            ? (pageSize.width / 2) - 64
                            : pageSize.width * 0.85,
                        child: TextRenderer(
                          controller: _controller1,
                          element: ParagraphElement(),
                          text: Text(
                            'چند دلیل برای استفاده از سیستم همتا به همتا وجود دارد؛ \n۱- امنیت و آرامش خیال: \nدر ESPay شما به طور مستقیم با خریدار یا فروشنده در تماس هستید و به واسطه این پلتفرم انجام مبادله با نظارت کامل ESPay انجام می‌پذیرد و هیچگونه واسطه ایی وجود ندارد. ',
                            textDirection: TextDirection.rtl,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                      ),
                      if (pageSize.width > 650)
                        SizedBox(
                          width: (pageSize.width / 2.4) - 64,
                          child: TextRenderer(
                            controller: _controller2,
                            element: ParagraphElement(),
                            text: Text(
                              '2- تشخیص هویت: \nکلیه کاربران ESPay فرآیند تشخیص هویت را به انجام رساندند، و دارای شخصیت حقیقی و حقوقی معین و قابل شناسایی می باشند. ',
                              textDirection: TextDirection.rtl,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ),
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: ImageRenderer(
                        controller: _controller3,
                        alt: 'Why hamta to hamta?',
                        link: 'assets/page3.png',
                        child: Image.asset(
                          'assets/page3.png',
                          height: pageSize.width < 600
                              ? null
                              : pageSize.height / 2.2,
                        ),
                      ),
                    ),
                  ),
                  if (pageSize.width <= 650)
                    SizedBox(
                      width: pageSize.width * 0.85,
                      child: TextRenderer(
                        controller: _controller4,
                        element: ParagraphElement(),
                        text: Text(
                          '2- تشخیص هویت: \nکلیه کاربران ESPay فرآیند تشخیص هویت را به انجام رساندند، و دارای شخصیت حقیقی و حقوقی معین و قابل شناسایی می باشند. ',
                          textDirection: TextDirection.rtl,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ),
                  const SizedBox(height: 50.0)
                ]),
          ),
        ),
      ),
    );
  }
}
