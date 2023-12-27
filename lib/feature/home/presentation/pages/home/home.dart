import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:flutter_sticky_widgets/flutter_sticky_widgets.dart';
import 'package:inview_notifier_list/inview_notifier_list.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:web_portofolio/injector.dart';
import 'package:web_portofolio/feature/home/presentation/bloc/home/home_bloc.dart';
import 'package:web_portofolio/feature/home/presentation/resources/colors.dart';
import 'package:web_portofolio/feature/home/presentation/resources/commons/app_svg.dart';
import 'package:web_portofolio/feature/home/presentation/resources/commons/font_names.dart';
import 'package:web_portofolio/feature/home/presentation/resources/constants.dart';
import 'package:web_portofolio/feature/home/presentation/utils/animated_content.dart';
import 'package:web_portofolio/feature/home/presentation/utils/gfont_text.dart';
import 'package:web_portofolio/feature/home/presentation/utils/responsive.dart';
import '../../resources/commons/app_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool isStick = false;

  double? callback;

  int currentIndex = 0;

  late AnimationController _iconController;
  late AnimationController _catController;

  bool isSliderOpen = false;

  AutoScrollController scrollController = AutoScrollController();

  final GlobalKey<SliderDrawerState> _sliderDrawerKey =
      GlobalKey<SliderDrawerState>();

  HomeBloc homeBloc = sl<HomeBloc>();

  int isBlogHoverItem = 0;

  int isProjectHoverItem = 0;

  List<Map<String, dynamic>> whatCanIDo = [
    {'title': 'Mobile App Development', 'logo': AppSvg.mobile},
    {'title': 'Website Development', 'logo': AppSvg.web},
  ];

  List blogsData = [
    {
      'image':
          'https://miro.medium.com/v2/resize:fill:140:140/1*OVio2KkFrS_ziifUM2iAnw.png',
      'description':
          'Hai, My name is Muhamad Duta Chandra. I am Mobile Developer from Indonesia. In this article i wan’t to share about my understanding of Flutter Version Management (FVM). I hope you like it. Introduction Flutter Version Management(FVM) is a Command Line Interface (CLI) tools to manage flutter SDK versions. The FVM…'
    },
    {
      'image':
          'https://miro.medium.com/v2/resize:fill:140:140/1*OVio2KkFrS_ziifUM2iAnw.png',
      'description':
          'Hai, My name is Muhamad Duta Chandra. I am Mobile Developer from Indonesia. In this article i wan’t to share about my understanding of Flutter Version Management (FVM). I hope you like it. Introduction Flutter Version Management(FVM) is a Command Line Interface (CLI) tools to manage flutter SDK versions. The FVM…'
    },
  ];

  @override
  void initState() {
    super.initState();

    _iconController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _catController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  void sliderInit() {
    _sliderDrawerKey.currentState?.animationController
        .addStatusListener((status) {
      if (_iconController.value < 0.3) {
        _iconController.animateTo(0.3,
            duration: const Duration(milliseconds: 200));
      } else {
        _iconController.animateTo(1);
      }
      if (status == AnimationStatus.completed) {
        setState(() {
          isSliderOpen = true;
        });
        _iconController.value = 0.3;
      } else if (status == AnimationStatus.dismissed) {
        setState(() {
          isSliderOpen = false;
        });
        _iconController.value = 1;
      }
      if (_iconController.value == 1) {
        _iconController.reset();
      }
    });
    if (isStick) {
      _catController.forward();
    } else {
      _catController.stop();
      _catController.reset();
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    _iconController.dispose();
    _catController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    sliderInit();
    List sections = [
      {
        'sections': overview(),
        'key': const ValueKey('overview'),
        'title': 'Overview'
      },
      {'sections': about(), 'key': const ValueKey('about'), 'title': 'About'},
      {'sections': blogs(), 'key': const ValueKey('blogs'), 'title': 'Blogs'},
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
      {
        'sections': footer(),
        'key': const ValueKey('footer'),
        'title': 'Footer'
      },
    ];

    return Scaffold(
      body: SliderDrawer(
        sliderOpenSize: 150,
        key: _sliderDrawerKey,
        slideDirection: SlideDirection.RIGHT_TO_LEFT,
        appBar: null,
        sliderBoxShadow: SliderBoxShadow(
          color: Colors.grey.withOpacity(.4),
          blurRadius: 10,
          spreadRadius: 0.05,
        ),
        slider: Container(
          height: 400,
          width: Responsive().isMobile(context) ? 150 : 265,
          alignment: Alignment.center,
          child: BlocBuilder<HomeBloc, HomeState>(
            bloc: homeBloc,
            builder: (context, state) {
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    ...List.generate(
                        sections.length - 2,
                        (index) => InkWell(
                              onTap: () {
                                scrollController.scrollToIndex(index + 1,
                                    preferPosition: AutoScrollPosition.begin,
                                    duration:
                                        const Duration(milliseconds: 500));

                                _sliderDrawerKey.currentState?.closeSlider();
                              },
                              child: Container(
                                height: 30,
                                margin: const EdgeInsets.only(left: 15),
                                alignment: Alignment.centerLeft,
                                child: GFontText(
                                    color: ColorPallete.black252525,
                                    content: sections[index + 1]['title']),
                              ),
                            )),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 120,
                      margin: const EdgeInsets.only(left: 12, top: 5),
                      child: SizedBox(
                        width: 70,
                        child: AnimatedToggleSwitch<int>.rolling(
                          height: 25,
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
                      ),
                    ),
                  ]);
            },
          ),
        ),
        child: MaxWidthBox(
          maxWidth: 1100,
          child: GestureDetector(
            onTap: () {
              isSliderOpen
                  ? _sliderDrawerKey.currentState?.closeSlider()
                  : null;
            },
            child: StickyContainer(
              displayOverFlowContent: true,
              stickyChildren: [stickyWidget(sections)],
              child: AnimateIfVisibleWrapper(
                showItemInterval: const Duration(milliseconds: 150),
                child: contentList(sections),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget footer() {
    return Container(
      height: 54,
      width: double.infinity,
      color: ColorPallete.blueF1F5F9,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: Image.asset(
              AppImages.feline,
              width: Responsive().fontSize(context, 20, 0.03),
              height: Responsive().fontSize(context, 20, 0.03),
            ),
          ),
          GFontText(
              content: "Created By Muhamad Duta Chandra with Flutter",
              color: ColorPallete.black252525,
              fontSize: Responsive().fontSize(context, 20, 0.03),
              fontWeight: FontWeight.w900),
        ],
      ),
    );
  }

  Widget contentList(List<dynamic> sections) {
    return Container(
      padding: const EdgeInsets.only(top: 70),
      child: InViewNotifierList(
          isInViewPortCondition:
              (double deltaTop, double deltaBottom, double vpHeight) {
            return deltaTop < (0.3 * vpHeight) &&
                deltaBottom > (0.3 * vpHeight);
          },
          itemCount: sections.length,
          shrinkWrap: true,
          controller: scrollController,
          builder: (context, index) {
            return InViewNotifierWidget(
              key: ValueKey(sections[index]['key']),
              id: '$index',
              builder: (context, isInView, child) {
                return AutoScrollTag(
                  key: sections[index]['key'],
                  controller: scrollController,
                  index: index,
                  child: sections[index]['sections'],
                );
              },
            );
          }),
    );
  }

  Widget contact() {
    return animationItem(
        Container(
          height: 300,
          margin: const EdgeInsets.symmetric(vertical: 25),
          width: double.infinity,
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 7,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: ColorPallete.black252525,
                          borderRadius: BorderRadius.circular(2)),
                    ),
                    GFontText(
                      content: "Contact Me",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      fontWeight: FontWeight.w700,
                      fontFamily: FontNames.oleoScript,
                      fontSize: Responsive().fontSize(context, 30, 0.06),
                      height: 68 / 50,
                      color: ColorPallete.black252525,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
        'contact');
  }

  Widget blogs() {
    return animationItem(
        Container(
          margin: const EdgeInsets.symmetric(vertical: 25),
          width: double.infinity,
          alignment: Alignment.center,
          child: MaxWidthBox(
              maxWidth: Constants.contentMaxWidth,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 45,
                          width: 7,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: ColorPallete.black252525,
                              borderRadius: BorderRadius.circular(2)),
                        ),
                        GFontText(
                          content: "Recent Articles",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          fontWeight: FontWeight.w700,
                          fontFamily: FontNames.oleoScript,
                          fontSize: Responsive().fontSize(context, 30, 0.06),
                          height: 68 / 50,
                          color: ColorPallete.black252525,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    ResponsiveRowColumn(
                      layout: ResponsiveBreakpoints.of(context)
                              .smallerOrEqualTo(MOBILE)
                          ? ResponsiveRowColumnType.COLUMN
                          : ResponsiveRowColumnType.ROW,
                      rowMainAxisAlignment: MainAxisAlignment.center,
                      columnCrossAxisAlignment: CrossAxisAlignment.center,
                      columnMainAxisSize: MainAxisSize.min,
                      columnMainAxisAlignment: MainAxisAlignment.center,
                      columnSpacing: 20,
                      rowMainAxisSize: MainAxisSize.max,
                      rowSpacing: 42,
                      children: [
                        ...List.generate(
                          blogsData.length,
                          (index) => ResponsiveRowColumnItem(
                            rowFit: FlexFit.tight,
                            child: MouseRegion(
                                onHover: (event) {
                                  setState(() {
                                    isBlogHoverItem = index + 1;
                                  });
                                },
                                onExit: (event) {
                                  setState(() {
                                    isBlogHoverItem = 0;
                                  });
                                },
                                child: Container(
                                    alignment: Alignment.centerLeft,
                                    decoration: BoxDecoration(
                                        boxShadow: isBlogHoverItem == index + 1
                                            ? [
                                                const BoxShadow(
                                                  color: Color(0x3F000000),
                                                  blurRadius: 4,
                                                  offset: Offset(2, 4),
                                                  spreadRadius: 2,
                                                )
                                              ]
                                            : null,
                                        color: const Color(0xFFF4F5F4),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: ResponsiveRowColumn(
                                              layout: ResponsiveBreakpoints.of(
                                                          context)
                                                      .smallerThan(DESKTOP)
                                                  ? ResponsiveRowColumnType
                                                      .COLUMN
                                                  : ResponsiveRowColumnType.ROW,
                                              rowMainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              columnCrossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              columnMainAxisSize:
                                                  MainAxisSize.max,
                                              rowMainAxisSize: MainAxisSize.max,
                                              rowPadding: EdgeInsets.zero,
                                              columnMainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              columnSpacing: 10,
                                              rowSpacing: 10,
                                              children: [
                                                ResponsiveRowColumnItem(
                                                  rowFlex: 1,
                                                  rowFit: FlexFit.tight,
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: NetworkImage(
                                                              blogsData[index]
                                                                  ['image']),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        color: Colors
                                                            .grey.shade200,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    width: ResponsiveBreakpoints
                                                                .of(context)
                                                            .smallerOrEqualTo(
                                                                TABLET)
                                                        ? double.infinity
                                                        : 130,
                                                    height: ResponsiveBreakpoints
                                                                .of(context)
                                                            .smallerOrEqualTo(
                                                                TABLET)
                                                        ? 200
                                                        : 130,
                                                  ),
                                                ),
                                                ResponsiveRowColumnItem(
                                                  rowFlex: 2,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            blogsData[index]
                                                                ['description'],
                                                            maxLines: 4,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          )),
                                                      Wrap(
                                                        alignment:
                                                            WrapAlignment.start,
                                                        crossAxisAlignment:
                                                            WrapCrossAlignment
                                                                .start,
                                                        runAlignment:
                                                            WrapAlignment.start,
                                                        spacing: 10,
                                                        children: [
                                                          ...List.generate(
                                                              4,
                                                              (index) =>
                                                                  Container(
                                                                    decoration: BoxDecoration(
                                                                        color: ColorPallete
                                                                            .whiteEAEBEA,
                                                                        borderRadius:
                                                                            BorderRadius.circular(15)),
                                                                    margin: const EdgeInsets
                                                                        .only(
                                                                        top: 10,
                                                                        right:
                                                                            10),
                                                                    child:
                                                                        const Padding(
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              15,
                                                                          vertical:
                                                                              5),
                                                                      child:
                                                                          SizedBox(
                                                                        height:
                                                                            20,
                                                                        child:
                                                                            Text(
                                                                          'test',
                                                                          style:
                                                                              TextStyle(color: ColorPallete.black252525),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ))
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ))),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
        ),
        'blogs');
  }

  Widget projects() {
    return animationItem(
        Container(
          height: 300,
          margin: const EdgeInsets.symmetric(vertical: 25),
          width: double.infinity,
          color: ColorPallete.blueF1F5F9,
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 7,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: ColorPallete.black252525,
                          borderRadius: BorderRadius.circular(2)),
                    ),
                    GFontText(
                      content: "Projects",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      fontWeight: FontWeight.w700,
                      fontFamily: FontNames.oleoScript,
                      fontSize: Responsive().fontSize(context, 30, 0.06),
                      height: 68 / 50,
                      color: ColorPallete.black252525,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
        'projects');
  }

  Widget about() {
    return animationItem(
        Container(
          margin: const EdgeInsets.symmetric(vertical: 25),
          color: ColorPallete.blueF1F5F9,
          height: 300,
          alignment: Alignment.center,
          width: double.infinity,
          child: MaxWidthBox(
            maxWidth: Constants.contentMaxWidth,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 45,
                        width: 7,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: ColorPallete.black252525,
                            borderRadius: BorderRadius.circular(2)),
                      ),
                      GFontText(
                        content: "About Me",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        fontWeight: FontWeight.w700,
                        fontFamily: FontNames.oleoScript,
                        fontSize: Responsive().fontSize(context, 30, 0.06),
                        height: 68 / 50,
                        color: ColorPallete.black252525,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  GFontText(
                    content:
                        "I’m a Software Developer who wan’t to build something everyday.  \nA developer who embraces the philosophy of “stay foolish” and “stay hungry” for knowledge.\nLove sharing with others in medium.com",
                    fontWeight: FontWeight.w400,
                    fontSize: Responsive().fontSize(context, 22, 0.03),
                    height: 68 / 50,
                    color: ColorPallete.black252525,
                  ),
                ],
              ),
            ),
          ),
        ),
        'about');
  }

  Widget overview() {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      height: ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET)
          ? null
          : height - 50,
      child: MaxWidthBox(
        maxWidth: Constants.contentMaxWidth,
        child: ResponsiveRowColumn(
          layout: ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          rowMainAxisAlignment: MainAxisAlignment.center,
          columnCrossAxisAlignment: CrossAxisAlignment.center,
          columnMainAxisSize: MainAxisSize.max,
          columnSpacing: 0,
          children: [
            ResponsiveRowColumnItem(
              columnOrder: 1,
              child: bioOverview(),
            ),
            ResponsiveRowColumnItem(
              columnOrder: 0,
              child: SizedBox(
                width:
                    ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET)
                        ? Responsive().width(context)
                        : null,
                height:
                    ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET)
                        ? Responsive().width(context)
                        : null,
                child: pictureOverview(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bioOverview() {
    Widget bioContent = animationItem(
      Container(
        margin: const EdgeInsets.only(top: 70),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment:
                ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET)
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
            children: [
              GFontText(
                content: 'Hello,',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                fontWeight: FontWeight.w600,
                fontSize: Responsive().fontSize(context, 20, 0.04),
                color: ColorPallete.black252525,
              ),
              GFontText(
                content: "I’m M Duta Chandra",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                fontWeight: FontWeight.w900,
                fontSize: Responsive().fontSize(context, 30, 0.06),
                color: ColorPallete.black252525,
              ),
              GFontText(
                content: "Software Developer",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                fontWeight: FontWeight.w700,
                fontSize: ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                    ? 23
                    : Responsive().fontSize(context, 30, 0.04),
                color: ColorPallete.black252525,
              ),
              GFontText(
                content:
                    "Skilled and Passionate Software Developer from Indonesia, I prioritize clear communication and i'm committed to delivering high-quality results to the Apps i build.",
                fontWeight: FontWeight.w400,
                fontSize: ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                    ? 20
                    : Responsive().fontSize(context, 27, 0.03),
                color: ColorPallete.black252525,
              ),
            ],
          ),
        ),
      ),
      'bioOverview',
      begin: const Offset(-0.05, 0),
      duration: const Duration(milliseconds: 700),
    );
    return ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET)
        ? bioContent
        : Expanded(
            flex: 6,
            child: bioContent,
          );
  }

  Widget pictureOverview() {
    return Container(
        margin: const EdgeInsets.only(top: 30),
        width: ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET)
            ? Responsive().getWidth(context)
            : 500,
        height: ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET)
            ? 600
            : 500,
        child: animationItem(
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width:
                    ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET)
                        ? Responsive().getWidth(context)
                        : 400,
                height:
                    ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET)
                        ? 600
                        : 400,
                constraints:
                    const BoxConstraints(maxWidth: 600, maxHeight: 600),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(AppImages.profile))),
              ),
            ],
          ),
          'pictureoverview',
          begin: const Offset(-0.1, 0),
          duration: const Duration(milliseconds: 500),
        ));
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
      child: Container(
          constraints: const BoxConstraints(maxWidth: 1100),
          alignment: Alignment.center,
          width: Responsive().getWidth(context),
          height: 70,
          child: appBarWidget(sections)),
    );
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
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: BlocBuilder<HomeBloc, HomeState>(
              bloc: homeBloc,
              builder: (context, state) {
                return Center(
                  child: GestureDetector(
                    onTap: () {
                      scrollController.scrollToIndex(0,
                          preferPosition: AutoScrollPosition.begin,
                          duration: const Duration(milliseconds: 500));
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Lottie.asset(
                            'assets/lottie/catzzz.json',
                            alignment: Alignment.center,
                            controller: _catController,
                            fit: BoxFit.cover,
                            onLoaded: (composition) {
                              _catController.duration = composition.duration;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          ResponsiveBreakpoints.of(context).largerThan(TABLET)
              ? Expanded(
                  flex: 5,
                  child: BlocBuilder<HomeBloc, HomeState>(
                    bloc: homeBloc,
                    builder: (context, state) {
                      return Wrap(
                        alignment: WrapAlignment.spaceEvenly,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          ...List.generate(
                              sections.length - 2,
                              (index) => GestureDetector(
                                  onTap: () {
                                    scrollController.scrollToIndex(index + 1,
                                        preferPosition:
                                            AutoScrollPosition.begin,
                                        duration:
                                            const Duration(milliseconds: 500));
                                  },
                                  child: GFontText(
                                    content: sections[index + 1]['title'],
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15,
                                    color: ColorPallete.black252525,
                                  ))),
                          SizedBox(
                            width: 70,
                            child: AnimatedToggleSwitch<int>.rolling(
                              height: 25,
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
                          ),
                        ],
                      );
                    },
                  ),
                )
              : GestureDetector(
                  onTap: () {
                    _sliderDrawerKey.currentState?.toggle();
                  },
                  child: Lottie.asset(
                    'assets/lottie/data.json',
                    controller: _iconController,
                    onLoaded: (composition) {
                      _iconController.duration = composition.duration;
                    },
                  ))
        ],
      ),
    );
  }

  Widget rollingIconBuilder(int? value, bool foreground) {
    return Icon(
      iconDataByValue(value),
      size: 14,
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
