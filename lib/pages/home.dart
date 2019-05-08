import 'package:flutter/material.dart';
import './homescreen.dart';
import './morepage.dart';
import './newslist.dart';
import '../scoped-models/main.dart';
import '../pages/statistics_page.dart';
import '../pages/periodic_table.dart';
import '../translation/translation_strings.dart';
import 'package:scoped_model/scoped_model.dart';
import 'dart:math' as math;

class Home extends StatefulWidget {
  final MainModel model;
  final Function myResponFunction;
  Home(this.model, this.myResponFunction);
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  AnimationController _controller;
  AnimationController _floatingActionController;
  Animation<Offset> _slideAnimation;
  bool isvis = false;
  int _currentInbox = 0;

  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 750));
    _floatingActionController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 750));
    _slideAnimation = Tween<Offset>(begin: Offset(0.0, -1.5), end: Offset.zero)
        .animate(
            CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn));
    _controller.forward();
    _floatingActionController.forward();
    isvis = true;
    super.initState();
  }

  _onTap(int index) {
    setState(() {
      _currentInbox = index;
    });
  }

  Widget buildBuildAllTabs(BuildContext context, List<dynamic> myRespon) {
    return FadeTransition(
      opacity: CurvedAnimation(parent: _controller, curve: Curves.easeIn),
      child: SlideTransition(
        position: _slideAnimation,
        child: Visibility(
          visible: isvis,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              _buildBottomNavigationBarItem(Translations.of(context).homeTab,
                  'Glyph', myRespon, 0, context),
              _buildBottomNavigationBarItem(
                  Translations.of(context).periodicTableTab,
                  'Glyph2',
                  myRespon,
                  1,
                  context),
              _buildBottomNavigationBarItem(
                  Translations.of(context).newsListTab,
                  'Glyph3',
                  myRespon,
                  2,
                  context),
              _buildBottomNavigationBarItem(
                  Translations.of(context).fullStatsTab,
                  'Glyph4',
                  myRespon,
                  3,
                  context),
              _buildBottomNavigationBarItem(Translations.of(context).language,
                  'Glyph5', myRespon, 4, context),
              _buildBottomNavigationBarItem(Translations.of(context).moreTab,
                  'Glyph5', myRespon, 5, context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBarItem(String title, String image,
      List<dynamic> resposeveDes, int index, BuildContext cont) {
    final double width = MediaQuery.of(context).size.width;
    final bool isMedium = width <= 540.0;
    final bool isNormal = width <= 768.0;
    final bool isXlarge = width <= 1550.0;

    String imageType = '.png';
    if (isMedium) {
      imageType = '.png';
    } else if (isNormal &&
        MediaQuery.of(context).orientation == Orientation.portrait) {
      imageType = '@2x.png';
    } else if (isNormal &&
        MediaQuery.of(context).orientation == Orientation.landscape) {
      imageType = '.png';
    } else if (isXlarge &&
        MediaQuery.of(context).orientation == Orientation.portrait) {
      imageType = '@2x.png';
    } else if (isXlarge &&
        MediaQuery.of(context).orientation == Orientation.landscape) {
      imageType = '@2x.png';
    }
    double heightSizedBox = 0.0;
    if (index == 2) {
      heightSizedBox = 0.0;
    } else if (index == 3) {
      heightSizedBox = resposeveDes[21];
    } else {
      heightSizedBox = resposeveDes[1];
    }

    Widget bottomItem = Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: GestureDetector(
        onTap: () => _onTap(index),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: heightSizedBox,
            ),
            Image.asset(
              'assets/' + image + imageType,
              color: _currentInbox == index ? Colors.white : Colors.grey,
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: resposeveDes[2],
                  color: _currentInbox == index ? Colors.white : Colors.grey),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
    if (index == 4) {
      bottomItem = Flexible(
        flex: 1,
        fit: FlexFit.tight,
        child: ScopedModelDescendant<MainModel>(
          rebuildOnChange: false,
          builder: (context, child, model) {
            return GestureDetector(
              onTap: () => model.changeDirection(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: heightSizedBox,
                  ),
                  Icon(
                    Icons.language,
                    color: Colors.grey,
                    size: resposeveDes[104],
                  ),
                  SizedBox(
                    height: resposeveDes[105],
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: resposeveDes[2],
                        color: _currentInbox == index
                            ? Colors.white
                            : Colors.grey),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            );
          },
        ),
      );
    }
    return bottomItem;
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic> myRespon = widget.myResponFunction(context);
    List<Widget> _screens = [
      HomeScreen(widget.myResponFunction),
      PeriodicTablePage(widget.model, widget.myResponFunction),
      NewsList(widget.model, widget.myResponFunction),
      StatisticsPage(widget.myResponFunction),
      Container(),
      MorePage(widget.myResponFunction),
    ];

    return Scaffold(
      body: SafeArea(child:_screens[_currentInbox]),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).primaryColor,
            primaryColor: Colors.white,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.grey))),
        child: Container(
          color: Color.fromRGBO(15, 22, 57, 1.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: myRespon[86],
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    //borderRadius: BorderRadius.circular(10.0)
                  ),
                ),
              ),
              buildBuildAllTabs(context, myRespon),
              SizedBox(
                height: myRespon[87],
              ),
              SizedBox(
                height: myRespon[88],
                width: MediaQuery.of(context).size.width * myRespon[91],
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(myRespon[89])),
                ),
              ),
              SizedBox(
                height: myRespon[90],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Visibility(
          visible: true,
          child: FloatingActionButton(
            backgroundColor:
                isvis ? Colors.white : Color.fromRGBO(15, 22, 57, 1.0),
            onPressed: () {
              if (!_controller.isDismissed) {
                _controller.reverse().then((_) {
                  setState(() {
                    isvis = false;
                  });
                });

                _floatingActionController.reverse();
              } else {
                setState(() {
                  _controller.forward();
                  _floatingActionController.forward();
                  isvis = true;
                });
              }
            },
            child: AnimatedBuilder(
                animation: _floatingActionController,
                builder: (BuildContext context, Widget child) {
                  return Transform(
                      alignment: FractionalOffset.center,
                      child: Icon(
                        _floatingActionController.isDismissed
                            ? Icons.more_vert
                            : Icons.close,
                        color: !isvis
                            ? Colors.white
                            : Color.fromRGBO(15, 22, 57, 1.0),
                        size: myRespon[106],
                      ),
                      transform: Matrix4.rotationZ(
                          _floatingActionController.value * 0.5 * math.pi));
                }),
          )),
/*
  Theme(

    data: Theme.of(context).copyWith(
      // sets the background color of the `BottomNavigationBar`
        canvasColor: Theme.of(context).primaryColor,
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: Colors.white,
        textTheme: Theme
            .of(context)
            .textTheme
            .copyWith(caption: new TextStyle(color: Colors.grey))), // sets the inactive color of the `BottomNavigationBar`
    child: Container(
      color: Theme.of(context).primaryColor,
      child:Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        BottomNavigationBar(
            iconSize: 35,
            currentIndex: _currentInbox,
            type: BottomNavigationBarType.fixed,
            //fixedColor: Colors.white,
            onTap: _onTap,
            items: [
              BottomNavigationBarItem(title: Text("Home"),icon: Icon(Icons.crop_portrait,)),
              BottomNavigationBarItem(title: Text("Periodic Table"),icon: Icon(Icons.crop_portrait,)),
              BottomNavigationBarItem(title: Text("News list"),icon: Icon(Icons.crop_portrait,)),
              BottomNavigationBarItem(title: Text("Full stats"),icon: Icon(Icons.star,)),
              BottomNavigationBarItem(title: Text("More"),icon: Icon(Icons.crop_portrait,)),

            ]),
        SizedBox(height: 9.0,),
        SizedBox(height: 6.0,width: MediaQuery.of(context).size.width * .4,child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0)),
        ),),
        SizedBox(height: 9.0,),
      ],
    ),),
    )
*/

      /*BottomNavigationBar(
          currentIndex: _currentInbox,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.white,
          onTap: _onTap,
          items: [
            BottomNavigationBarItem(title: Text("Home",style: TextStyle(color: Colors.grey),),icon: Icon(Icons.home)),
            BottomNavigationBarItem(title: Text("Trending"),icon: Icon(Icons.whatshot)),
            BottomNavigationBarItem(title: Text("Subscriptions"),icon: Icon(Icons.subscriptions)),
            BottomNavigationBarItem(title: Text("Inbox"),icon: Icon(Icons.mail)),
            BottomNavigationBarItem(title: Text("Library"),icon: Icon(Icons.folder)),
          ])*/
    );
  }
}
