import 'package:flutter/material.dart';
import '../translation/translation_strings.dart';

class HomeScreen extends StatelessWidget {
  final Function myResponFunction;
  HomeScreen(this.myResponFunction);

  Widget _buildLastNewsArea(BuildContext context, List<dynamic> resposeveDes) {
    Locale mylocale = Localizations.localeOf(context);
    Widget myImageLogo = Container();
    if (mylocale.languageCode.contains("ar")) {
      myImageLogo = Image.asset(
        'assets/Group545' + resposeveDes[0],
        fit: BoxFit.cover,
      );
    } else {
      myImageLogo = RotatedBox(
        child: Image.asset(
          'assets/Group545' + resposeveDes[0],
          fit: BoxFit.cover,
        ),
        quarterTurns: 10,
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(Translations.of(context).latestNewsArea,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: resposeveDes[10]))
                ],
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    child: Text(
                      Translations.of(context).moreNewsArea,
                      style: TextStyle(
                          color: Colors.blue, fontSize: resposeveDes[11]),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: resposeveDes[12]),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * resposeveDes[92],
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(resposeveDes[13]),
              image: DecorationImage(
                  image: AssetImage('assets/img' + resposeveDes[0]),
                  fit: BoxFit.fill)),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[myImageLogo],
          ),
        ),
        Text(
          'الدورى الرياضى',
          style: TextStyle(fontSize: resposeveDes[14]),
        ),
        SizedBox(
          height: resposeveDes[93],
        ),
        Text('من الملاعب السعودية إلى منصة التتويج بكأس العالم..',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: resposeveDes[15]))
      ],
    );
  }

  Widget _matchesRow(List<dynamic> resposeveDes) {
    return Row(
      children: <Widget>[
        Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Row(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Image.asset(
                      'assets/logo-club-foot-png-2' + resposeveDes[0],
                      fit: BoxFit.cover,
                    )),
                Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Text(
                      'الأهلى',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: resposeveDes[20]),
                    ))
              ],
            )),
        Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Column(
              children: <Widget>[
                Text(
                  '22.00',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: resposeveDes[102], fontWeight: FontWeight.bold),
                ),
                Text('الخميس 15 يوليو',
                    style: TextStyle(
                      fontSize: resposeveDes[103],
                    ),
                    textAlign: TextAlign.center)
              ],
            )),
        Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Row(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Text('الأهلى',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: resposeveDes[20]))),
                Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Image.asset(
                      'assets/logo-club-foot-png-2' + resposeveDes[0],
                      fit: BoxFit.cover,
                    )),
              ],
            ))
      ],
    );
  }

  Widget _buildNextMatches(BuildContext context, List<dynamic> resposeveDes) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: resposeveDes[16]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                flex: 3,
                fit: FlexFit.loose,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(Translations.of(context).upcomingMatchesArea,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: resposeveDes[17]))
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      child: Text(
                        Translations.of(context).moreUpcomingMatchesArea,
                        style: TextStyle(
                            color: Colors.blue, fontSize: resposeveDes[18]),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: resposeveDes[19]),
            child: Column(
              children: <Widget>[
                _matchesRow(resposeveDes),
                _matchesRow(resposeveDes),
                _matchesRow(resposeveDes),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTweets(List<dynamic> resposeveDes) {
    return Container(
      margin: EdgeInsets.only(top: resposeveDes[25]),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: Image.asset(
                    'assets/5TRrpRAGc' + resposeveDes[0],
                    fit: BoxFit.cover,
                  )),
              Flexible(
                  fit: FlexFit.tight,
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'الدورى الرياضى',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: resposeveDes[26],
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '@account',
                        style: TextStyle(fontSize: resposeveDes[27]),
                      )
                    ],
                  ))
            ],
          ),
          //Row(
          //children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                top: resposeveDes[28],
                left: resposeveDes[29],
                right: resposeveDes[30]),
            /*child:Flexible(
                  flex: 1,
                  fit: FlexFit.tight,*/
            child: Text(
              'عندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا.',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: resposeveDes[31]),
            )
                //,)
                ,
          )
          //],
          //)
        ],
      ),
    );
  }

  Widget _buildLatestTweets(BuildContext context, List<dynamic> resposeveDes) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: resposeveDes[16]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                flex: 3,
                fit: FlexFit.loose,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(Translations.of(context).latestTweetsArea,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: resposeveDes[22]))
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      child: Text(
                        Translations.of(context).moreLatestTweetsArea,
                        style: TextStyle(
                            color: Colors.blue, fontSize: resposeveDes[23]),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: resposeveDes[24]),
            child: Column(
              children: <Widget>[
                _buildTweets(resposeveDes),
                _buildTweets(resposeveDes)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildWinnerTeam(BuildContext cont, String teamName, String winPresent,
      double width, double height, List<dynamic> resposeveDes) {
    Locale mylocale = Localizations.localeOf(cont);
    BoxDecoration boxDecoration;
    if (winPresent == '50') {
      boxDecoration = BoxDecoration(
          border: Border(
              right:
                  BorderSide(width: resposeveDes[34], color: Colors.black12)));
    } else {
      boxDecoration = BoxDecoration(
          border: Border(
              top: BorderSide(width: resposeveDes[34], color: Colors.black12),
              bottom:
                  BorderSide(width: resposeveDes[34], color: Colors.black12),
              right: BorderSide(width: resposeveDes[34], color: Colors.black12),
              left: BorderSide(width: resposeveDes[34], color: Colors.black12)),
          borderRadius: BorderRadius.circular(resposeveDes[35]));
    }
    return Flexible(
        fit: FlexFit.tight,
        flex: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: width * resposeveDes[36],
              height: height * resposeveDes[37],
              decoration: boxDecoration,
              child: Center(
                child: Image.asset(
                  'assets/logo-club-foot-png-2' + resposeveDes[0],
                  fit: BoxFit.cover,
                  width: width * resposeveDes[38],
                  height: height * resposeveDes[39],
                ),
              ),
            ),
            SizedBox(
              height: resposeveDes[40],
            ),
            Text(
              teamName,
              style: TextStyle(
                  fontSize: resposeveDes[41], fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: resposeveDes[42],
            ),
            Text(
              mylocale.languageCode.contains("ar")
                  ? '%' + winPresent
                  : '$winPresent%',
              style: TextStyle(
                  color:
                      winPresent == '50' ? Colors.grey.shade400 : Colors.black,
                  fontSize: resposeveDes[43]),
            )
          ],
        ));
  }

  Widget _buildWinner(BuildContext context, List<dynamic> resposeveDes) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          Translations.of(context).expectWinner,
          style: TextStyle(
              fontSize: resposeveDes[44], fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: resposeveDes[32],
        ),
        Row(
          children: <Widget>[
            _buildWinnerTeam(
                context, 'الاتحاد', '30', width, height, resposeveDes),
            _buildWinnerTeam(
                context, 'الهلال', '50', width, height, resposeveDes),
            _buildWinnerTeam(
                context, 'النهضة', '20', width, height, resposeveDes),
          ],
        ),
        SizedBox(
          height: resposeveDes[33],
        ),
      ],
    );
  }

  Widget _buildVideos(BuildContext context, List<dynamic> resposeveDes) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: resposeveDes[46]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            Translations.of(context).videosArea,
            style: TextStyle(
                fontSize: resposeveDes[45], fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: resposeveDes[47]),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * resposeveDes[48],
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(resposeveDes[49]),
                image: DecorationImage(
                    image: AssetImage('assets/Image' + resposeveDes[0]),
                    fit: BoxFit.fill)),
          )
        ],
      ),
    );
  }

  Widget _buildSponsors(BuildContext context, List<dynamic> resposeveDes) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: resposeveDes[51]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            Translations.of(context).sponsorsArea,
            style: TextStyle(
                fontSize: resposeveDes[50], fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.only(
                top: resposeveDes[52], bottom: resposeveDes[53]),
            child: Row(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Image.asset(
                      'assets/Symbol2–1' + resposeveDes[0],
                      fit: BoxFit.fill,
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width * resposeveDes[54],
                ),
                Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Image.asset(
                      'assets/Symbol2–1' + resposeveDes[0],
                      fit: BoxFit.fill,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic> myRespon = myResponFunction(context);
    double heightOfSliver = 0.0;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      heightOfSliver = MediaQuery.of(context).size.height * myRespon[94];
    } else {
      heightOfSliver = MediaQuery.of(context).size.height * myRespon[95];
    }

    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: heightOfSliver,
                floating: false,
                pinned: true,
                backgroundColor: Colors.transparent,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    background: Image.asset(
                      'assets/Group544' + myRespon[0],
                      fit: BoxFit.fill,
                    )),
              ),
            ];
          },
          body: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: myRespon[9]),
                child: Column(
                  children: <Widget>[
                    _buildLastNewsArea(context, myRespon),
                    _buildNextMatches(context, myRespon),
                    _buildLatestTweets(context, myRespon),
                    _buildWinner(context, myRespon),
                    _buildVideos(context, myRespon),
                    _buildSponsors(context, myRespon)
                  ],
                ),
              )
            ],
          )),
    );
  }
}
