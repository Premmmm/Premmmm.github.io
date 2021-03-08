import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/info.dart';

Info info = Info();

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'S ',
                  style: info.style.copyWith(
                    color: Colors.deepPurple[800],
                    fontSize: 90,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                TextSpan(
                  text: 'PREM RAJ',
                  style: info.style.copyWith(
                    color: Colors.grey[700],
                    fontSize: 90,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ],
            ),
          ),
          _ContactDetailsWidget(),
          const SizedBox(height: 20),
          Text(
            'Flutter Developer | Embedded Systems | Robotics | IoT',
            style: info.style.copyWith(fontSize: 30, color: Colors.grey[500]),
          ),
          const SizedBox(height: 40),
          const SizedBox(
            height: 4,
            child: Divider(
              color: Colors.indigo,
              thickness: 5,
            ),
          ),
          const SizedBox(height: 40),
          Text(
            'SKILLS',
            style: info.style.copyWith(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent),
          ),
          const SizedBox(height: 40),
          _SkillsContainerWidget(),
        ],
      ),
    );
  }
}

class _SkillsContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 50,
      runSpacing: 15,
      children: [
        for (int i = 0; i < info.skillDetails.length; i++)
          _SkillNames(
            name: info.skillDetails[i].name,
          )
      ],
    );
  }
}

class _SkillNames extends StatelessWidget {
  final String name;
  const _SkillNames({
    this.name,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: info.style.copyWith(
          fontSize: 20, fontWeight: FontWeight.w600, color: Colors.grey[700]),
    );
  }
}

class _ContactDetailsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int i = 0; i < info.contactDetails.length; i++)
            _ContactDetailsIcon(
              wid: info.contactDetails[i],
            )
        ],
      ),
    );
  }
}

class _ContactDetailsIcon extends StatelessWidget {
  final LaunchSite wid;
  const _ContactDetailsIcon({
    Key key,
    this.wid,
  }) : super(key: key);

  void _launchURL() async {
    String _url = wid.url;
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      semanticContainer: false,
      child: IconButton(
        tooltip: wid.toolbar,
        onPressed: _launchURL,
        splashRadius: 3,
        icon: Image.asset(
          wid.image,
          color: wid.color,
        ),
      ),
    );
  }
}
