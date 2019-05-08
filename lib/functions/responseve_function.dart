import 'package:flutter/material.dart';
List<dynamic> getResponseve(BuildContext cont){
  List<dynamic> myValues = [];
  final double width = MediaQuery.of(cont).size.width;
  final double height = MediaQuery.of(cont).size.height;
  final String orient = MediaQuery.of(cont).orientation.toString();

  final bool isSmall = width <= 330.0; // small screen with portrait Orientation
  final bool isMedium = width <= 540.0; // small screen with landscape Orientation and normall screen with portrait Orientation
  final bool isNormal = width <= 768.0; // large screen with portrait Orientation and normall screen with landscape Orientation
  final bool isLarge = width <= 992.0; // large screen with landscape Orientation and Xlarge screen with portrait Orientation
  final bool isXlarge = width <= 1550.0; // Xlarge screen with landscape Orientation
  Locale mylocale = Localizations.localeOf(cont);


  if(isSmall){
    myValues.add('.png'); // 0 Image Type in Deffrent Screen Width
    myValues.add(16.0); // 1 Size Box height for _buildBottomNavigationBarItem
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 16.0 - 5.0); // 2 BottomNavigationBarItem Text Font Size

    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 3 More Page Links Text Font Size
    myValues.add(10.0); // 4 More Page Links Padding
    myValues.add(20.0); // 5 More Page Links Padding
    myValues.add(150.0); // 6 More Page image width
    myValues.add(150.0); // 7 More Page image height

    myValues.add(10.0); // 8 Home Page Main Container Padding vertical
    myValues.add(15.0); // 9 Home Page Main Container Padding horizontal
    myValues.add(mylocale.languageCode.contains("en") ? 21.0 : 21 -5.0); // 10 Home Page last news Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 19.0 : 19.0 - 5.0); // 11 Home Page more Text Font Size
    myValues.add(15.0); // 12 Home Page Continer of Image
    myValues.add(7.0); // 13 Home Page Continer of Image border radiuos
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 14 Home Page Title of news Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 15 Home Page Title of news details Text Font Size
    myValues.add(20.0); // 16 Home Page Next Matxhes margin vertical
    myValues.add(mylocale.languageCode.contains("en") ? 21.0 : 21.0 - 5.0); // 17 Home Page Next Matches Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 19.0 : 19.0 - 5.0); // 18 Home Page more Text Font Size
    myValues.add(15.0); // 19 Home Page Continer margin vertical
    myValues.add(mylocale.languageCode.contains("en") ? 15.0 : 15.0 - 5.0); // 20 Home Page Club Name Text Font Size
    myValues.add(20.0); // 21 Size Box height for _buildBottomNavigationBarItem
    myValues.add(mylocale.languageCode.contains("en") ? 21.0 : 21.0 - 5.0); // 22 Home Page Latest Tweets Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 19.0 : 19.0 - 5.0); // 23 Home Page more Text Font Size
    myValues.add(15.0); // 24 Home Page Continer margin vertical
    myValues.add(25.0); // 25 Home Page Continer margin top
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 26 Home Page sport Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 16.0 - 5.0); // 27 Home Page acount Text Font Size
    myValues.add(7.0); // 28 Home Page Continer margin top
    myValues.add(18.0); // 29 Home Page Continer margin left
    myValues.add(18.0); // 30 Home Page Continer margin right
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 31 Home Page detailes Text Font Size
    myValues.add(20.0); // 32 Home Page size Box
    myValues.add(20.0); // 33 Home Page size Box
    myValues.add(2.5); // 34 Home Page Border Width
    myValues.add(7.0); // 35 Home Page Border Radius
    myValues.add(.25); // 36 Home Page Container Width
    myValues.add(.14); // 37 Home Page Container height
    myValues.add(.10); // 38 Home Page Image Width
    myValues.add(.10); // 39 Home Page Image height
    myValues.add(15.0); // 40 Home Page size box
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 41 Home Page Team name Text Font Size
    myValues.add(15.0); // 42 Home Page size box
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 16.0 - 5.0); // 43 Home Page winPresent Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 21.0 : 21.0 - 5.0); // 44 Home Page Expected the winner Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 21.0 : 21.0 -5.0); // 45 Home Page videos Text Font Size
    myValues.add(15.0); // 46 Home Page Continer margin vertical
    myValues.add(30.0); // 47 Home Page Continer margin vertical
    myValues.add(.33); // 48 Home Page Continer height
    myValues.add(7.0); // 49 Home Page Continer Border Radius
    myValues.add(mylocale.languageCode.contains("en") ? 21.0 : 21.0 -5.0); // 50 Home Page Sponsors Text Font Size
    myValues.add(15.0); // 51 Home Page Continer margin vertical
    myValues.add(25.0); // 52 Home Page Continer margin top
    myValues.add(60.0); // 53 Home Page Continer margin bottom
    myValues.add(.1); // 54 Home Page size box width

    myValues.add(.25); // 55 NewsList height Of Sliver in portrait mode
    myValues.add(.30); // 56 NewsList height Of Sliver in landscape mode
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 57 NewsList videos and images Text Font Size

    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 58 NewsList Page No News Founded Text Font Size
    myValues.add(.40); // 59 NewsList Page Container width
    myValues.add(mylocale.languageCode.contains("ar") ? .24 : .33); // 60 NewsList Page Container height
    myValues.add(7.0); // 61 NewsList Page Border Radius
    myValues.add(10.0); // 62 NewsList Page Container margin top
    myValues.add(mylocale.languageCode.contains("en") ? 19.0 : 19.0 - 5.0); // 63 NewsList Page news type Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 16.0 - 5.0); // 64 NewsList Page title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 12.0 - 5.0); // 65 NewsList Page date Text Font Size

    myValues.add(.4); // 66 News Page image height
    myValues.add(15.0); // 67 News Page Container margin horizontal
    myValues.add(10.0); // 68 News Page Container margin vertical
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 69 News Page title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 70 News Page news Type Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 16.0 - 5.0); // 71 News Page date Text Font Size
    myValues.add(10.0); // 72 News Page sized box height
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 73 News Page description Text Font Size
    myValues.add(15.0); // 74 News Page sized box height

    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 75 NewsList tab label Text Font Size

    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 76 pt Page Alert Dailog Title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 77 pt Page Alert Dailog Content Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 78 pt Page Alert Dailog Ok Text Font Size
    myValues.add(60.0); // 79 pt Page avater image radius
    myValues.add(13.0); // 80 pt Page padding top
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 81 pt Page title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 16.0 - 5.0); // 82 pt sub title Text Font Size
    myValues.add(.17); // 83 pt Page height Of Sliver
    myValues.add(.16); // 84 pt Page height Of Sliver
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 85 pt Page no data Text Font Size

    myValues.add(1.5); // 86 pt Home Page Sized Box height
    myValues.add(5.0); // 87 pt Home Page Sized Box height
    myValues.add(6.0); // 88 pt Home Page Sized Box height
    myValues.add(10.0); // 89 pt Home Page BorderRadius
    myValues.add(12.0); // 90 pt Home Page Sized Box height
    myValues.add(.4); // 91 pt Home Page Sized Box width

    myValues.add(.35); // 92 pt Home Screen Page Container height
    myValues.add(10.0); // 93 pt Home Screen Page Sized Box height
    myValues.add(.17); // 94 Home Screen Page height Of Sliver
    myValues.add(.16); // 95 Home Screen Page height Of Sliver

    myValues.add(15.0); // 96 More Page Sized Box height

    myValues.add(20.0); // 97 news List Page margin top
    myValues.add(4.0); // 98 news List Page Sized Box height
    myValues.add(5.0); // 99 news List Page Sized Box height

    myValues.add(.17); // 100 Statistics Page height Of Sliver
    myValues.add(.16); // 101 Statistics Page height Of Sliver

    myValues.add(mylocale.languageCode.contains("en") ? 13.0 : 13.0 - 5.0); // 102 Home Page time Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 13.0 : 13.0 - 5.0); // 103 Home Page time Text Font Size

    //double boxHieght1 = 34.0;
    /*if(orient == 'portrait'){
      boxHieght1 = 34.0;
    } else {
      boxHieght1 = height <= 540.0 ? 34.0 : 34.0;
    }*/
    myValues.add(mylocale.languageCode.contains("ar") ? 34.0 : 30.0); // 104 Home Page Language Tab Icon Size
    myValues.add(mylocale.languageCode.contains("ar") ? 5.0 : 0.0); // 105 Home Page Language Tab Size box height

    myValues.add(25.0); // 106 Home Screen floating action button icon size
    } else if(isMedium){
    myValues.add('.png'); // 0 Image Type in Deffrent Screen Width
    myValues.add(16.0); // 1 Size Box height for _buildBottomNavigationBarItem
    myValues.add(mylocale.languageCode.contains("en") ? 17.0 : 17.0 - 5.0); // 2 BottomNavigationBarItem Text Font Size

    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 3 More Page Links Text Font Size
    myValues.add(10.0); // 4 More Page Links Padding
    myValues.add(20.0); // 5 More Page Links Padding
    myValues.add(150.0); // 6 More Page image width
    myValues.add(150.0); // 7 More Page image height

    myValues.add(10.0); // 8 Home Page Main Container Padding vertical
    myValues.add(15.0); // 9 Home Page Main Container Padding horizontal
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24 -5.0); // 10 Home Page last news Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 11 Home Page more Text Font Size
    myValues.add(15.0); // 12 Home Page Continer of Image
    myValues.add(7.0); // 13 Home Page Continer of Image border radiuos
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 14 Home Page Title of news Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 15 Home Page Title of news details Text Font Size
    myValues.add(20.0); // 16 Home Page Next Matxhes margin vertical
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 17 Home Page Next Matches Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 18 Home Page more Text Font Size
    myValues.add(15.0); // 19 Home Page Continer margin vertical
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 20 Home Page Club Name Text Font Size
    myValues.add(20.0); // 21 Size Box height for _buildBottomNavigationBarItem
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 22 Home Page Latest Tweets Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 23 Home Page more Text Font Size
    myValues.add(15.0); // 24 Home Page Continer margin vertical
    myValues.add(25.0); // 25 Home Page Continer margin top
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 26 Home Page sport Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 16.0 - 5.0); // 27 Home Page acount Text Font Size
    myValues.add(7.0); // 28 Home Page Continer margin top
    myValues.add(18.0); // 29 Home Page Continer margin left
    myValues.add(18.0); // 30 Home Page Continer margin right
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 31 Home Page detailes Text Font Size
    myValues.add(20.0); // 32 Home Page size Box
    myValues.add(20.0); // 33 Home Page size Box
    myValues.add(2.5); // 34 Home Page Border Width
    myValues.add(7.0); // 35 Home Page Border Radius
    myValues.add(.25); // 36 Home Page Container Width
    myValues.add(height <= 330.0 ? .25 : .14); // 37 Home Page Container height
    myValues.add(.10); // 38 Home Page Image Width
    myValues.add(.10); // 39 Home Page Image height
    myValues.add(15.0); // 40 Home Page size box
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 41 Home Page Team name Text Font Size
    myValues.add(15.0); // 42 Home Page size box
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 16.0 - 5.0); // 43 Home Page winPresent Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 44 Home Page Expected the winner Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 -5.0); // 45 Home Page videos Text Font Size
    myValues.add(15.0); // 46 Home Page Continer margin vertical
    myValues.add(30.0); // 47 Home Page Continer margin vertical
    myValues.add(height <= 330.0 ? .5 : .33); // 48 Home Page Continer height
    myValues.add(7.0); // 49 Home Page Continer Border Radius
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 -5.0); // 50 Home Page Sponsors Text Font Size
    myValues.add(15.0); // 51 Home Page Continer margin vertical
    myValues.add(25.0); // 52 Home Page Continer margin top
    myValues.add(60.0); // 53 Home Page Continer margin bottom
    myValues.add(.1); // 54 Home Page size box width

    myValues.add(.18); // 55 NewsList height Of Sliver in portrait mode
    myValues.add(.30); // 56 NewsList height Of Sliver in landscape mode
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 57 NewsList videos and images Text Font Size

    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 58 NewsList Page No News Founded Text Font Size
    myValues.add(.35); // 59 NewsList Page Container width
    double si = 0.0;
    si = mylocale.languageCode.contains("ar") ? .17 : .18;
    double si2 = mylocale.languageCode.contains("ar") ? .37 : .4;
    double si3 = height <= 330.0 ? si2 : si;
    myValues.add(si3); // 60 NewsList Page Container height
    myValues.add(7.0); // 61 NewsList Page Border Radius
    myValues.add(5.0); // 62 NewsList Page Container margin top
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 63 NewsList Page news type Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 64 NewsList Page title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 14.0 : 14.0 - 5.0); // 65 NewsList Page date Text Font Size

    myValues.add(.4); // 66 News Page image height
    myValues.add(15.0); // 67 News Page Container margin horizontal
    myValues.add(10.0); // 68 News Page Container margin vertical
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 69 News Page title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 70 News Page news Type Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 16.0 - 5.0); // 71 News Page date Text Font Size
    myValues.add(10.0); // 72 News Page sized box height
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 73 News Page description Text Font Size
    myValues.add(15.0); // 74 News Page sized box height

    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 75 NewsList tab label Text Font Size

    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 76 pt Page Alert Dailog Title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 77 pt Page Alert Dailog Content Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 78 pt Page Alert Dailog Ok Text Font Size
    myValues.add(75.0); // 79 pt Page avater image radius
    myValues.add(18.0); // 80 pt Page padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 81 pt Page title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 82 pt sub title Text Font Size
    myValues.add(.17); // 83 pt Page height Of Sliver
    myValues.add(.16); // 84 pt Page height Of Sliver
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 85 pt Page no data Text Font Size

    myValues.add(1.5); // 86 pt Home Page Sized Box height
    myValues.add(5.0); // 87 pt Home Page Sized Box height
    myValues.add(6.0); // 88 pt Home Page Sized Box height
    myValues.add(10.0); // 89 pt Home Page BorderRadius
    myValues.add(12.0); // 90 pt Home Page Sized Box height
    myValues.add(.4); // 91 pt Home Page Sized Box width

    myValues.add(height <= 330.0 ? .5 : .35); // 92 pt Home Screen Page Container height
    myValues.add(10.0); // 93 pt Home Screen Page Sized Box height
    myValues.add(.17); // 94 Home Screen Page height Of Sliver
    myValues.add(.16); // 95 Home Screen Page height Of Sliver

    myValues.add(15.0); // 96 More Page Sized Box height

    myValues.add(20.0); // 97 news List Page margin top
    myValues.add(4.0); // 98 news List Page Sized Box height
    myValues.add(5.0); // 99 news List Page Sized Box height

    myValues.add(.17); // 100 Statistics Page height Of Sliver
    myValues.add(.16); // 101 Statistics Page height Of Sliver

    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 102 Home Page time Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 103 Home Page time Text Font Size

    /*double boxHieght1 = 34.0;
    if(orient == 'portrait'){
      boxHieght1 = 34.0;
    } else {
      boxHieght1 = height <= 540.0 ? 34.0 : 34.0;
    }
    myValues.add(boxHieght1); // 104 Home Page Language Tab Icon Size
    myValues.add(mylocale.languageCode.contains("ar") ? 5.0 : 0.0); // 105 Home Page Language Tab Size box height*/

    double boxHieght8 = 32.0;
    if(orient == 'portrait'){
      boxHieght8 = 32.0;
    } else {
      double si = mylocale.languageCode.contains("en") ? 30.0 : 35.0;
      boxHieght8 = height <= 330.0 ? si : 32.0;
    }
    myValues.add(boxHieght8); // 104 Home Page Language Tab Icon Size
    double boxHieght9 = mylocale.languageCode.contains("ar") ? 5.0 : 5.0;
    double si1 = mylocale.languageCode.contains("ar") ? 5.0 : 0.0;
    if(orient == 'portrait'){
      boxHieght9 = si1;
    } else {
      double si = mylocale.languageCode.contains("ar") ? 5.0 : 0.0;
      boxHieght9 = height <= 330.0 ? si : si1;
    }
    myValues.add(boxHieght9); // 105 Home Page Language Tab Size box height

    myValues.add(30.0); // 106 Home Screen floating action button icon size
  } else if(isNormal){
    myValues.add('@2x.png'); // 0 Image Type in Different Screen Width
    double boxHieght1 = 15.0;
    if(orient == 'portrait'){
      boxHieght1 = 15.0;
    } else {
      boxHieght1 = height <= 540.0 ? 15.0 : 30.0;
    }
    myValues.add(boxHieght1); // 1 Size Box height for _buildBottomNavigationBarItem
    double fontSiz = 23.0;
    if(orient == 'portrait'){
      fontSiz = mylocale.languageCode.contains("en") ? 23.0 : 23.0 - 5.0;
    } else {
      fontSiz = mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0;
    }
    myValues.add(fontSiz); // 2 BottomNavigationBarItem Text Font Size

    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 3 More Page Links Text Font Size
    myValues.add(10.0); // 4 More Page Links Padding
    myValues.add(20.0); // 5 More Page Links Padding
    myValues.add(150.0); // 6 More Page image width
    myValues.add(150.0); // 7 More Page image height

    myValues.add(10.0); // 8 Home Page Main Container Padding vertical
    myValues.add(15.0); // 9 Home Page Main Container Padding horizontal
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 10 Home Page last news Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 11 Home Page more Text Font Size
    myValues.add(20.0); // 12 Home Page Continer of Image
    myValues.add(7.0); // 13 Home Page Continer of Image border radiuos
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 14 Home Page Title of news Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 15 Home Page Title of news details Text Font Size
    myValues.add(27.0); // 16 Home Page Next Matxhes margin vertical
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 17 Home Page Next Matches Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 18 Home Page more Text Font Size
    myValues.add(20.0); // 19 Home Page Continer margin vertical
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 20 Home Page Club Name Text Font Size
    double boxHieght = 20.0;
    if(orient == 'portrait'){
      boxHieght = 20.0;
    } else {
      boxHieght = height <= 540.0 ? 20.0 : 40.0;
    }
    myValues.add(boxHieght); // 21 Size Box height for _buildBottomNavigationBarItem
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 22 Home Page Latest Tweets Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 23 Home Page more Text Font Size
    myValues.add(20.0); // 24 Home Page Continer margin vertical
    myValues.add(30.0); // 25 Home Page Continer margin top
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 26 Home Page sport Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 27 Home Page acount Text Font Size
    myValues.add(12.0); // 28 Home Page Continer margin top
    myValues.add(25.0); // 29 Home Page Continer margin left
    myValues.add(25.0); // 30 Home Page Continer margin right
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 31 Home Page detailes Text Font Size
    myValues.add(30.0); // 32 Home Page size Box
    myValues.add(30.0); // 33 Home Page size Box
    myValues.add(2.5); // 34 Home Page Border Width
    myValues.add(7.0); // 35 Home Page Border Radius
    myValues.add(.25); // 36 Home Page Container Width
    double boxHieght6 = .2;
    if(orient == 'portrait'){
      boxHieght6 = .2;
    } else {
      boxHieght6 = height <= 540.0 ? .3 : .16;
    }
    myValues.add(boxHieght6); // 37 Home Page Container height
    myValues.add(.10); // 38 Home Page Image Width
    myValues.add(.10); // 39 Home Page Image height
    myValues.add(20.0); // 40 Home Page size box
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 41 Home Page Team name Text Font Size
    myValues.add(20.0); // 42 Home Page size box
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 43 Home Page winPresent Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 44 Home Page Expected the winner Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 45 Home Page videos Text Font Size
    myValues.add(20.0); // 46 Home Page Continer margin vertical
    myValues.add(40.0); // 47 Home Page Continer margin vertical
    myValues.add(.50); // 48 Home Page Continer height
    myValues.add(7.0); // 49 Home Page Continer Border Radius
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 50 Home Page Sponsors Text Font Size
    myValues.add(30.0); // 51 Home Page Continer margin vertical
    myValues.add(25.0); // 52 Home Page Continer margin top
    myValues.add(60.0); // 53 Home Page Continer margin bottom
    myValues.add(.1); // 54 Home Page size box width

    myValues.add(.18); // 55 NewsList height Of Sliver in portrait mode
    myValues.add(.30); // 56 NewsList height Of Sliver in landscape mode
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 57 NewsList videos and images Text Font Size

    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 58 NewsList Page No News Founded Text Font Size
    myValues.add(.45); // 59 NewsList Page Container width
    double boxHieght4 = 40.0;
    if(orient == 'portrait'){
      boxHieght4 = .40;
    } else {
      double hei = mylocale.languageCode.contains("ar") ? .18 : .19;
      double hei1 = mylocale.languageCode.contains("ar") ? .4 : .43;
      boxHieght4 = height <= 540.0 ? hei1 :hei;
    }
    myValues.add(boxHieght4); // 60 NewsList Page Container height
    myValues.add(7.0); // 61 NewsList Page Border Radius
    myValues.add(10.0); // 62 NewsList Page Container margin top
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 63 NewsList Page news type Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 26.0 - 5.0); // 64 NewsList Page title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 65 NewsList Page date Text Font Size

    myValues.add(.4); // 66 News Page image height
    myValues.add(20.0); // 67 News Page Container margin horizontal
    myValues.add(15.0); // 68 News Page Container margin vertical
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 69 News Page title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 70 News Page news Type Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 71 News Page date Text Font Size
    myValues.add(15.0); // 72 News Page sized box height
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 73 News Page description Text Font Size
    myValues.add(20.0); // 74 News Page sized box height

    myValues.add(mylocale.languageCode.contains("en") ? 29.0 : 29.0 - 5.0); // 75 NewsList tab label Text Font Size

    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 76 pt Page Alert Dailog Title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 77 pt Page Alert Dailog Content Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 78 pt Page Alert Dailog Ok Text Font Size
    myValues.add(115.0); // 79 pt Page avater image radius
    myValues.add(18.0); // 80 pt Page padding top
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 81 pt Page title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 82 pt sub title Text Font Size
    myValues.add(.17); // 83 pt Page height Of Sliver
    myValues.add(.16); // 84 pt Page height Of Sliver
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 85 pt Page no data Text Font Size

    myValues.add(1.5); // 86 pt Home Page Sized Box height
    myValues.add(5.0); // 87 pt Home Page Sized Box height
    myValues.add(6.0); // 88 pt Home Page Sized Box height
    myValues.add(10.0); // 89 pt Home Page BorderRadius
    myValues.add(12.0); // 90 pt Home Page Sized Box height
    myValues.add(.4); // 91 pt Home Page Sized Box width

    myValues.add(.50); // 92 pt Home Screen Page Container height
    myValues.add(10.0); // 93 pt Home Screen Page Sized Box height
    myValues.add(.17); // 94 Home Screen Page height Of Sliver
    myValues.add(.16); // 95 Home Screen Page height Of Sliver

    myValues.add(15.0); // 96 More Page Sized Box height

    myValues.add(20.0); // 97 news List Page margin top
    myValues.add(4.0); // 98 news List Page Sized Box height
    myValues.add(5.0); // 99 news List Page Sized Box height

    myValues.add(.17); // 100 Statistics Page height Of Sliver
    myValues.add(.16); // 101 Statistics Page height Of Sliver

    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 102 Home Page time Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 103 Home Page time Text Font Size

    double boxHieght8 = 34.0;
    double si5 = mylocale.languageCode.contains("en") ? 53.0 : 70.0;
    if(orient == 'portrait'){
      boxHieght8 = si5;
    } else {
      double si = mylocale.languageCode.contains("en") ? 25.0 : 35.0;
      boxHieght8 = height <= 540.0 ? si : si5;
    }
    myValues.add(boxHieght8); // 104 Home Page Language Tab Icon Size
    double boxHieght9 = mylocale.languageCode.contains("ar") ? 5.0 : 5.0;
    double si1 = mylocale.languageCode.contains("ar") ? 5.0 : 5.0;
    if(orient == 'portrait'){
      boxHieght9 = si1;
    } else {
      double si = mylocale.languageCode.contains("ar") ? 10.0 : 0.0;
      boxHieght9 = height <= 540.0 ? si : si1;
    }
    myValues.add(boxHieght9); // 105 Home Page Language Tab Size box height

    myValues.add(35.0); // 106 Home Screen floating action button icon size
  }
  else if(isLarge){
    myValues.add('@2x.png'); // 0 Image Type in Different Screen Width
    double boxHieght = 15.0;
    if(orient == 'portrait'){
      boxHieght = 15.0;
    } else {
      boxHieght = 30.0;
    }
    myValues.add(boxHieght); // 1 Size Box height for _buildBottomNavigationBarItem

    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 2 BottomNavigationBarItem Text Font Size

    myValues.add(mylocale.languageCode.contains("en") ? 38.0 : 38.0 - 5.0); // 3 More Page Links Text Font Size
    myValues.add(10.0); // 4 More Page Links Padding
    myValues.add(20.0); // 5 More Page Links Padding
    myValues.add(150.0); // 6 More Page image width
    myValues.add(150.0); // 7 More Page image height

    myValues.add(10.0); // 8 Home Page Main Container Padding vertical
    myValues.add(15.0); // 9 Home Page Main Container Padding horizontal
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 34.0 - 5.0); // 10 Home Page last news Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 31.0 : 31.0 - 5.0); // 11 Home Page more Text Font Size
    myValues.add(20.0); // 12 Home Page Continer of Image
    myValues.add(7.0); // 13 Home Page Continer of Image border radiuos
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 14 Home Page Title of news Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 15 Home Page Title of news details Text Font Size
    myValues.add(27.0); // 16 Home Page Next Matxhes margin vertical
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 34.0 - 5.0); // 17 Home Page Next Matches Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 31.0 : 31.0 - 5.0); // 18 Home Page more Text Font Size
    myValues.add(20.0); // 19 Home Page Continer margin vertical
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 20 Home Page Club Name Text Font Size
    double boxHieght2 = 20.0;
    if(orient == 'portrait'){
      boxHieght2 = 20.0;
    } else {
      boxHieght2 = 40.0;
    }
    myValues.add(boxHieght2); // 21 Size Box height for _buildBottomNavigationBarItem
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 34.0 - 5.0); // 22 Home Page Latest Tweets Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 31.0 : 31.0 - 5.0); // 23 Home Page more Text Font Size
    myValues.add(20.0); // 24 Home Page Continer margin vertical
    myValues.add(30.0); // 25 Home Page Continer margin top
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 26 Home Page sport Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 27 Home Page acount Text Font Size
    myValues.add(12.0); // 28 Home Page Continer margin top
    myValues.add(25.0); // 29 Home Page Continer margin left
    myValues.add(25.0); // 30 Home Page Continer margin right
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 31 Home Page detailes Text Font Size
    myValues.add(30.0); // 32 Home Page size Box
    myValues.add(30.0); // 33 Home Page size Box
    myValues.add(2.5); // 34 Home Page Border Width
    myValues.add(7.0); // 35 Home Page Border Radius
    myValues.add(.25); // 36 Home Page Container Width
    double boxHieght3 = .25;
    if(orient == 'portrait'){
      boxHieght3 = .25;
    } else {
      boxHieght3 = height < 1050.0 ? .30 : .15;
    }
    myValues.add(boxHieght3); // 37 Home Page Container height
    myValues.add(.10); // 38 Home Page Image Width
    myValues.add(.10); // 39 Home Page Image height
    myValues.add(20.0); // 40 Home Page size box
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 41 Home Page Team name Text Font Size
    myValues.add(20.0); // 42 Home Page size box
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 43 Home Page winPresent Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 34.0 - 5.0); // 44 Home Page Expected the winner Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 34.0 - 5.0); // 45 Home Page videos Text Font Size
    myValues.add(20.0); // 46 Home Page Continer margin vertical
    myValues.add(40.0); // 47 Home Page Continer margin vertical
    double boxHieght4 = .55;
    if(orient == 'portrait'){
      boxHieght4 = .55;
    } else {
      boxHieght4 = height < 1050.0 ? .55 : .4;
    }
    myValues.add(boxHieght4); // 48 Home Page Continer height
    myValues.add(7.0); // 49 Home Page Continer Border Radius
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 34.0 - 5.0); // 50 Home Page Sponsors Text Font Size
    myValues.add(30.0); // 51 Home Page Continer margin vertical
    myValues.add(25.0); // 52 Home Page Continer margin top
    myValues.add(60.0); // 53 Home Page Continer margin bottom
    myValues.add(.1); // 54 Home Page size box width

    myValues.add(.18); // 55 NewsList height Of Sliver in portrait mode
    myValues.add(.30); // 56 NewsList height Of Sliver in landscape mode
    myValues.add(mylocale.languageCode.contains("en") ? 35.0 : 35.0 - 5.0); // 57 NewsList videos and images Text Font Size

    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 58 NewsList Page No News Founded Text Font Size
    myValues.add(.45); // 59 NewsList Page Container width
    double boxHieght5 = .37;
    if(orient == 'portrait'){
      boxHieght5 = .37;
    } else {
      double num = mylocale.languageCode.contains("ar") ? .16 : .17;
      double num2 = mylocale.languageCode.contains("ar") ? .16 : .37;
      boxHieght5 = height < 1050 ? num2 : num;
    }
    myValues.add(boxHieght5); // 60 NewsList Page Container height
    myValues.add(7.0); // 61 NewsList Page Border Radius
    myValues.add(10.0); // 62 NewsList Page Container margin top
    double boxHieght7 = 38.0;
    if(orient == 'portrait'){
      boxHieght7 = mylocale.languageCode.contains("en") ? 38.0 : 38.0 - 5.0;
    } else {
      boxHieght7 = mylocale.languageCode.contains("en") ? 40.0 : 40.0 - 5.0;
    }
    myValues.add(boxHieght7); // 63 NewsList Page news type Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 64 NewsList Page title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 65 NewsList Page date Text Font Size

    myValues.add(.4); // 66 News Page image height
    myValues.add(20.0); // 67 News Page Container margin horizontal
    myValues.add(15.0); // 68 News Page Container margin vertical
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 69 News Page title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 70 News Page news Type Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 71 News Page date Text Font Size
    myValues.add(15.0); // 72 News Page sized box height
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 73 News Page description Text Font Size
    myValues.add(20.0); // 74 News Page sized box height

    myValues.add(mylocale.languageCode.contains("en") ? 35.0 : 35.0 - 5.0); // 75 NewsList tab label Text Font Size

    myValues.add(mylocale.languageCode.contains("en") ? 35.0 : 35.0 - 5.0); // 76 pt Page Alert Dailog Title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 33.0 : 33.0 - 5.0); // 77 pt Page Alert Dailog Content Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 33.0 : 33.0 - 5.0); // 78 pt Page Alert Dailog Ok Text Font Size
    myValues.add(140.0); // 79 pt Page avater image radius
    myValues.add(25.0); // 80 pt Page padding top
    myValues.add(mylocale.languageCode.contains("en") ? 38.0 : 38.0 - 5.0); // 81 pt Page title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 35.0 : 35.0 - 5.0); // 82 pt sub title Text Font Size
    myValues.add(.17); // 83 pt Page height Of Sliver
    myValues.add(.16); // 84 pt Page height Of Sliver
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 85 pt Page no data Text Font Size

    myValues.add(1.5); // 86 pt Home Page Sized Box height
    myValues.add(5.0); // 87 pt Home Page Sized Box height
    myValues.add(6.0); // 88 pt Home Page Sized Box height
    myValues.add(10.0); // 89 pt Home Page BorderRadius
    myValues.add(12.0); // 90 pt Home Page Sized Box height
    myValues.add(.4); // 91 pt Home Page Sized Box width
    double boxHieght1 = .55;
    if(orient == 'portrait'){
      boxHieght1 = .55;
    } else {
      boxHieght1 = height < 1050.0 ? .55 : .4;
    }
    myValues.add(boxHieght1); // 92 Home Screen Page Container height
    myValues.add(10.0); // 93 Home Screen Page Sized Box height
    myValues.add(.17); // 94 Home Screen Page height Of Sliver
    myValues.add(.16); // 95 Home Screen Page height Of Sliver

    myValues.add(15.0); // 96 More Page Sized Box height

    myValues.add(20.0); // 97 news List Page margin top
    /*double boxHieght6 = 4.0;
    if(orient == 'portrait'){
      boxHieght6 = 4.0;
    } else {
      boxHieght6 = 10.0;
    }*/
    myValues.add(4.0); // 98 news List Page Sized Box height
    myValues.add(5.0); // 99 news List Page Sized Box height

    myValues.add(.17); // 100 Statistics Page height Of Sliver
    myValues.add(.16); // 101 Statistics Page height Of Sliver

    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 102 Home Page time Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 103 Home Page time Text Font Size

    double boxHieght8 = 70.0;
    if(orient == 'portrait'){
      boxHieght8 = 70.0;
    } else {
      double si =mylocale.languageCode.contains("ar") ? 70.0 : 53.0;
      boxHieght8 = height <= 1550.0 ? si : 70.0;
    }
    myValues.add(boxHieght8); // 104 Home Page Language Tab Icon Size
    myValues.add(mylocale.languageCode.contains("ar") ? 5.0 : 0.0); // 105 Home Page Language Tab Size box height

    myValues.add(40.0); // 106 Home Screen floating action button icon size
    } else if(isXlarge){
    myValues.add('@3x.png'); // 0 Image Type in Deffrent Screen Width
    double boxHieght1 = 15.0;
    if(orient == 'portrait'){
      boxHieght1 = 15.0;
    } else {
      boxHieght1 = 30.0;
    }
    myValues.add(boxHieght1); // 1 Size Box height for _buildBottomNavigationBarItem
    myValues.add(mylocale.languageCode.contains("en") ? 38.0 : 38.0 - 5.0); // 2 BottomNavigationBarItem Text Font Size

    myValues.add(mylocale.languageCode.contains("en") ? 45.0 : 45.0 - 5.0); // 3 More Page Links Text Font Size
    myValues.add(15.0); // 4 More Page Links Padding
    myValues.add(20.0); // 5 More Page Links Padding
    myValues.add(150.0); // 6 More Page image width
    myValues.add(150.0); // 7 More Page image height

    myValues.add(10.0); // 8 Home Page Main Container Padding vertical
    myValues.add(15.0); // 9 Home Page Main Container Padding horizontal
    myValues.add(mylocale.languageCode.contains("en") ? 47.0 : 47.0 - 5.0); // 10 Home Page last news Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 45.0 : 44.0 - 5.0); // 11 Home Page more Text Font Size
    myValues.add(25.0); // 12 Home Page Continer of Image
    myValues.add(7.0); // 13 Home Page Continer of Image border radiuos
    myValues.add(mylocale.languageCode.contains("en") ? 47.0 : 47.0 - 5.0); // 14 Home Page Title of news Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 47.0 : 47.0 - 5.0); // 15 Home Page Title of news details Text Font Size
    myValues.add(35.0); // 16 Home Page Next Matxhes margin vertical
    myValues.add(mylocale.languageCode.contains("en") ? 47.0 : 47.0 - 5.0); // 17 Home Page Next Matches Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 45.0 : 45.0 - 5.0); // 18 Home Page more Text Font Size
    myValues.add(25.0); // 19 Home Page Continer margin vertical
    myValues.add(mylocale.languageCode.contains("en") ? 47.0 : 47.0 - 5.0); // 20 Home PClub Name Text Font Size
    double boxHieght = 20.0;
    if(orient == 'portrait'){
      boxHieght = 20.0;
    } else {
      boxHieght = 40.0;
    }
    myValues.add(boxHieght); // 21 Size Box height for _buildBottomNavigationBarItem
    myValues.add(mylocale.languageCode.contains("en") ? 47.0 : 47.0 - 5.0); // 22 Home Page Latest Tweets Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 45.0 : 45.0 - 5.0); // 23 Home Page more Text Font Size
    myValues.add(25.0); // 24 Home Page Continer margin vertical
    myValues.add(35.0); // 25 Home Page Continer margin top
    myValues.add(mylocale.languageCode.contains("en") ? 47.0 : 47.0 - 5.0); // 26 Home Page sport Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 40.0 - 5.0); // 27 Home Page acount Text Font Size
    myValues.add(18.0); // 28 Home Page Continer margin top
    myValues.add(32.0); // 29 Home Page Continer margin left
    myValues.add(32.0); // 30 Home Page Continer margin right
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 40.0 - 5.0); // 31 Home Page detailes Text Font Size
    myValues.add(35.0); // 32 Home Page size Box
    myValues.add(35.0); // 33 Home Page size Box
    myValues.add(2.5); // 34 Home Page Border Width
    myValues.add(7.0); // 35 Home Page Border Radius
    myValues.add(.25); // 36 Home Page Container Width
    myValues.add(.25); // 37 Home Page Container height
    myValues.add(.10); // 38 Home Page Image Width
    myValues.add(.10); // 39 Home Page Image height
    myValues.add(25.0); // 40 Home Page size box
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 40.0 - 5.0); // 41 Home Page Team name Text Font Size
    myValues.add(25.0); // 42 Home Page size box
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 26.0 - 5.0); // 43 Home Page winPresent Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 47.0 : 47.0 - 5.0); // 44 Home Page Expected the winner Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 47.0 : 47.0 - 5.0); // 45 Home Page videos Text Font Size
    myValues.add(25.0); // 46 Home Page Continer margin vertical
    myValues.add(45.0); // 47 Home Page Continer margin vertical
    myValues.add(.5); // 48 Home Page Continer height
    myValues.add(7.0); // 49 Home Page Continer Border Radius
    myValues.add(mylocale.languageCode.contains("en") ? 47.0 : 47.0 - 5.0); // 50 Home Page Sponsors Text Font Size
    myValues.add(25.0); // 51 Home Page Continer margin vertical
    myValues.add(25.0); // 52 Home Page Continer margin top
    myValues.add(60.0); // 53 Home Page Continer margin bottom
    myValues.add(.1); // 54 Home Page size box width

    myValues.add(.18); // 55 NewsList height Of Sliver in portrait mode
    myValues.add(.30); // 56 NewsList height Of Sliver in landscape mode
    myValues.add(mylocale.languageCode.contains("en") ? 45.0 : 45.0 - 5.0); // 57 NewsList videos and images Text Font Size

    myValues.add(mylocale.languageCode.contains("en") ? 45.0 : 45.0 - 5.0); // 58 NewsList Page No News Founded Text Font Size
    myValues.add(.35); // 59 NewsList Page Container width

    myValues.add(mylocale.languageCode.contains("ar") ? .21 : .23); // 60 NewsList Page Container height
    myValues.add(7.0); // 61 NewsList Page Border Radius
    myValues.add(15.0); // 62 NewsList Page Container margin top
    myValues.add(mylocale.languageCode.contains("en") ? 43.0 : 43.0 - 5.0); // 63 NewsList Page news type Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 64 NewsList Page title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 65 NewsList Page date Text Font Size

    myValues.add(.5); // 66 News Page image height
    myValues.add(25.0); // 67 News Page Container margin horizontal
    myValues.add(20.0); // 68 News Page Container margin vertical
    myValues.add(mylocale.languageCode.contains("en") ? 42.0 : 42.0 - 5.0); // 69 News Page title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 40.0 - 5.0); // 70 News Page news Type Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 71 News Page date Text Font Size
    myValues.add(20.0); // 72 News Page sized box height
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 28.0 - 5.0); // 73 News Page description Text Font Size
    myValues.add(25.0); // 74 News Page sized box height

    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 40.0 - 5.0); // 75 NewsList tab label Text Font Size

    myValues.add(mylocale.languageCode.contains("en") ? 42.0 : 42.0 - 5.0); // 76 pt Page Alert Dailog Title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 40.0 - 5.0); // 77 pt Page Alert Dailog Content Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 40.0 - 5.0); // 78 pt Page Alert Dailog Ok Text Font Size
    myValues.add(150.0); // 79 pt Page avater image radius
    myValues.add(18.0); // 80 pt Page padding top
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 40.0 - 5.0); // 81 pt Page title Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 38.0 : 38.0 - 5.0); // 82 pt sub title Text Font Size
    myValues.add(.17); // 83 pt Page height Of Sliver
    myValues.add(.16); // 84 pt Page height Of Sliver
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 40.0 - 5.0); // 85 pt Page no data Text Font Size

    myValues.add(10.0); // 86 Home Page Sized Box height
    myValues.add(5.0); // 87 Home Page Sized Box height
    myValues.add(6.0); // 88 Home Page Sized Box height
    myValues.add(10.0); // 89 Home Page BorderRadius
    myValues.add(12.0); // 90 Home Page Sized Box height
    myValues.add(.4); // 91 Home Page Sized Box width

    myValues.add(.5); // 92 Home Screen Page Container height
    myValues.add(10.0); // 93 Home Screen Page Sized Box height
    myValues.add(.17); // 94 Home Screen Page height Of Sliver
    myValues.add(.16); // 95 Home Screen Page height Of Sliver

    myValues.add(15.0); // 96 More Page Sized Box height

    myValues.add(20.0); // 97 news List Page margin top
    myValues.add(4.0); // 98 news List Page Sized Box height
    myValues.add(5.0); // 99 news List Page Sized Box height

    myValues.add(.17); // 100 Statistics Page height Of Sliver
    myValues.add(.16); // 101 Statistics Page height Of Sliver

    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 40.0 - 5.0); // 102 Home Page time Text Font Size
    myValues.add(mylocale.languageCode.contains("en") ? 38.0 : 38.0 - 5.0); // 103 Home Page time Text Font Size

    //double boxHieght8 = 34.0;
    /*if(orient == 'portrait'){
      boxHieght8 = 34.0;
    } else {
      boxHieght8 = height <= 768.0 ? 34.0 : 34.0;
    }*/
    myValues.add(mylocale.languageCode.contains("ar") ? 70.0 : 53.0); // 104 Home Page Language Tab Icon Size
    myValues.add(mylocale.languageCode.contains("ar") ? 5.0 : 0.0); // 105 Home Page Language Tab Size box height

    myValues.add(42.0); // 106 Home Screen floating action button icon size
  }
  return myValues;
}