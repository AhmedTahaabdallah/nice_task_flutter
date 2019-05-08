import 'package:flutter/material.dart';
import '../translation/translation_strings.dart';

class MorePage extends StatelessWidget {
  final Function myResponFunction;
  MorePage(this.myResponFunction);

  /*void _textMethod(int index){
    /*if(index == 0){
      print('Directory of Clubs');
    } else if(index == 1){
      print('Directory of stadiums');
    } else if(index == 2){
      print('who are we');
    }*/
  }*/
  Widget _buildGestureDetector(
      String title, int index, List<dynamic> resposeveDes) {
    return GestureDetector(
      //onTap: () => _textMethod(index),
      child: Padding(
        padding: EdgeInsets.only(
            top: resposeveDes[4],
            bottom: resposeveDes[4],
            left: resposeveDes[5],
            right: resposeveDes[5]),
        child: Text(
          title,
          textAlign: TextAlign.start,
          style: TextStyle(color: Colors.white, fontSize: resposeveDes[3]),
        ),
      ),
    );
  }

  Widget _buildText(BuildContext context, List<dynamic> resposeveDes) {
    final double width = MediaQuery.of(context).size.width;
    final bool isMedium = width <= 540.0;
    final bool isNormal = width <= 768.0;
    final bool isXlarge = width <= 1550.0;

    String imageType = '.png';
    if (isMedium) {
      imageType = '@2x.png';
    } else if (isNormal &&
        MediaQuery.of(context).orientation == Orientation.portrait) {
      imageType = '@2x.png';
    } else if (isNormal &&
        MediaQuery.of(context).orientation == Orientation.landscape) {
      imageType = '@2x.png';
    } else if (isXlarge &&
        MediaQuery.of(context).orientation == Orientation.portrait) {
      imageType = '@3x.png';
    } else if (isXlarge &&
        MediaQuery.of(context).orientation == Orientation.landscape) {
      imageType = '@3x.png';
    }
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/' + 'Group545' + imageType,
              width: resposeveDes[6],
              height: resposeveDes[7],
              fit: BoxFit.cover,
            ),
            _buildGestureDetector(
                Translations.of(context).directoryOfClubs, 0, resposeveDes),
            _buildGestureDetector(
                Translations.of(context).directoryOfStadiums, 1, resposeveDes),
            _buildGestureDetector(
                Translations.of(context).whoAreWe, 2, resposeveDes),
            _buildGestureDetector(
                Translations.of(context).rulesAndRegulations, 3, resposeveDes),
            _buildGestureDetector(
                Translations.of(context).committees, 4, resposeveDes),
            _buildGestureDetector(
                Translations.of(context).callUs, 5, resposeveDes),
            _buildGestureDetector(
                Translations.of(context).shareTheApp, 6, resposeveDes),
            _buildGestureDetector(
                Translations.of(context).subscribeToTheNewsletter,
                7,
                resposeveDes),
          ],
        )
      ],
    );
  }

  Widget _buildGestureDetectorForIcons(
      String image, List<dynamic> resposeveDes) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.only(
            top: resposeveDes[4],
            bottom: resposeveDes[4],
            left: resposeveDes[5],
            right: resposeveDes[5]),
        child: Image.asset('assets/' + image + resposeveDes[0]),
      ),
    );
  }

  Widget _buildIcons(List<dynamic> resposeveDes) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Column(
          children: <Widget>[
            _buildGestureDetectorForIcons('Icon', resposeveDes),
            _buildGestureDetectorForIcons('Icon2', resposeveDes),
            _buildGestureDetectorForIcons('Icon3', resposeveDes),
            _buildGestureDetectorForIcons('Icon5', resposeveDes),
            _buildGestureDetectorForIcons('Icon6', resposeveDes),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic> myRespon = myResponFunction(context);
    return Scaffold(
      //backgroundColor: Colors.indigo.shade900,
      backgroundColor: Color.fromRGBO(15, 22, 57, 1.0),
      body: ListView(
        children: <Widget>[
          _buildText(context, myRespon),
          _buildIcons(myRespon),
          SizedBox(
            height: myRespon[96],
          )
        ],
      ),
    );
  }
}
