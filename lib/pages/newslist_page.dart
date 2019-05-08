import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-models/main.dart';
import '../widgets/adapativ_progress_indicator.dart';
import '../models/news.dart';
import '../translation/translation_strings.dart';

class NewsListPage extends StatefulWidget {
  final MainModel model;
  final Function myResponFunction;
  NewsListPage(this.model, this.myResponFunction);
  @override
  State<StatefulWidget> createState() {
    return _NewsListPageState();
  }
}

class _NewsListPageState extends State<NewsListPage> {
  @override
  initState() {
    widget.model.fetchLatestNews();
    super.initState();
  }

  Widget _buildImageLogo(String image, String imagepath) {
    Locale mylocale = Localizations.localeOf(context);
    Widget myImageLogo = Container();
    if (mylocale.languageCode.contains("ar")) {
      myImageLogo = Image.asset(
        image + imagepath,
        fit: BoxFit.cover,
      );
    } else {
      myImageLogo = RotatedBox(
        child: Image.asset(
          image + imagepath,
          fit: BoxFit.cover,
        ),
        quarterTurns: 10,
      );
    }
    return myImageLogo;
  }

  Widget _buildAllNews(BuildContext cont, List<LatestNews> allLatestNews,
      List<dynamic> resposeveDes, MainModel model) {
    Locale mylocale = Localizations.localeOf(context);
    return ListView.builder(
        itemCount: allLatestNews.length,
        itemBuilder: (BuildContext cont, int index) {
          return ListTile(
              onTap: () {
                model.selectLatestNews(allLatestNews[index].id);
                Navigator.pushNamed<bool>(
                        cont, '/newsPage/' + allLatestNews[index].id)
                    .then((_) => model.selectLatestNews(null));
              },
              leading: Hero(
                tag: allLatestNews[index].id,
                child: Container(
                  width: MediaQuery.of(context).size.width * resposeveDes[59],
                  height: MediaQuery.of(context).size.height * resposeveDes[60],
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(resposeveDes[61]),
                      image: DecorationImage(
                          image: AssetImage(
                              allLatestNews[index].imageBackGround +
                                  resposeveDes[0]),
                          fit: BoxFit.fill)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      _buildImageLogo(
                          allLatestNews[index].imageLogo,
                          MediaQuery.of(context).size.width > 1100.0
                              ? '.png'
                              : resposeveDes[0])
                    ],
                  ),
                ),
              ),
              title: Container(
                margin: EdgeInsets.only(
                    top: mylocale.languageCode.contains("ar")
                        ? resposeveDes[97]
                        : resposeveDes[62]),
                child: Text(
                  allLatestNews[index].newsType,
                  style: TextStyle(fontSize: resposeveDes[63]),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: mylocale.languageCode.contains("ar")
                        ? resposeveDes[98]
                        : 0.0,
                  ),
                  Text(allLatestNews[index].title,
                      style: TextStyle(
                          fontSize: resposeveDes[64],
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: mylocale.languageCode.contains("ar")
                        ? resposeveDes[99]
                        : 0.0,
                  ),
                  Text(allLatestNews[index].date,
                      style: TextStyle(fontSize: resposeveDes[65])),
                ],
              ));
        });
  }

  Widget _buildProductList(BuildContext context) {
    List<dynamic> myRespon = widget.myResponFunction(context);
    return ScopedModelDescendant(
      rebuildOnChange: false,
      builder: (BuildContext context, Widget child, MainModel model) {
        Widget content = Center(
          child: Text(
            Translations.of(context).noNewsFound,
            style:
                TextStyle(fontSize: myRespon[58], fontWeight: FontWeight.w500),
          ),
        );
        if (!model.isLoading) {
          content =
              _buildAllNews(context, model.allLatestNews, myRespon, model);
        } else if (model.isLoading) {
          content = Center(
            child: AdapativProgressIndicator(),
          );
        }
        //return RefreshIndicator(child: content, onRefresh: model.fetchLatestNews);
        return content;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildProductList(context),
    );
  }
}
