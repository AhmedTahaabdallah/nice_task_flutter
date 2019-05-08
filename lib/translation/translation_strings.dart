import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../l10n/messages_all.dart';

class Translations {
  static Future<Translations> load(Locale locale) {
    final String name =
        (locale.countryCode != null && locale.countryCode.isEmpty)
            ? locale.languageCode
            : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((dynamic _) {
      Intl.defaultLocale = localeName;
      return new Translations();
    });
  }

  static Translations of(BuildContext context) {
    return Localizations.of<Translations>(context, Translations);
  }



  String get language {
    return Intl.message(
      'عربي',
      name: 'language',
    );
  }

  String get appTitle {
    return Intl.message('Innosoft Task',
        name: 'appTitle', desc: 'The application title');
  }

  String get homeTab {
    return Intl.message('Home', name: 'homeTab');
  }
  String get periodicTableTab {
    return Intl.message('Periodic Table', name: 'periodicTableTab');
  }
  String get newsListTab {
    return Intl.message('News list', name: 'newsListTab');
  }
  String get fullStatsTab {
    return Intl.message('Full stats', name: 'fullStatsTab');
  }
  String get moreTab {
    return Intl.message('More', name: 'moreTab');
  }

  String get latestNewsArea {
    return Intl.message('Latest News', name: 'latestNewsArea');
  }
  String get moreNewsArea {
    return Intl.message('More', name: 'moreNewsArea');
  }
  String get upcomingMatchesArea {
    return Intl.message('Upcoming Matches', name: 'upcomingMatchesArea');
  }
  String get moreUpcomingMatchesArea {
    return Intl.message('More', name: 'moreUpcomingMatchesArea');
  }
  String get latestTweetsArea {
    return Intl.message('Latest Tweets', name: 'latestTweetsArea');
  }
  String get moreLatestTweetsArea {
    return Intl.message('More', name: 'moreLatestTweetsArea');
  }
  String get expectWinner {
    return Intl.message('Expect who is the winner', name: 'expectWinner');
  }
  String get videosArea {
    return Intl.message('Videos', name: 'videosArea');
  }
  String get sponsorsArea {
    return Intl.message('Sponsors', name: 'sponsorsArea');
  }

  String get ptNoData {
    return Intl.message('no data', name: 'ptNoData');
  }
  String get ptYourLastName {
    return Intl.message('Your Last Name Is :', name: 'ptYourLastName');
  }
  String get ptYourId {
    return Intl.message('And Your Id Is :', name: 'ptYourId');
  }
  String get ptAlertDialogTitle {
    return Intl.message('Someting went wrong', name: 'ptAlertDialogTitle');
  }
  String get ptAlertDialogContent {
    return Intl.message('Can Not Fettch Data , Please Try again later.', name: 'ptAlertDialogContent');
  }
  String get ptAlertDialogOkay {
    return Intl.message('Ok', name: 'ptAlertDialogOkay');
  }

  String get ptAlertDialogTitleNoInternet {
    return Intl.message('Someting went wrong', name: 'ptAlertDialogTitleNoInternet');
  }
  String get ptAlertDialogContentNoInternet {
    return Intl.message('There is no Internet connection.', name: 'ptAlertDialogContentNoInternet');
  }
  String get ptAlertDialogOkayNoInternet {
    return Intl.message('Ok', name: 'ptAlertDialogOkayNoInternet');
  }

  String get noNewsFound {
    return Intl.message('No News Found', name: 'noNewsFound');
  }
  String get newsListTabView {
    return Intl.message('News', name: 'newsListTabView');
  }
  String get imagesListTabView {
    return Intl.message('Images', name: 'imagesListTabView');
  }
  String get videosListTabView {
    return Intl.message('Videos', name: 'videosListTabView');
  }
  String get noImagesListTabView {
    return Intl.message('No Images', name: 'noImagesListTabView');
  }
  String get noVideosListTabView {
    return Intl.message('No Videos', name: 'noVideosListTabView');
  }

  String get noStatisticsFound {
    return Intl.message('No statistics found', name: 'noStatisticsFound');
  }

  String get directoryOfClubs {
    return Intl.message('Directory of Clubs', name: 'directoryOfClubs');
  }
  String get directoryOfStadiums {
    return Intl.message('Directory of stadiums', name: 'directoryOfStadiums');
  }
  String get whoAreWe {
    return Intl.message('Who are we', name: 'whoAreWe');
  }
  String get rulesAndRegulations {
    return Intl.message('Rules and Regulations', name: 'rulesAndRegulations');
  }
  String get committees {
    return Intl.message('Committees', name: 'committees');
  }
  String get callUs {
    return Intl.message('Call us', name: 'callUs');
  }
  String get shareTheApp {
    return Intl.message('Share the app', name: 'shareTheApp');
  }
  String get subscribeToTheNewsletter {
    return Intl.message('Subscribe to the newsletter', name: 'subscribeToTheNewsletter');
  }
}
