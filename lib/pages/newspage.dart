import 'package:flutter/material.dart';
import '../models/news.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-models/main.dart';

class NewsPage extends StatefulWidget {
  final LatestNews latestNews;
  final Function myResponFunction;
  NewsPage(this.latestNews, this.myResponFunction);

  @override
  State<StatefulWidget> createState() {
    return _NewsPageState();
  }
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> myRespon = widget.myResponFunction(context);
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: ScopedModelDescendant<MainModel>(
          rebuildOnChange: false,
          builder: (BuildContext context, Widget child, MainModel model) {
            return Scaffold(
              body: SafeArea(child:CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    backgroundColor: Color.fromRGBO(15, 22, 57, 1.0),
                    elevation: Theme.of(context).platform == TargetPlatform.iOS
                        ? 0.0
                        : 4.0,
                    expandedHeight:
                        MediaQuery.of(context).size.height * myRespon[66],
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Image.asset(
                        widget.latestNews.imageBackGround + myRespon[0],
                        fit: BoxFit.cover,
                      ),
                    ),
                    actions: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 30.0),
                        child: Image.asset(
                          'assets/Fill67' + myRespon[0],
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                  SliverList(
                      delegate: SliverChildListDelegate([
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: myRespon[67], vertical: myRespon[68]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.latestNews.title,
                            style: TextStyle(
                                fontSize: myRespon[69],
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.latestNews.newsType,
                            style: TextStyle(fontSize: myRespon[70]),
                          ),
                          Text(
                            widget.latestNews.date,
                            style: TextStyle(fontSize: myRespon[71]),
                          ),
                          SizedBox(
                            height: myRespon[72],
                          ),
                          Text(
                            widget.latestNews.description,
                            style: TextStyle(
                                fontSize: myRespon[73],
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: myRespon[74],
                          )
                        ],
                      ),
                    )
                  ]))
                ],
              ),),
            );
          }),
    );
  }
}
