import 'dart:html';

import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_web.dart';
import 'package:seo_renderer/seo_renderer.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;
    final RenderController _controller = RenderController();
    final RenderController _controller1 = RenderController();
    final RenderController _controller2 = RenderController();
    final RenderController _controller3 = RenderController();
    final RenderController _controller4 = RenderController();
    final RenderController _controller5 = RenderController();
    final RenderController _controller6 = RenderController();
    final RenderController _controller7 = RenderController();
    final RenderController _controller8 = RenderController();
    final RenderController _controller9 = RenderController();
    final RenderController _controller10 = RenderController();
    final RenderController _controller11 = RenderController();
    final RenderController _controller12 = RenderController();
    final RenderController _controller13 = RenderController();
    final RenderController _controller14 = RenderController();
    final RenderController _controller15 = RenderController();
    final RenderController _controller16 = RenderController();
    final RenderController _controller17 = RenderController();
    final RenderController _controller18 = RenderController();
    final RenderController _controller19 = RenderController();
    final RenderController _controller20 = RenderController();
    final RenderController _controller21 = RenderController();
    final RenderController _controller22 = RenderController();
    final RenderController _controller23 = RenderController();
    final RenderController _controller24 = RenderController();
    final RenderController _controller25 = RenderController();
    final RenderController _controller26 = RenderController();
    final RenderController _controller27 = RenderController();
    final RenderController _controller28 = RenderController();

    Widget table2 = Column(
      children: [
        Table(
          border: TableBorder.all(width: 1, color: const Color(0xFFB9B9B9)),
          children: [
            TableRow(children: [
              Center(
                child: TextRenderer(
                  controller: _controller,
                  element: HeadingElement.h6(),
                  text: Text(
                    'درخواست خرید و فروش',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            ])
          ],
        ),
        Table(
          border: TableBorder.all(width: 1, color: const Color(0xFFB9B9B9)),
          children: [
            TableRow(children: [
              Container(
                color: Colors.black.withOpacity(0.05),
                child: Center(
                  child: TextRenderer(
                    controller: _controller1,
                    element: ParagraphElement(),
                    text: Text(
                      'میزان',
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.black.withOpacity(0.05),
                child: Center(
                  child: TextRenderer(
                    controller: _controller2,
                    element: ParagraphElement(),
                    text: Text(
                      'کارمزد',
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ),
              ),
            ]),
            TableRow(children: [
              Center(
                child: TextRenderer(
                  controller: _controller3,
                  element: ParagraphElement(),
                  text: Text(
                    '0 تا 99 دلار',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
              Center(
                child: TextRenderer(
                  controller: _controller4,
                  element: ParagraphElement(),
                  text: Text(
                    '1.5 دلار',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            ]),
            TableRow(children: [
              Center(
                child: TextRenderer(
                  controller: _controller5,
                  element: ParagraphElement(),
                  text: Text(
                    '100 تا 499 دلار',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
              Center(
                child: TextRenderer(
                  controller: _controller6,
                  element: ParagraphElement(),
                  text: Text(
                    '3 دلار',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            ]),
            TableRow(children: [
              Center(
                child: TextRenderer(
                  controller: _controller7,
                  element: ParagraphElement(),
                  text: Text(
                    '500 تا 999 دلار',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
              Center(
                child: TextRenderer(
                  controller: _controller8,
                  element: ParagraphElement(),
                  text: Text(
                    '4.5 دلار',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            ]),
            TableRow(children: [
              Center(
                child: TextRenderer(
                  controller: _controller9,
                  element: ParagraphElement(),
                  text: Text(
                    '1000 تا 4999 دلار',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
              Center(
                child: TextRenderer(
                  controller: _controller10,
                  element: ParagraphElement(),
                  text: Text(
                    '6 دلار',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            ]),
            TableRow(children: [
              Center(
                child: TextRenderer(
                  controller: _controller11,
                  element: ParagraphElement(),
                  text: Text(
                    '5000 تا 9999 دلار',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
              Center(
                child: TextRenderer(
                  controller: _controller12,
                  element: ParagraphElement(),
                  text: Text(
                    '7.5 دلار',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            ]),
          ],
        ),
      ],
    );
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
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
              controller: ScrollController()
                ..addListener(() {
                  _controller.refresh();
                  _controller1.refresh();
                  _controller2.refresh();
                  _controller3.refresh();
                  _controller4.refresh();
                  _controller5.refresh();
                  _controller6.refresh();
                  _controller7.refresh();
                  _controller8.refresh();
                  _controller9.refresh();
                  _controller10.refresh();
                  _controller11.refresh();
                  _controller12.refresh();
                  _controller13.refresh();
                  _controller14.refresh();
                  _controller15.refresh();
                  _controller16.refresh();
                  _controller17.refresh();
                  _controller18.refresh();
                  _controller19.refresh();
                  _controller20.refresh();
                  _controller21.refresh();
                  _controller22.refresh();
                  _controller23.refresh();
                  _controller24.refresh();
                  _controller25.refresh();
                  _controller26.refresh();
                  _controller27.refresh();
                  _controller28.refresh();
                }),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextRenderer(
                    controller: _controller13,
                    element: ParagraphElement(),
                    text: Text(
                      '3- هزینه کارمزد پایین: \nانجام تراکنش مالی در سیستم ESPay با کمترین میزان کارمزد ممکن مطابق جدول ذیل انجام می پذیرد.  ',
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: TextRenderer(
                        controller: _controller14,
                        element: HeadingElement.h2(),
                        text: Text(
                          'کارمزد',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ),
                  ),
                  Table(
                    columnWidths: const {
                      0: FlexColumnWidth(10),
                      1: FlexColumnWidth(1),
                      2: FlexColumnWidth(10),
                    },
                    children: [
                      TableRow(
                        children: [
                          Column(
                            children: [
                              Table(
                                border: TableBorder.all(
                                    width: 1, color: const Color(0xFFB9B9B9)),
                                children: [
                                  TableRow(children: [
                                    Center(
                                      child: TextRenderer(
                                        controller: _controller15,
                                        element: HeadingElement.h6(),
                                        text: Text(
                                          'انتقال صرافی',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                      ),
                                    ),
                                  ])
                                ],
                              ),
                              Table(
                                border: TableBorder.all(
                                    width: 1, color: const Color(0xFFB9B9B9)),
                                children: [
                                  TableRow(children: [
                                    Container(
                                      color: Colors.black.withOpacity(0.05),
                                      child: Center(
                                        child: TextRenderer(
                                          controller: _controller16,
                                          element: ParagraphElement(),
                                          text: Text(
                                            'میزان',
                                            textDirection: TextDirection.rtl,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      color: Colors.black.withOpacity(0.05),
                                      child: Center(
                                        child: TextRenderer(
                                          controller: _controller17,
                                          element: ParagraphElement(),
                                          text: Text(
                                            'کارمزد',
                                            textDirection: TextDirection.rtl,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Center(
                                      child: TextRenderer(
                                        controller: _controller18,
                                        element: ParagraphElement(),
                                        text: Text(
                                          '0 تا 99 دلار',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: TextRenderer(
                                        controller: _controller19,
                                        element: ParagraphElement(),
                                        text: Text(
                                          '3 دلار',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                      ),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Center(
                                      child: TextRenderer(
                                        controller: _controller20,
                                        element: ParagraphElement(),
                                        text: Text(
                                          '100 تا 499 دلار',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: TextRenderer(
                                        controller: _controller21,
                                        element: ParagraphElement(),
                                        text: Text(
                                          '6 دلار',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                      ),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Center(
                                      child: TextRenderer(
                                        controller: _controller22,
                                        element: ParagraphElement(),
                                        text: Text(
                                          '500 تا 999 دلار',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: TextRenderer(
                                        controller: _controller23,
                                        element: ParagraphElement(),
                                        text: Text(
                                          '9 دلار',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                      ),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Center(
                                      child: TextRenderer(
                                        controller: _controller24,
                                        element: ParagraphElement(),
                                        text: Text(
                                          '1000 تا 4999 دلار',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: TextRenderer(
                                        controller: _controller25,
                                        element: ParagraphElement(),
                                        text: Text(
                                          '12 دلار',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                      ),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Center(
                                      child: TextRenderer(
                                        controller: _controller26,
                                        element: ParagraphElement(),
                                        text: Text(
                                          '5000 تا 9999 دلار',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: TextRenderer(
                                        controller: _controller27,
                                        element: ParagraphElement(),
                                        text: Text(
                                          '15 دلار',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                      ),
                                    ),
                                  ]),
                                ],
                              ),
                            ],
                          ),
                          if (pageSize.width > 700) const SizedBox(width: 10.0),
                          if (pageSize.width > 700) table2
                        ],
                      ),
                    ],
                  ),
                  if (pageSize.width <= 700)
                    const SizedBox(
                      height: 20.0,
                    ),
                  if (pageSize.width <= 700) table2,
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextRenderer(
                    controller: _controller28,
                    element: ParagraphElement(),
                    text: Text(
                      '4- قیمت رقابتی: \nESPay با حذف واسطه ها در سیستم انتقال ارز بهترین قیمت به روز ارز را در اختیار کاربران قرار می دهد؛ در حقیقت کاربران بهترین قیمت توافقی با یکدیگر را می توانند کسب نمایند، و اختلاف قیمت معمول بین خرید و فروش را که واسطه ها در قیمت نهایی درج می نمایند را پرداخت نمیکنند، و کاربران بهترین قیمت را دریافت میکنند. ',
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
