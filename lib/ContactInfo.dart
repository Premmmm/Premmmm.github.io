import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:portfolio/info.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:universal_io/io.dart';

Info info = Info();

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.deepPurple[300],
        border: Border.all(color: Colors.deepPurple[400], width: 3),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'S ',
                      style: info.style.copyWith(
                        color: Colors.deepPurple[800],
                        fontSize:
                            Platform.isAndroid || Platform.isIOS ? 35 : 50,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: 'PREM RAJ',
                      style: info.style.copyWith(
                        color: Colors.white,
                        fontSize:
                            Platform.isAndroid || Platform.isIOS ? 35 : 50,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ]),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    _SignInButtonWidget(
                      button: Buttons.Email,
                      url: 'mailto:premraj37.pr@gmail.com',
                    ),
                    const SizedBox(width: 8),
                    _SignInButtonWidget(
                      button: Buttons.GitHub,
                      url: 'https://github.com/Premmmm?tab=repositories',
                    ),
                    const SizedBox(width: 8),
                    _SignInButtonWidget(
                      button: Buttons.LinkedIn,
                      url: 'https://www.linkedin.com/in/prem-raj-16042711/',
                    ),
                    const SizedBox(width: 8),
                    _SignInButtonWidget(
                      button: Buttons.Twitter,
                      url: 'https://twitter.com/prem___raj',
                    ),
                    const SizedBox(width: 8),
                    _SignInButtonWidget(
                      button: Buttons.Facebook,
                      url:
                          'https://www.facebook.com/profile.php?id=100007033329167',
                    ),
                    SizedBox(width: 8),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Setting small goals will lead to a great victory !',
                  style: info.style.copyWith(
                    color: Colors.white,
                    fontSize: Platform.isAndroid || Platform.isIOS ? 14 : 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: Platform.isAndroid || Platform.isIOS
                ? 1
                : MediaQuery.of(context).size.width * 0.2,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.deepPurple[700],
                width: 5,
              ),
            ),
            child: CircleAvatar(
              radius: Platform.isAndroid || Platform.isIOS ? 30 : 100,
              backgroundImage: AssetImage('images/DP.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: unused_element
class _SignInButtonWidget extends StatelessWidget {
  final button;
  final String url;
  _SignInButtonWidget({this.button, this.url});

  _launchURL(String _url) async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SignInButton(
      button,
      elevation: 8,
      shape: CircleBorder(),
      padding: EdgeInsets.all(5),
      mini: true,
      onPressed: () {
        _launchURL(url);
      },
    );
  }
}
