import 'dart:async';
import 'dart:math';

import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_sticky_widgets/flutter_sticky_widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:web_portofolio/application/home/bloc/home_bloc.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:web_portofolio/injector.dart';
import 'package:web_portofolio/presentation/resources/colors.dart';
import 'package:web_portofolio/presentation/resources/commons/font_names.dart';
import 'package:web_portofolio/presentation/utils/fonts_text.dart';
import 'package:web_portofolio/presentation/utils/gfont_text.dart';
import '../../resources/commons/app_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isStick = false;

  double? callback;

  int currentIndex = 0;

  AutoScrollController scrollController = AutoScrollController();

  HomeBloc homeBloc = sl<HomeBloc>();

  @override
  void initState() {
    homeBloc.add(const HomeEvent.initBiner());

    Timer.periodic(const Duration(seconds: 5), (timer) {
      homeBloc.add(const HomeEvent.changeBiner());
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List sections = [
      {'sections': about(), 'key': const ValueKey('about'), 'title': 'About'},
      {
        'sections': skills(),
        'key': const ValueKey('skills'),
        'title': 'Skills'
      },
      {
        'sections': projects(),
        'key': const ValueKey('projects'),
        'title': 'Projects'
      },
      {
        'sections': contact(),
        'key': const ValueKey('contact'),
        'title': 'Contact'
      },
    ];

    return Scaffold(
      body: StickyContainer(
        stickyChildren: [stickyWidget(sections)],
        child: ListView(
          controller: scrollController,
          children: [
            const SizedBox(height: 50),
            Center(
                child: Text(ResponsiveBreakpoints.of(context).breakpoint.name ??
                    "Unknown")),
            overview(),
            ...List.generate(
                sections.length,
                (index) => AutoScrollTag(
                      key: sections[index]['key'],
                      controller: scrollController,
                      index: index,
                      child: sections[index]['sections'],
                    )),
            const SizedBox(
              height: 1000,
            )
          ],
        ),
      ),
    );
  }

  Widget contact() {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      color: Colors.green,
      height: 300,
      width: double.infinity,
    );
  }

  Widget projects() {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      color: Colors.blue,
      height: 300,
      width: double.infinity,
    );
  }

  Widget skills() {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      color: Colors.red,
      height: 300,
      width: double.infinity,
    );
  }

  Widget about() {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      color: Colors.amber,
      height: 300,
      width: double.infinity,
    );
  }

  Widget overview() {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [bioOverview(), pictureOverview()],
      ),
    );
  }

  Widget bioOverview() {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            animatedText(
              speed: const Duration(milliseconds: 1500),
              content: "Hi,",
              fontWeight: FontWeight.w600,
              fontSize: 30,
              color: ColorPallete.blue002BC4,
            ),
            animatedText(
              content: "I’m Muhamad Duta Chandra",
              fontWeight: FontWeight.w700,
              fontSize: 50,
              height: 68 / 50,
              color: ColorPallete.black252525,
            ),
            animatedText(
                content: "Software Developer",
                fontWeight: FontWeight.w600,
                height: 33 / 24,
                fontSize: 24,
                color: ColorPallete.black252525),
            animatedText(
                content:
                    "Skilled and Passionate Software Developer from Indonesia, I prioritize clear communication and i'm committed to delivering high-quality results to the Apps i build.",
                speed: const Duration(milliseconds: 50),
                color: ColorPallete.black252525,
                fontSize: 20,
                fontWeight: FontWeight.w400,
                height: 33 / 24),
          ],
        ),
      ),
    ));
  }

  Widget animatedText(
      {String? content,
      FontWeight? fontWeight,
      double? height,
      double? fontSize,
      Color? color,
      Duration? speed}) {
    return AnimatedTextKit(
      animatedTexts: [
        ColorizeAnimatedText(content!,
            speed: speed ?? Duration(milliseconds: 200),
            textStyle: textFonts(
                fontWeight: fontWeight,
                height: height,
                fontSize: fontSize,
                color: color,
                fontFamily: FontNames.openSans),
            colors: [
              color!,
              Colors.grey,
              Colors.white,
            ])
      ],
      isRepeatingAnimation: false,
    );
  }

  Widget pictureOverview() {
    return SizedBox(
      width: 600,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 520,
            height: 520,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFE9E9E9), Color(0xFFC8C8C8)])),
          ),
          Container(
            width: 500,
            height: 500,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(AppImages.profile))),
          ),
        ],
      ),
    );
  }

  StickyWidget stickyWidget(sections) {
    return StickyWidget(
        initialPosition: StickyPosition(top: 0.01, right: 0),
        finalPosition: StickyPosition(top: 0, right: 0),
        callback: (p0) {
          setState(() {
            callback = p0;
            if (p0 == 0) {
              isStick = true;
            } else {
              isStick = false;
            }
          });
        },
        controller: scrollController,
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: appBarWidget(sections)));
  }

  Widget appBarWidget(List sections) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: isStick
            ? [
                BoxShadow(
                  offset: const Offset(0, 4),
                  blurRadius: 4,
                  spreadRadius: 0,
                  color: Colors.black.withOpacity(0.25),
                )
              ]
            : null,
        color: isStick ? ColorPallete.whiteEAEBEA : Colors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 5,
            child: BlocBuilder<HomeBloc, HomeState>(
              bloc: homeBloc,
              builder: (context, state) {
                return GFontText(
                    content: state.hex,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: ColorPallete.black252525,
                    fontFamily: FontNames.openSans);
              },
            ),
          ),
          Expanded(
            flex: 5,
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                ...List.generate(
                  sections.length,
                  (index) => GestureDetector(
                    onTap: () {
                      scrollController.scrollToIndex(index,
                          preferPosition: AutoScrollPosition.begin,
                          duration: const Duration(milliseconds: 500));
                    },
                    child: GFontText(
                        content: sections[index]['title'],
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: ColorPallete.black252525,
                        fontFamily: FontNames.openSans),
                  ),
                ),
                AnimatedToggleSwitch<int>.rolling(
                  height: 35,
                  current: currentIndex,
                  values: const [0, 1],
                  onChanged: (i) {
                    setState(() => currentIndex = i);
                  },
                  styleBuilder: (i) => ToggleStyle(
                      indicatorColor: i.isEven == true
                          ? Colors.orange.withOpacity(.3)
                          : Colors.blue.withOpacity(.3)),
                  iconBuilder: rollingIconBuilder,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget rollingIconBuilder(int? value, bool foreground) {
    return Icon(
      iconDataByValue(value),
      size: 18,
      color: value == 0 ? Colors.deepOrange : Colors.lightBlue,
    );
  }

  IconData iconDataByValue(int? value) {
    IconData? data;
    switch (value) {
      case 0:
        data = Icons.light_mode_rounded;
        break;
      case 1:
        data = Icons.dark_mode_rounded;
        break;
      default:
        data = Icons.light_mode_rounded;
    }
    return data;
  }
}
