// ignore_for_file: unused_local_variable

import 'package:url_launcher/url_launcher.dart';

class Connect {
  // Alaa
  static connectWhatsUpAlaa() async {
    Uri whatsUpAlaa = Uri.parse('https://wa.me/201123884783');
    launchUrl(whatsUpAlaa, mode: LaunchMode.externalApplication);
  }

  static callAlaa() async {
    Uri alaaPhonNumber = Uri.parse('tel:+20-109-527-6311');
    launchUrl(alaaPhonNumber);
  }

  static connectAmgadWhatsUp() async {
    Uri whatsUpAmgad = Uri.parse('https:/wa.me.201276533213');
    launchUrl(whatsUpAmgad);
  }

  static callAmgad() async {
    Uri amgadPhon = Uri.parse('tel:+20-127-653-3213');
    launchUrl(amgadPhon);
  }

  static lunchCustomUrl(String url) async {
    Uri link = Uri.parse(url);
    if (await canLaunchUrl(link)) {
      await launchUrl(link, mode: LaunchMode.inAppWebView);
    } else {
      throw 'stit not found $url';
    }
  }

  static lunchEmail() async {
    Uri link = Uri.parse('mailto:amgonemilwork@gmail.com');
    if (await canLaunchUrl(link)) {
      await launchUrl(link, mode: LaunchMode.externalApplication);
    } else {
      throw 'email not found $link';
    }
  }

  static lucncLocaion() async {
    String lat = '25.8904';
    String leg = '86.9023';
  }
}
/*
 _launchWhatsapp() async {
                        var whatsapp = "20 112 388 4783";
                        var whatsappAndroid = Uri.parse(
                            "whatsapp://send?phone=$whatsapp&text=hello");
                        if (await canLaunchUrl(whatsappAndroid)) {
                          await launchUrl(whatsappAndroid,
                              mode: LaunchMode.externalApplication);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  "WhatsApp is not installed on the device"),
                            ),
                          );
                        }
                      }
*/