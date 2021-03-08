import 'package:flutter/material.dart';
import 'package:portfolio/About.dart';
import 'package:portfolio/AwardsInfo.dart';
import 'package:portfolio/ContactInfo.dart';
import 'package:portfolio/ProjectsInfo.dart';
import 'package:portfolio/SkillsInfo.dart';
import 'package:portfolio/info.dart';
import 'package:portfolio/EducationInfo.dart';
import 'package:universal_io/io.dart';

Info info = Info();

class PortfolioPage extends StatefulWidget {
  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  ScrollController _scrollController = ScrollController();
  bool _education = true, _skills = false, _projects = false, _awards = false;
  Widget _currentSelectedWidgt = About();
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    if (Platform.isWindows || Platform.isMacOS) {
      return SafeArea(
        child: Scaffold(
          body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.23,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                color: Color(0xFF13161D),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.deepPurple[700],
                            width: 5,
                          ),
                        ),
                        child: const CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage('images/DP.jpg'),
                        ),
                      ),
                      const SizedBox(height: 50),
                      Container(
                        height: 70,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: currentIndex == 0
                                ? Colors.indigo
                                : Color(0xFF13161D),
                            borderRadius: BorderRadius.circular(15)),
                        child: ListTile(
                          onTap: () {
                            if (_currentSelectedWidgt != About())
                              setState(() {
                                _currentSelectedWidgt = About();
                                currentIndex = 0;
                              });
                          },
                          leading: Image.asset(
                            currentIndex == 0
                                ? 'icons/home-fill.png'
                                : 'icons/home-line.png',
                            color: Colors.white,
                            width: 30,
                            height: 30,
                          ),
                          title: Text(
                            'ABOUT',
                            style: info.style
                                .copyWith(fontSize: 20, color: Colors.white),
                          ),
                          trailing: currentIndex == 0
                              ? const Icon(Icons.arrow_forward,
                                  color: Colors.white)
                              : const SizedBox(),
                        ),
                      ),
                      Container(
                        height: 70,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: currentIndex == 1
                                ? Colors.indigo
                                : Color(0xFF13161D),
                            borderRadius: BorderRadius.circular(15)),
                        child: ListTile(
                          onTap: () {
                            if (_currentSelectedWidgt != EducationInfo())
                              setState(() {
                                _currentSelectedWidgt = EducationInfo();
                                currentIndex = 1;
                              });
                          },
                          leading: Image.asset(
                            currentIndex == 1
                                ? 'icons/book-fill.png'
                                : 'icons/book-line.png',
                            color: Colors.white,
                            width: 30,
                            height: 30,
                          ),
                          title: Text(
                            'EDUCATION',
                            style: info.style
                                .copyWith(fontSize: 20, color: Colors.white),
                          ),
                          trailing: currentIndex == 1
                              ? const Icon(Icons.arrow_forward,
                                  color: Colors.white)
                              : const SizedBox(),
                        ),
                      ),
                      Container(
                        height: 70,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: currentIndex == 2
                                ? Colors.indigo
                                : Color(0xFF13161D),
                            borderRadius: BorderRadius.circular(15)),
                        child: ListTile(
                          onTap: () {
                            if (_currentSelectedWidgt != ExperienceInfo())
                              setState(() {
                                _currentSelectedWidgt = ExperienceInfo();
                                currentIndex = 2;
                              });
                          },
                          leading: Image.asset(
                            currentIndex == 2
                                ? 'icons/bank-card-fill.png'
                                : 'icons/bank-card-line.png',
                            color: Colors.white,
                            width: 30,
                            height: 30,
                          ),
                          title: Text(
                            'EXPERIENCE',
                            style: info.style
                                .copyWith(fontSize: 20, color: Colors.white),
                          ),
                          trailing: currentIndex == 2
                              ? const Icon(Icons.arrow_forward,
                                  color: Colors.white)
                              : const SizedBox(),
                        ),
                      ),
                      Container(
                        height: 70,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: currentIndex == 3
                                ? Colors.indigo
                                : Color(0xFF13161D),
                            borderRadius: BorderRadius.circular(15)),
                        child: ListTile(
                          onTap: () {
                            if (_currentSelectedWidgt != Projects())
                              setState(() {
                                currentIndex = 3;
                                _currentSelectedWidgt = Projects();
                              });
                          },
                          leading: Image.asset(
                            currentIndex == 3
                                ? 'icons/file-copy-2-fill.png'
                                : 'icons/file-copy-2-line.png',
                            color: Colors.white,
                            width: 30,
                            height: 30,
                          ),
                          title: Text(
                            'PROJECTS',
                            style: info.style
                                .copyWith(fontSize: 20, color: Colors.white),
                          ),
                          trailing: currentIndex == 3
                              ? const Icon(Icons.arrow_forward,
                                  color: Colors.white)
                              : const SizedBox(),
                        ),
                      ),
                      Container(
                        height: 70,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: currentIndex == 4
                                ? Colors.indigo
                                : Color(0xFF13161D),
                            borderRadius: BorderRadius.circular(15)),
                        child: ListTile(
                          onTap: () {
                            if (_currentSelectedWidgt != CertificationsInfo())
                              setState(() {
                                currentIndex = 4;
                                _currentSelectedWidgt = CertificationsInfo();
                              });
                          },
                          leading: Image.asset(
                            currentIndex == 4
                                ? 'icons/file-text-fill.png'
                                : 'icons/file-text-line.png',
                            color: Colors.white,
                            width: 30,
                            height: 30,
                          ),
                          title: Text('CERTIFICATIONS',
                              style: info.style
                                  .copyWith(fontSize: 19, color: Colors.white)),
                          trailing: currentIndex == 4
                              ? const Icon(Icons.arrow_forward,
                                  color: Colors.white)
                              : const SizedBox(),
                        ),
                      ),
                      Container(
                        height: 70,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: currentIndex == 5
                                ? Colors.indigo
                                : Color(0xFF13161D),
                            borderRadius: BorderRadius.circular(15)),
                        child: ListTile(
                          onTap: () {
                            if (_currentSelectedWidgt != Awards())
                              setState(() {
                                currentIndex = 5;
                                _currentSelectedWidgt = Awards();
                              });
                          },
                          leading: Image.asset(
                            currentIndex == 5
                                ? 'icons/medal-2-fill.png'
                                : 'icons/medal-2-line.png',
                            color: Colors.white,
                            width: 30,
                            height: 30,
                          ),
                          title: Text(
                            'AWARDS',
                            style: info.style
                                .copyWith(fontSize: 20, color: Colors.white),
                          ),
                          trailing: currentIndex == 5
                              ? const Icon(Icons.arrow_forward,
                                  color: Colors.white)
                              : const SizedBox(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.77,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: Platform.isAndroid || Platform.isIOS
                        ? EdgeInsets.symmetric(horizontal: 10)
                        : EdgeInsets.symmetric(horizontal: 100, vertical: 100),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AnimatedSwitcher(
                            transitionBuilder:
                                (Widget child, Animation<double> animation) =>
                                    SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(0, 1),
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            ),
                            //         ScaleTransition(
                            //   child: child,
                            //   scale: animation,
                            // ),
                            duration: Duration(milliseconds: 200),
                            child: _currentSelectedWidgt,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    } else
      return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Scrollbar(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Contact(),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                                      (states) => Colors.deepPurple),
                            ),
                            onPressed: () {
                              setState(() {
                                _education = true;
                                _skills = false;
                                _projects = false;
                                _awards = false;
                              });
                            },
                            child: Text(
                              'EDUCATION',
                              style: info.style,
                            ),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                                      (states) => Colors.deepPurple),
                            ),
                            onPressed: () {
                              setState(() {
                                _education = false;
                                _skills = true;
                                _projects = false;
                                _awards = false;
                              });
                            },
                            child: Text(
                              'SKILLS',
                              style: info.style,
                            ),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                                      (states) => Colors.deepPurple),
                            ),
                            onPressed: () {
                              setState(() {
                                _education = false;
                                _skills = false;
                                _projects = true;
                                _awards = false;
                              });
                            },
                            child: Text(
                              'PROJECTS',
                              style: info.style,
                            ),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                                      (states) => Colors.deepPurple),
                            ),
                            onPressed: () {
                              setState(() {
                                _education = false;
                                _skills = false;
                                _projects = false;
                                _awards = true;
                              });
                            },
                            child: Text(
                              'AWARDS',
                              style: info.style,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: Platform.isAndroid
                            ? EdgeInsets.symmetric(horizontal: 10)
                            : EdgeInsets.symmetric(horizontal: 100),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 50),
                          child: Column(
                            children: [
                              Visibility(
                                  visible: _education, child: Education()),
                              Visibility(visible: _skills, child: Skills()),
                              Visibility(visible: _projects, child: Projects()),
                              Visibility(visible: _awards, child: Awards()),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Positioned(
              //   left: 0,
              //   right: 0,
              //   top: 10,
              //   child: AnimatedBuilder(
              //     animation: _animationController,
              //     builder: (context, child) => Opacity(
              //       opacity: _opacityTween.value,
              //       child: RotatedBox(
              //         quarterTurns: 4,
              //         child: SizedBox(
              //           width: MediaQuery.of(context).size.width * 0.3,
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //             children: [
              //               ElevatedButton(
              //                 style: ButtonStyle(
              //                   backgroundColor:
              //                       MaterialStateProperty.resolveWith(
              //                           (states) => Colors.deepPurple),
              //                 ),
              //                 onPressed: () {
              //                   setState(() {
              //                     _education = true;
              //                     _skills = false;
              //                     _projects = false;
              //                     _awards = false;
              //                   });
              //                   // _pageController.jumpToPage(0);
              //                   // scrollTo(0);
              //                 },
              //                 child: Text(
              //                   'EDUCATION',
              //                   style: info.style,
              //                 ),
              //               ),
              //               ElevatedButton(
              //                 style: ButtonStyle(
              //                   backgroundColor:
              //                       MaterialStateProperty.resolveWith(
              //                           (states) => Colors.deepPurple),
              //                 ),
              //                 onPressed: () {
              //                   setState(() {
              //                     _education = false;
              //                     _skills = true;
              //                     _projects = false;
              //                     _awards = false;
              //                   });
              //                   // _pageController.jumpToPage(1);
              //                   // scrollTo(screenSize.height * 1.3);
              //                 },
              //                 child: Text(
              //                   'SKILLS',
              //                   style: info.style,
              //                 ),
              //               ),
              //               ElevatedButton(
              //                 style: ButtonStyle(
              //                   backgroundColor:
              //                       MaterialStateProperty.resolveWith(
              //                           (states) => Colors.deepPurple),
              //                 ),
              //                 onPressed: () {
              //                   setState(() {
              //                     _education = false;
              //                     _skills = false;
              //                     _projects = true;
              //                     _awards = false;
              //                   });
              //                   // _pageController.jumpToPage(2);
              //                   // scrollTo(screenSize.height * 2.1);
              //                 },
              //                 child: Text(
              //                   'PROJECTS',
              //                   style: info.style,
              //                 ),
              //               ),
              //               ElevatedButton(
              //                 style: ButtonStyle(
              //                   backgroundColor:
              //                       MaterialStateProperty.resolveWith(
              //                           (states) => Colors.deepPurple),
              //                 ),
              //                 onPressed: () {
              //                   setState(() {
              //                     _education = false;
              //                     _skills = false;
              //                     _projects = false;
              //                     _awards = true;
              //                   });
              //                   // _pageController.jumpToPage(3);
              //                   // scrollTo(
              //                   //     _scrollController.position.maxScrollExtent);
              //                 },
              //                 child: Text(
              //                   'AWARDS',
              //                   style: info.style,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      );
  }
}
