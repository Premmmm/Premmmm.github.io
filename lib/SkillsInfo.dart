import 'package:flutter/material.dart';
import 'package:portfolio/info.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:universal_io/io.dart';

Info info = Info();

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SkillsInfo(),
        SizedBox(height: 50),
        CertificationsInfo(),
      ],
    );
  }
}

class CertificationsInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'CERTIFICATIONS',
            style: info.style.copyWith(
                fontSize: Platform.isWindows || Platform.isMacOS ? 50 : 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (int i = 0; i < info.coursesAndCredentials.length; i++)
                CourseNameLinkWidget(i: i)
            ],
          )
        ],
      ),
    );
  }
}

class CourseNameLinkWidget extends StatelessWidget {
  final int i;
  CourseNameLinkWidget({this.i});
  _launchURL(String _url) async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                info.coursesAndCredentials[i].name.toUpperCase(),
                style: info.style.copyWith(
                    fontSize: Platform.isWindows || Platform.isMacOS ? 25 : 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[850]),
              ),
              Spacer(),
              Text(
                info.coursesAndCredentials[i].duration,
                style: info.style.copyWith(
                  fontSize: Platform.isWindows || Platform.isMacOS ? 18 : 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ],
          ),
          Text(
            info.coursesAndCredentials[i].organization,
            style: info.style.copyWith(
              fontSize: Platform.isWindows || Platform.isMacOS ? 18 : 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          TextButton(
            onPressed: () {
              _launchURL(info.coursesAndCredentials[i].credentialLink);
            },
            child: Text(
              'View Credential',
              style: info.style,
            ),
          ),
        ],
      ),
    );
  }
}

class SkillsInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'SKILLS',
            style: info.style.copyWith(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent),
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            children: [
              for (int i = 0; i < info.skillDetails.length; i++)
                _SkillDetail(
                  i: i,
                )
            ],
          )
        ],
      ),
    );
  }
}

class _SkillDetail extends StatelessWidget {
  final int i;
  _SkillDetail({this.i});
  @override
  Widget build(BuildContext context) {
    final _info = info.skillDetails[i];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(_info.name, style: info.style.copyWith(fontSize: 14)),
        SizedBox(
          height: 2,
        ),
        Row(
          children: [
            SizedBox(
              width: Platform.isAndroid || Platform.isIOS
                  ? MediaQuery.of(context).size.width * 0.75
                  : MediaQuery.of(context).size.width * 0.3,
              child: LinearProgressIndicator(
                value: _info.percentage,
                minHeight: 2,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text('${_info.percentage * 100} %', style: info.style),
          ],
        ),
      ],
    );
  }
}
