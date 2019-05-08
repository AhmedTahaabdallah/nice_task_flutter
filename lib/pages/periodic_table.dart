import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-models/main.dart';
import '../widgets/circle_avatar/customcircleavatar.dart';
import '../widgets/adapativ_progress_indicator.dart';
import '../translation/translation_strings.dart';
import 'package:connectivity/connectivity.dart';

/*import 'dart:async';
import 'dart:io';*/
class PeriodicTablePage extends StatefulWidget {
  final MainModel model;
  final Function myResponFunction;
  PeriodicTablePage(this.model, this.myResponFunction);

  @override
  State<StatefulWidget> createState() {
    return _PeriodicTablePageState();
  }
}

class _PeriodicTablePageState extends State<PeriodicTablePage> {
  List<dynamic> items;
  void _checkInternet() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      widget.model.fetchPeriodicTable().then((bool state) {
        if (!state) {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                List<dynamic> myRespon = widget.myResponFunction(context);
                return AlertDialog(
                  title: Text(
                    Translations.of(context).ptAlertDialogTitle,
                    style: TextStyle(fontSize: myRespon[76]),
                  ),
                  content: Text(Translations.of(context).ptAlertDialogContent,
                      style: TextStyle(fontSize: myRespon[77])),
                  actions: <Widget>[
                    FlatButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text(Translations.of(context).ptAlertDialogOkay,
                            style: TextStyle(fontSize: myRespon[78])))
                  ],
                );
              });
        }
      });
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            List<dynamic> myRespon = widget.myResponFunction(context);
            return AlertDialog(
              title: Text(
                Translations.of(context).ptAlertDialogTitle,
                style: TextStyle(fontSize: myRespon[76]),
              ),
              content: Text(Translations.of(context).ptAlertDialogContent,
                  style: TextStyle(fontSize: myRespon[77])),
              actions: <Widget>[
                FlatButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(Translations.of(context).ptAlertDialogOkay,
                        style: TextStyle(fontSize: myRespon[78])))
              ],
            );
          });
    }
  }

  @override
  void initState() {
    _checkInternet();
    super.initState();
  }

  Widget _buildPage(MainModel model, List<dynamic> resposeveDes) {
    items = model.allItems['data'];

    return ListView.builder(
        itemCount: model.allItems['data'] != null ? items.length : 0,
        itemBuilder: (BuildContext cont, int index) {
          return ListTile(
            leading: CustomCircleAvatar(
              animationDuration: 300,
              radius: resposeveDes[79],
              imagePath: items[index]['avatar'],
              mySize: 20,
            ),
            title: Padding(
              padding: EdgeInsets.only(top: resposeveDes[80]),
              child: Text(
                items[index]['first_name'],
                style: TextStyle(
                    fontSize: resposeveDes[81], fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Text(
                '${Translations.of(context).ptYourLastName} ${items[index]['last_name']}\n ${Translations.of(context).ptYourId} ${items[index]['id']}',
                style: TextStyle(fontSize: resposeveDes[82])),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic> myRespon = widget.myResponFunction(context);
    double heightOfSliver = 0.0;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      heightOfSliver = MediaQuery.of(context).size.height * myRespon[83];
    } else {
      heightOfSliver = MediaQuery.of(context).size.height * myRespon[84];
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
          body: ScopedModelDescendant<MainModel>(
              rebuildOnChange: false,
              builder: (BuildContext context, Widget child, MainModel model) {
                Widget content = Center(
                  child: Text(
                    Translations.of(context).ptNoData,
                    style: TextStyle(fontSize: myRespon[85]),
                  ),
                );
                if (!model.isLoading) {
                  content = _buildPage(model, myRespon);
                } else if (model.isLoading) {
                  content = Center(
                    child: AdapativProgressIndicator(),
                  );
                }
                return content;
              })),
    );
  }
}
