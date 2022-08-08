import 'dart:html';

import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_web.dart';
import 'package:seo_renderer/seo_renderer.dart';

class TermsAndRulsPage2 extends StatelessWidget {
  const TermsAndRulsPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;
    final RenderController _controller = RenderController();
    final RenderController _controller1 = RenderController();
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
              }),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextRenderer(
                  controller: _controller,
                  element: HeadingElement.h1(),
                  text: Text(
                    'حریم خصوصی ، شرایط و قوانین',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextRenderer(
                  controller: _controller1,
                  element: ParagraphElement(),
                  text: Text(
                    '۹- علی رغم استفاده ای اس پی از تاییدهای چند مرحله ای جهت ورود به فضای کاربری هرگونه سهل انگاری کاربران در حفظ اطلاعات امنیتی از جمله رمز عبور، به عهده‌ی شخص کاربر بوده و ای اس پی هیچ مسئولیتی به عهده نخواهد داشت. اکیداً توصیه می شود از رمز عبور پیچیده و امن استفاده شود.\n۱۰- ای اس پی هیچگونه مسئولیتی در خصوص انجام تبادلات ارزی بین کاربران پلتفرم خود که به صورت مستقل از ای اس پی و بدون استفاده از فرآیند تعریف شده در پلتفرم انجام گیرد ندارد لذا حتما توجه بفرمایید که کلیه گفتگو ها و تعاملات تنها در قالب پلتفرم انجام پذیرد.\n۱۱- ای اس پی تحت هیچ عنوان نسبت به فروش یا واگذاری اطلاعات اختصاصی جمـع آوری شده مشترکان و کاربران خود به هیچ شخص ثالثی اقدام نخواهد نمود.\n۱۲- کلیه کارمزدهای پلتفرم به صورت شفاف در ای اس پی نمایش داده می شود و هیچ گونه هزینه مخفی و یا کارمزد اضافی به جز آنچه در ای اس پی نمایش داده می شود دریافت نمی گردد. مگر در صورت کسر کارمزد توسط بانک واسطه یا مقصد، که در این صورت مسئولیتی متوجه این مجموعه نمی باشد.\n۱۳- پس از ثبت درخواست و تایید پیشنهاد در صورتی که نیاز به کنسل کردن و یا تغییر در اطلاعات خود دارید فورا مجموعه را در جریان این تغییرات قرار دهید و از هرگونه تماس مستقیم با کاربران اجتناب نمایید. در غیر این صورت این مجموعه هیچ مسئولیتی در قبال انجام تبادل و یا بازگشت وجه نخواهد داشت.\n۱۴- کلیه قوانین ای اس پی مطابق با قوانین فدرالی و استانی کشور کانادا، آمریکا و سایر قوانین بین المللی ناظر بر خدمات قابل ارائه این مجموعه می باشد و از آنجا که این قوانین در سطح دنیا به طور آنلاین و ماهانه امکان تغییر دارند، بدیهی است هر دستور العملی که توسط دستگاه های مرتبط به این مجموعه ابلاغ می شود لازم اجرا می باشد و لذا ای اس پی حق تغییرات آتی در قوانین را بـدون اعـلام قبلـی بر خود محفوظ می داند و مشترکان موظف به كسب آگاهی از این تغییرات از طریق این پلتفرم می باشند. بدیهی است ادامه استفاده از خدمات سایت به هر نحو، دلیل بر پـذیرفتن شـرایط جدیـد خواهد بود.',
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
