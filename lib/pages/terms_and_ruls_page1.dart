import 'dart:html';

import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_web.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_web.dart';
import 'package:seo_renderer/seo_renderer.dart';

class TermsAndRulsPage1 extends StatelessWidget {
  const TermsAndRulsPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;
    final RenderController _controller = RenderController();
    final RenderController _controller1 = RenderController();
    final RenderController _controller2 = RenderController();
    final RenderController _controller3 = RenderController();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        color: const Color(0xFF546E7A),
        width: pageSize.width,
        height: pageSize.height,
        child: Padding(
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
                _controller3.refresh();
              }),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: TextRenderer(
                    controller: _controller,
                    element: HeadingElement.h1(),
                    text: Text(
                      'حریم خصوصی ، شرایط و قوانین',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: pageSize.width > 390
                          ? (pageSize.width * 0.6) - 70.0
                          : pageSize.width * 0.86,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (pageSize.width <= 390)
                            Center(
                              child: ImageRenderer(
                                controller: _controller2,
                                alt: 'Terms and Ruls',
                                link: 'assets/page9.png',
                                child: Image.asset(
                                  'assets/page9.png',
                                  width: pageSize.width * 0.75,
                                ),
                              ),
                            ),
                          TextRenderer(
                            controller: _controller1,
                            element: ParagraphElement(),
                            text: Text(
                              '۱- ای اس پی به عنوان یک پلتفرم امن و قابل اعتماد جهت تبادل ارزهای بین المللی به صورت بدون واسطه و شخص به شخص عمل نموده و هیچ نقشی در معاملات شما ندارد.' +
                                  (pageSize.width > 460
                                      ? '\n۲- قبل از ثبت نام ، تمامی قوانین و مقررات را با دقت مطالعه فرمایید. بدیهی است ثبت نام شما به منزله ی پذیرش تمامی قوانین این مجموعه می باشد.'
                                      : '') +
                                  (pageSize.width > 560
                                      ? '\n۳- ثبت نام در ای اس پی برای کاربرانی که کمتر از 18 سال دارند امکان پذیر نمی باشد. لذا از ارایه خدمات به کاربران زیر سن 18 سال معذور می باشیم.'
                                      : '') +
                                  (pageSize.width > 600
                                      ? '\n۴- هنگام ثبت نام حتما اطلاعات حقیقی هویتی خود را وارد نمایید و از ایجاد حساب کاربری غیر واقعی خودداری نمایید.'
                                      : '') +
                                  (pageSize.width > 660
                                      ? '\n۵- حساب های کاربری غیر واقعی توسط کارشناسان بخش احراز هویت این مجموعه شناسایی و حذف خواهند شد و دسترسی حسابهای کاربری جعلی به این پلتفرم برای همیشه مسدود خواهد گردید.'
                                      : ''),
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (pageSize.width > 390)
                      ImageRenderer(
                        controller: _controller2,
                        alt: 'Terms and Ruls',
                        link: 'assets/page9.png',
                        child: Image.asset(
                          'assets/page9.png',
                          width: pageSize.width / 4,
                        ),
                      ),
                  ],
                ),
                if (pageSize.width <= 460)
                  TextRenderer(
                    element: ParagraphElement(),
                    text: Text(
                      '۲- قبل از ثبت نام ، تمامی قوانین و مقررات را با دقت مطالعه فرمایید. بدیهی است ثبت نام شما به منزله ی پذیرش تمامی قوانین این مجموعه می باشد.',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                if (pageSize.width <= 560)
                  TextRenderer(
                    element: ParagraphElement(),
                    text: Text(
                      '۳- ثبت نام در ای اس پی برای کاربرانی که کمتر از 18 سال دارند امکان پذیر نمی باشد. لذا از ارایه خدمات به کاربران زیر سن 18 سال معذور می باشیم.',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                if (pageSize.width <= 600)
                  TextRenderer(
                    element: ParagraphElement(),
                    text: Text(
                      '۴- هنگام ثبت نام حتما اطلاعات حقیقی هویتی خود را وارد نمایید و از ایجاد حساب کاربری غیر واقعی خودداری نمایید.',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                if (pageSize.width <= 660)
                  TextRenderer(
                    element: ParagraphElement(),
                    text: Text(
                      '۵- حساب های کاربری غیر واقعی توسط کارشناسان بخش احراز هویت این مجموعه شناسایی و حذف خواهند شد و دسترسی حسابهای کاربری جعلی به این پلتفرم برای همیشه مسدود خواهد گردید.',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                TextRenderer(
                  controller: _controller3,
                  element: ParagraphElement(),
                  text: Text(
                    '۶- در صورت استفاده از اطلاعات هویتی غیر واقعی و یا جعل هرگونه سند، حق پیگرد قانونی برای این مجموعه محفوظ می باشد.\n۷- ای اس پی تنها پرداخت هایی را در درگاه بانکی خود قبول میکند که با حساب بانکی شخص انجام پذیرد و هرگونه استفاده از حساب های اشخاص غیر، مورد پذیرش قرار نخواهد گرفت.\n۸- ای اس پی حفاظت از اطلاعات شخصی کاربران را در اولویت فعالیت خود قرار داده و جهت حفظ حریم شخصی کلیه اطلاعات کاربران را محفوظ می داند، با این حال جهت حفظ احتیاط، از کاربران خود می خواهد که همیشه ارتباطات آنلاین اینترنتی خود را ناامن فرض نمایند و از افشای اطلاعات خود با افراد غیر در بستر ای اس پی خودداری نمایند. لذا ای اس پی هیچ گونه مسئولیتی در رابطه با امنیت تبادل اطلاعات از شبکه و سرورهای خود را نمی پذیرد.',
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
