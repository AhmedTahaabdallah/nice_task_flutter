import 'package:flutter/material.dart';
import '../translation/translation_strings.dart';

class StatisticsPage extends StatelessWidget {
  final Function myResponFunction;
  StatisticsPage(this.myResponFunction);

  @override
  Widget build(BuildContext context) {
    List<dynamic> myRespon = myResponFunction(context);
    double heightOfSliver = 0.0;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      heightOfSliver = MediaQuery.of(context).size.height * myRespon[100];
    } else {
      heightOfSliver = MediaQuery.of(context).size.height * myRespon[101];
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
          body: Center(
            child: Text(Translations.of(context).noStatisticsFound,
                style: TextStyle(
                    fontSize: myRespon[57], fontWeight: FontWeight.w500)),
          )),
    );
  }
}
