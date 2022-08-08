import 'dart:html';

import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_web.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_web.dart';
import 'package:seo_renderer/seo_renderer.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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
              bottom: pageSize.width > 950 ? 95.0 : 130.0),
          child: SingleChildScrollView(
            controller: ScrollController()
              ..addListener(() {
                _controller.refresh();
                _controller1.refresh();
                _controller2.refresh();
              }),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: pageSize.width > 950 ? 20.0 : 0,
                        ),
                        child: SizedBox(
                          width: pageSize.width > 500
                              ? pageSize.width / 2
                              : pageSize.width * 0.86,
                          child: TextRenderer(
                            controller: _controller,
                            element: ParagraphElement(),
                            text: Text(
                              'ESPay پلتفرم جامع و امن جهت تبادل بین المللی ارز به صورت همتا به همتا بین افراد می باشد. همچنین ESPay با انجام فرآیند ارزیابی صرافی های معتبر امکان خرید و فروش مستقیم کلیه ارزهای بین المللی را از صرافی های معتبر و مورد تایید فراهم آورده است. ',
                              textDirection: TextDirection.rtl,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ),
                      ),
                      if (pageSize.width > 500)
                        Padding(
                          padding: EdgeInsets.only(
                            top: pageSize.width < 640
                                ? (pageSize.width % 50)
                                : 0,
                          ),
                          child: ImageRenderer(
                            controller: _controller1,
                            alt: 'What is ESPay?',
                            link: 'assets/page2.png',
                            child: Image.asset(
                              'assets/page2.png',
                              width: pageSize.width / 3.5,
                            ),
                          ),
                        ),
                    ],
                  ),
                  if (pageSize.width <= 500)
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: ImageRenderer(
                        controller: _controller1,
                        alt: 'What is ESPay?',
                        link: 'assets/page2.png',
                        child: Image.asset(
                          'assets/page2.png',
                        ),
                      ),
                    ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextRenderer(
                    controller: _controller2,
                    element: ParagraphElement(),
                    text: Text(
                      'همکاران ما در ESPay با بررسی نیاز ایرانیان مقیم خارج از کشور و همچنین هموطنان ساکن در ایران که در نبود یک سیستم جامع و امن جهت تبادل ارز دچار مشکلات فراوان گردیدند اقدام به طراحی و ایجاد این پلتفرم نمودند. در طی سالهای گذشته در پی ایجاد محدودیت های بانکی بین المللی سرویس های فراوانی توسط افراد مختلف در قالب پلتفرم های ارتباطی همچون تلگرام و واتساپ ایجاد گردید که به سرعت موجب ایجاد چالش های جدید گردید. عدم اعتماد بین کاربران در این پلتفرم ها و نبود یک واسط معتمد جهت انجام فرایند تبادل در بسیاری از موارد باعث ایجاد ضرر و زیان برای کاربران گردید.همچنین با توجه به عدم وجود فرآیند مشخص جهت انجام تبادل در بسیاری از موارد باعث ایجاد دغدغه و نگرانی برای کاربران در پی سو تفاهمات ایجاد شده گردید. لذا ESPay ماموریت اصلی خود را به عنوان یک پلتفرم جامع در خصوص انتقال ارز و از بین بردن چالش های آن با ایجاد یک مکانیزم سیستماتیک که منجر به کاهش نگرانی، تسریع فرآیند انتقال و همچنین کاهش هزینه های انجام تراکنش می باشد تعریف نموده است.',
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
