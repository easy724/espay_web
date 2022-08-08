import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seo_renderer/renderers/link_renderer/link_renderer_web.dart';
import 'package:url_launcher/url_launcher.dart';

class WhiteLine extends StatelessWidget {
  const WhiteLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: pageSize.width < 951 ? 83.0 : 53.0),
        child: Container(
            height: 2, color: Colors.white, width: pageSize.width * 0.75),
      ),
    );
  }
}

class Copyright extends StatelessWidget {
  const Copyright({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(
              bottom: pageSize.width < 951 ? 50.0 : 16.0,
              right: pageSize.width < 951 ? 0.0 : 50.0),
          child: Text(
            'Copyright © 2021 ESPay Inc. All rights reserved',
            style: TextStyle(
                fontSize: pageSize.width < 520 ? 14.0 : 18.0,
                color: Colors.white),
          ),
        ));
  }
}

class SocialMedias extends StatelessWidget {
  const SocialMedias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;
    return Align(
      alignment:
          pageSize.width < 951 ? Alignment.bottomCenter : Alignment.bottomRight,
      child: Padding(
        padding: EdgeInsets.only(
            right: pageSize.width < 951 ? 0 : pageSize.width / 7.0,
            bottom: 13.75),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          textDirection: TextDirection.rtl,
          children: [
            LinkRenderer(
              anchorText: 'Instagram',
              link: 'https://www.instagram.com/espay724/',
              child: InkWell(
                  onTap: () {
                    launch('https://www.instagram.com/espay724/');
                  },
                  child: SvgPicture.asset(
                    'assets/instagram.svg',
                    height: 24.5,
                  )),
            ),
            SizedBox(width: pageSize.width / 28),
            LinkRenderer(
              anchorText: 'Linkedin',
              link: 'https://www.linkedin.com/in/es-pay-775a59229/',
              child: InkWell(
                  onTap: () {
                    launch('https://www.linkedin.com/in/es-pay-775a59229/');
                  },
                  child: SvgPicture.asset(
                    'assets/linkedin.svg',
                    height: 32.07,
                  )),
            ),
            SizedBox(width: pageSize.width / 28),
            LinkRenderer(
              anchorText: 'Facebook',
              link: 'https://www.facebook.com/profile.php?id=100076233985435',
              child: InkWell(
                  onTap: () {
                    launch(
                        'https://www.facebook.com/profile.php?id=100076233985435');
                  },
                  child: SvgPicture.asset(
                    'assets/facebook.svg',
                    height: 32.07,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
