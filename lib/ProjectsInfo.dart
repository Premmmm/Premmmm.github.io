import 'package:flutter/material.dart';
import 'package:portfolio/EducationInfo.dart';
import 'package:universal_io/io.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'PROJECTS',
          style: info.style.copyWith(
            fontSize: Platform.isWindows || Platform.isMacOS ? 50 : 28,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurpleAccent,
          ),
        ),
        const SizedBox(height: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < info.projectDetails.length; i++)
              _ProjectDetails(
                i: i,
              )
          ],
        )
      ],
    );
  }
}

class _ProjectDetails extends StatelessWidget {
  final int i;
  _ProjectDetails({this.i});
  _launchURL(String _url) async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final _info = info.projectDetails[i];
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _info.name,
                style: info.style.copyWith(
                    fontSize: Platform.isWindows || Platform.isMacOS ? 25 : 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey[850]),
              ),
              Text(
                _info.duration,
                style: info.style.copyWith(
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: Platform.isWindows || Platform.isMacOS ? 18 : 14),
              )
            ],
          ),
          const SizedBox(height: 5),
          Text(
            'Description',
            style: info.style.copyWith(
                color: Colors.grey[700],
                fontSize: Platform.isWindows || Platform.isMacOS ? 16 : 14,
                fontStyle: FontStyle.italic),
          ),
          Text(_info.description,
              style: info.style.copyWith(
                  fontSize: Platform.isWindows || Platform.isMacOS ? 17 : 14)),
          Tooltip(
            message: 'GitHub repository',
            textStyle: info.style.copyWith(color: Colors.white),
            child: TextButton(
              onPressed: () {
                _launchURL(_info.url);
              },
              child: Text(
                'Git Repo',
                style: info.style,
              ),
            ),
          )
        ],
      ),
    );
  }
}
