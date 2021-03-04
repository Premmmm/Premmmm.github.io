import 'package:flutter/material.dart';
import 'package:portfolio/info.dart';
import 'package:universal_io/io.dart';

Info info = Info();

class Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EducationInfo(),
        SizedBox(
          height: 50,
        ),
        ExperienceInfo(),
      ],
    );
  }
}

class ExperienceInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'EXPERIENCE',
          style: info.style.copyWith(
              fontSize: Platform.isWindows || Platform.isMacOS ? 50 : 28,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurpleAccent),
        ),
        SizedBox(height: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < info.experience.length; i++)
              ExperienceDetailsWidget(
                experience: info.experience[i],
              )
          ],
        )
      ],
    );
  }
}

class ExperienceDetailsWidget extends StatelessWidget {
  final Experience experience;
  ExperienceDetailsWidget({this.experience});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                experience.name.toUpperCase(),
                style: info.style.copyWith(
                    fontSize: Platform.isWindows || Platform.isMacOS ? 25 : 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[850]),
              ),
              Text(
                experience.duration,
                style: info.style.copyWith(
                  color: Colors.deepPurpleAccent,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            experience.organization,
            style: info.style.copyWith(
                fontSize: Platform.isWindows || Platform.isMacOS ? 17 : 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800]),
          ),
          Text(experience.description,
              style: info.style.copyWith(
                  fontSize: Platform.isWindows || Platform.isMacOS ? 17 : 14)),
        ],
      ),
    );
  }
}

class EducationInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'EDUCATION',
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
            for (int i = 0; i < info.educationalInfo.length; i++)
              _EducationDetailWidget(
                i: i,
              )
          ],
        )
      ],
    );
  }
}

class _EducationDetailWidget extends StatelessWidget {
  final int i;
  _EducationDetailWidget({this.i});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                info.educationalInfo[i].name.toUpperCase(),
                style: info.style.copyWith(
                    fontSize: Platform.isWindows || Platform.isMacOS ? 25 : 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[850]),
              ),
              Spacer(),
              Text(
                info.educationalInfo[i].passout,
                style: info.style.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ],
          ),
          Text(
            info.educationalInfo[i].location.toUpperCase(),
            style: info.style.copyWith(
              fontSize: Platform.isWindows || Platform.isMacOS ? 20 : 14,
            ),
          ),
          if (info.educationalInfo[i].board != null)
            Text(
              info.educationalInfo[i].board,
              style: info.style.copyWith(
                fontSize: Platform.isWindows || Platform.isMacOS ? 20 : 14,
              ),
            ),
          Text(
            info.educationalInfo[i].standard,
            style: info.style.copyWith(
              fontSize: Platform.isWindows || Platform.isMacOS ? 17 : 14,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Marks:  ',
                style: info.style.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: Platform.isWindows || Platform.isMacOS ? 17 : 14,
                ),
              ),
              Text(
                info.educationalInfo[i].marks,
                style: info.style.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: Platform.isWindows || Platform.isMacOS ? 17 : 14,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Percentage:  ',
                style: info.style.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: Platform.isWindows || Platform.isMacOS ? 17 : 14,
                ),
              ),
              Text(
                info.educationalInfo[i].percentage,
                style: info.style.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: Platform.isWindows || Platform.isMacOS ? 17 : 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
