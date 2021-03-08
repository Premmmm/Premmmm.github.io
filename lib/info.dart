import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Info {
  TextStyle style = GoogleFonts.montserrat();

  List<LaunchSite> contactDetails = [
    LaunchSite(
      'Mail',
      'mailto:premraj37.pr@gmail.com',
      'icons/mail-fill.png',
      Colors.red,
    ),
    LaunchSite(
      'LinkedIn',
      'https://www.linkedin.com/in/prem-raj-16042711/',
      'icons/linkedin-fill.png',
      Colors.blue[700],
    ),
    LaunchSite(
      'GitHub Repository',
      'https://github.com/Premmmm/',
      'icons/github-fill.png',
      Colors.black,
    ),
    LaunchSite(
      'Twitter',
      'https://twitter.com/prem___raj',
      'icons/twitter-fill.png',
      Colors.blue[700],
    ),
    LaunchSite(
      'Facebook',
      'https://www.facebook.com/profile.php?id=100007033329167',
      'icons/facebook-fill.png',
      Colors.blue[800],
    ),
    LaunchSite(
      'Instagram',
      'https://www.instagram.com/prem__raj/',
      'icons/instagram-fill.png',
      Colors.redAccent[400],
    ),
    LaunchSite(
      'WhatsApp',
      "https://api.whatsapp.com/send/?phone=918754635280&text&app_absent=0",
      'icons/whatsapp-fill.png',
      Colors.green[700],
    ),
  ];

  List<SkillDetails> skillDetails = [
    SkillDetails(
      name: 'Flutter & Dart',
      percentage: 90 / 100,
    ),
    SkillDetails(
      name: 'Python',
      percentage: 90 / 100,
    ),
    SkillDetails(
      name: 'C',
      percentage: 80 / 100,
    ),
    SkillDetails(
      name: 'C++',
      percentage: 60 / 100,
    ),
    SkillDetails(
      name: 'Embedded C ( Atmega )',
      percentage: 90 / 100,
    ),
    SkillDetails(
      name: 'OpenCV',
      percentage: 70 / 100,
    ),
    SkillDetails(
      name: 'TypeWriting ( Junior Grade )',
      percentage: 90 / 100,
    ),
  ];

  List<Achievements> technicalAchievements = [
    Achievements(
        achievement: 'Best UI/UX Ease-The-Error 1.0  Hackathon  ( 2020 )',
        color: Colors.yellow[700]),
    Achievements(
        achievement: 'Winners in SVCE QuarantBuster ( 2020 )',
        color: Colors.yellow[700]),
    Achievements(
        achievement: 'Winners in SVCE Make - a - Thon 2.0 ( 2020 )',
        color: Colors.yellow[700]),
    Achievements(
        achievement: 'Winners in SVCE Make - a - Thon 1.0 ( 2019 )',
        color: Colors.yellow[700]),
    Achievements(
        achievement: 'Winners in Project Expo IETE Innovation Meet ( 2019 )',
        color: Colors.yellow[700]),
    Achievements(
        achievement: 'Winners in Project Expo IETE Zonal Seminar ( 2019 )',
        color: Colors.yellow[700]),
    Achievements(
        achievement: "Winners in Project Expo SHRISHTI'19 ( 2019 )",
        color: Colors.yellow[700]),
    Achievements(
        achievement: "Runners Up Speed - o - Track SHRISHTI'19 ( 2019 )",
        color: Color(0xFFC0C0C0)),
  ];

  List<Achievements> extraCurricularAchievements = [
    Achievements(
        achievement:
            "Runners Up Anna University Mens Badminton Inter Zone Tournament ( 2018 )",
        color: Color(0xFFC0C0C0)),
    Achievements(
        achievement:
            "Runners Up Anna University Mens Badminton Inter Zone Tournament ( 2017 )",
        color: Color(0xFFC0C0C0)),
  ];

  List<ProjectAndDetails> projectDetails = [
    ProjectAndDetails(
        name: 'Filled Farm - Farmers App with Flutter',
        duration: '1 Week',
        url: 'https://github.com/Premmmm/Filled-Farm',
        description:
            'Filled farm is a mobile/web application which acts as an interface between farmers and vendors directly without the need for middlemen. It comes wIth a stunning UI, easy access yet efficient features and a seamless user experience. '),
    ProjectAndDetails(
      name: '42 EDU - Online Learning App with Flutter',
      duration: '2 Weeks',
      url: 'https://github.com/Premmmm/42-EDU-Online-Learning-Platform',
      description:
          "42 EDU is an online learning app made with flutter with sole purpose of integrating in app course videos, in app official documentation and in app youtube tutorials, everything integrated within a single platform for students.",
    ),
    ProjectAndDetails(
      name: 'Foody - Restaurant App with Flutter',
      duration: '3 Weeks',
      url: 'https://github.com/Premmmm/Foody-Restaurant-App',
      description:
          "Foody is an restaurant app with both customer and manager login. Customer provides features like ordering and realtime order status updates. Manager login provides features like realtime order notificatins and order acceptance and status updation.",
    ),
    ProjectAndDetails(
        name: 'Cricket Auction App with Flutter ( Published in Play Store )',
        duration: '1 Month',
        url:
            'https://play.google.com/store/apps/details?id=com.prem.cricketauction',
        description:
            'This is a cricket auction game where there will be two logins manager and contestants. The manager controlls the room creation, dataset selection and player selection. Contestants can join the room create teams and start bidding. The bidding is automatic with realtime updates and an amazing team description view. The manager can decide to sell the player to the team or to send him the unsold list. The manager can also select the winners.'),
    ProjectAndDetails(
      name: 'Mask Check Geofencing App with Flutter',
      duration: '2 Weeks',
      url: 'https://github.com/Premmmm/Mask-Check-Flutter',
      description:
          "During the initial times of COVID'19 TN government wanted an app which geofences and checks whether people are wearing a mask, this app does that. It geofences you till a 30 m radius, if exceded the user have to open the app and click a selfie, the app with the help of TfLite package will check whether the person in the selfie is wearing a mask or not.",
    ),
    ProjectAndDetails(
      name: 'COVID’19 Tracker App with Flutter',
      duration: '3 Weeks',
      url: 'https://github.com/Premmmm/COVID-19-Tracker-Flutter',
      description:
          'This app has two screens, Local Data Screen and World Data Screen. Local Data screen dispays INDIAN data split into Confirmed cases, Active cases, Recovered Cases and Deceased Cases for every state and also the OverAll count. The world Data consists of the Over All Count and an option to compare side by side with any country with INDIA. The user has to input the country name and it will be compared with INDIA',
    ),
    ProjectAndDetails(
        name: 'Women Safety Coat',
        duration: '3 Weeks',
        description:
            'This project was done with consern for the safety of INDIAN women in mind. There is an camera and a PIR sensor setup at the back of the trench coat. With the help of the mobile app the woman can toggle Lone Mode and Crowd Mode. When Lone Mode is toggled, the PIR sensor checks for any anonymous person behind, if anyone is behind the camera turns on and captures the face this done with OpenCV. In case if the anonymous guy touches the women, the coat is covered with copper tape which is connected to a supercharged capasitor, the woman will have a toggle switch under her sleve she can turn it on to make the circuit go live. We also made a 3D printed heel which has a PiezoElectric sensor, which when tapped with a certain pattern sends a broadcast alert message with the current location to her parents.'),
    ProjectAndDetails(
      name: 'Medi Box',
      duration: '1 Week',
      description:
          "Medi box is an automatic medicine reminder, which opens automatically and hilights which medicine should be consumed at that particular time. It is achieved with the help of Node MCU with NTP ( Network Time Protocol ), servo motors, buzzer and a few LEDs",
    ),
    ProjectAndDetails(
      name: 'First Response Drone ( FRD )',
      duration: '1 Month',
      description:
          "Conventional Emergency Response vehicles have been our main preference for many years, but the main drawback is the wait time. This is where FRD's come in, FRD's substitute for Medical, Fire and Rescue and Police Departments. It has a Peltier Module for medicine transportation, Air Pistol and Camera for monitoring, a container filled with Sodium Bi-Carbonate to extinguish fire.",
    )
  ];

  List<EducationalInfo> educationalInfo = [
    EducationalInfo(
        name: 'Sri Venkateswara College Of Engineering',
        board: null,
        standard: 'B.E. Electronics And Communication Engineering',
        marks: '8.74/10  (Till 6th Semester)',
        percentage: '87.4 %',
        passout: '2021 ( Expected )',
        location: 'Sriperumbudur, India'),
    EducationalInfo(
        name: 'Jawahar Higher Secondary School',
        board: 'State Board',
        standard: 'Class 12',
        marks: '1064/1200',
        percentage: '88.58 %',
        passout: '2017',
        location: 'Ashok Nagar, Chennai, India'),
    EducationalInfo(
        name: 'Jawahar Vidyalaya Senior Secondary School',
        board: 'Central Board Of Secondary Educatin',
        standard: 'Class 10',
        marks: '7.6/10',
        percentage: '76 %',
        passout: '2015',
        location: 'Ashok Nagar, Chennai, India'),
  ];

  List<CourseAndCredentials> coursesAndCredentials = [
    CourseAndCredentials(
      name: 'Complete Flutter Development Bootcamp',
      organization: 'UDEMY',
      duration: '8 Weeks',
      credentialLink:
          'https://udemy-certificate.s3.amazonaws.com/image/UC-f2824c9c-1cfd-488c-989a-d8cfe09b8596.jpg',
    ),
    CourseAndCredentials(
      name: 'Complete DeepLearning Bootcamp A-Z',
      duration: '6 Weeks',
      organization: 'UDEMY',
      credentialLink:
          'https://drive.google.com/file/d/1v562uBlTbqBF_Fabvu-SWOTLcWT8SSs_/view?usp=sharing',
    ),
    CourseAndCredentials(
      name: 'Complete Python Bootcamp A-Z',
      duration: '6 Weeks',
      organization: 'UDEMY',
      credentialLink:
          'https://udemy-certificate.s3.amazonaws.com/image/UC-6DP6EZON.jpg',
    ),
    CourseAndCredentials(
        name: 'Kaizen Robotica Level 2',
        duration: '5 Weeks',
        organization: 'LEMA LABS',
        credentialLink:
            'https://drive.google.com/file/d/1Zu_IFn40F-o5tssd2RzfAuQILL9_lH-0/view?usp=sharing'),
    CourseAndCredentials(
      name: 'Kaizen Robotics Level 1',
      duration: '5 Weeks',
      organization: 'LEMA LABS',
      credentialLink:
          'https://drive.google.com/file/d/1Ll2o7frE187jp9R5QIZJwf-hCUWGolJS/view?usp=sharing',
    ),
  ];

  List<Experience> experience = [
    Experience(
        name: 'Mentor',
        organization: 'Robotics and Artificial Intelligence Club SVCE',
        duration: 'June 2020 - June 2021',
        description:
            'As a mentor we train students on basics of programming, embedded systems, robotics, app development etc.'),
    Experience(
      name: 'IoT Intern',
      organization: 'Experts HUB',
      duration: 'December 2019',
      description:
          'As an IOT Intern, I learnt about the functioning of the Node MCU Micro Controller and ESP8266 Internet module ,learnt about various databases such as FIREBASE, UBIDOTS, ADAFRUIT etc, I also learnt app development, and worked on a project - Garbage Monitoring System withIOT.',
    ),
    Experience(
      name: 'Maintenance Of Rolling Stock Intern',
      organization: 'CMRL',
      duration: 'May 2019 - June 2019',
      description:
          'As an Intern, I learnt about the working of rolling stock, hourly maintenance of rolling stock, communications between carts',
    ),
    Experience(
      name: 'Inplant Training on Telecommunication',
      organization: 'BSNL',
      duration: 'December 2018',
      description:
          'I learnt about how BSNL telecom works as an organization, how bands are effectively utilized for both network and voice communication and visited various sectins of BSNL communication center',
    )
  ];
}

class LaunchSite {
  final toolbar;
  final url;
  final image;
  final color;

  LaunchSite(this.toolbar, this.url, this.image, this.color);
}

class SkillDetails {
  final name;
  final percentage;

  SkillDetails({this.name, this.percentage});
}

class ProjectAndDetails {
  final name;
  final description;
  final duration;
  final url;
  ProjectAndDetails({this.name, this.url, this.description, this.duration});
}

class CourseAndCredentials {
  final name;
  final duration;
  final organization;
  final credentialLink;
  CourseAndCredentials(
      {this.name, this.credentialLink, this.duration, this.organization});
}

class EducationalInfo {
  final name;
  final board;
  final standard;
  final marks;
  final passout;
  final percentage;
  final location;
  EducationalInfo(
      {this.name,
      this.board,
      this.marks,
      this.percentage,
      this.standard,
      this.passout,
      this.location});
}

class Experience {
  final name;
  final duration;
  final organization;
  final description;
  Experience({this.name, this.organization, this.duration, this.description});
}

class Achievements {
  final String achievement;
  final Color color;
  Achievements({this.color, this.achievement});
}
