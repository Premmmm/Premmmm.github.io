import 'package:flutter/material.dart';

import 'package:portfolio/info.dart';
import 'package:universal_io/io.dart';

Info info = Info();

class Awards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'AWARDS',
          style: info.style.copyWith(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurpleAccent),
        ),
        const SizedBox(height: 5),
        ListTile(
          leading:
              Icon(Icons.military_tech, size: 26, color: Colors.yellow[700]),
          // Image.asset('icons/medal-2-fill.png', color: Colors.yellow[700]),
          title: Text(
            'Award Of Appreciation IETE  ( 2020 )',
            style: info.style.copyWith(
              fontSize: Platform.isWindows || Platform.isMacOS ? 20 : 14,
              color: Colors.grey[800],
            ),
          ),
        ),
        const SizedBox(height: 50),
        Text(
          'ACHIEVEMENTS',
          style: info.style.copyWith(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurpleAccent),
        ),
        const SizedBox(height: 8),
        Text(
          'TECHNICAL',
          style: info.style.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurpleAccent),
        ),
        const SizedBox(height: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < info.technicalAchievements.length; i++)
              _AchievementsInfo(
                i: i,
                type: 'technical',
              )
          ],
        ),
        const SizedBox(height: 10),
        Text(
          'EXTRACURRICULAR',
          style: info.style.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurpleAccent),
        ),
        const SizedBox(height: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < info.extraCurricularAchievements.length; i++)
              _AchievementsInfo(
                i: i,
                type: 'extraCurricular',
              )
          ],
        ),
      ],
    );
  }
}

class _AchievementsInfo extends StatelessWidget {
  final int i;
  final String type;
  _AchievementsInfo({
    this.i,
    this.type,
  });
  @override
  Widget build(BuildContext context) {
    final _info = type == 'technical'
        ? info.technicalAchievements[i]
        : info.extraCurricularAchievements[i];
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Icon(Icons.emoji_events, color: _info.color),
        //  Image.asset('icons/trophy-fill.png', color: Colors.yellow[700]),
        title: Text(
          _info.achievement,
          style: info.style.copyWith(
            fontSize: Platform.isWindows || Platform.isMacOS ? 20 : 14,
            color: Colors.grey[800],
          ),
        ),
      ),
    );
  }
}
