import 'package:flutter/material.dart';
import '../scoped-models/main.dart';
import './newslist_page.dart';
import '../translation/translation_strings.dart';

class NewsList extends StatelessWidget {
  final MainModel model;
  final Function myResponFunction;
  NewsList(this.model, this.myResponFunction);

  @override
  Widget build(BuildContext context) {
    List<dynamic> myRespon = myResponFunction(context);
    double heightOfSliver = 0.0;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      heightOfSliver = MediaQuery.of(context).size.height * myRespon[55];
    } else {
      heightOfSliver = MediaQuery.of(context).size.height * myRespon[56];
    }
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: heightOfSliver,
                  floating: false,
                  pinned: true,
                  backgroundColor: Color.fromRGBO(15, 22, 57, 1.0),
                  flexibleSpace: FlexibleSpaceBar(
                      background: Image.asset('assets/Group544' + myRespon[0],
                          fit: BoxFit.cover)),
                  bottom: TabBar(
                    labelColor: Colors.white,
                    //unselectedLabelColor: Colors.grey,
                    labelStyle: TextStyle(fontSize: myRespon[75]),
                    tabs: [
                      Tab(text: Translations.of(context).newsListTabView),
                      Tab(text: Translations.of(context).imagesListTabView),
                      Tab(text: Translations.of(context).videosListTabView)
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: <Widget>[
                NewsListPage(model, myResponFunction),
                Center(
                  child: Text(
                    Translations.of(context).noImagesListTabView,
                    style: TextStyle(
                        fontSize: myRespon[57], fontWeight: FontWeight.w500),
                  ),
                ),
                Center(
                  child: Text(Translations.of(context).noVideosListTabView,
                      style: TextStyle(
                          fontSize: myRespon[57], fontWeight: FontWeight.w500)),
                ),
              ],
            )),
      ),
    );
  }
}
