import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../models/news.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

mixin ConnectedAllModel on Model {
  List<LatestNews> _latestNews = [];
  String _selLatestNewsId;
  bool _isLoading = false;
  Map<String, dynamic> _items = {};
}

mixin LatestNewsModel on ConnectedAllModel {
  List<LatestNews> get allLatestNews {
    return List.from(_latestNews);
  }

  Map<String, dynamic> get allItems {
    return _items;
  }

  String get selectLatestNewsId {
    return _selLatestNewsId;
  }

  LatestNews get selectedlatestNews {
    if (selectLatestNewsId == null) {
      return null;
    }
    return _latestNews.firstWhere((LatestNews latestNews) {
      return latestNews.id == _selLatestNewsId;
    });
  }

  int get selectLatestNewsIndex {
    return _latestNews.indexWhere((LatestNews latestNews) {
      return latestNews.id == _selLatestNewsId;
    });
  }

  void selectLatestNews(String latestNewsId) {
    _selLatestNewsId = latestNewsId;
    if (latestNewsId != null) {
      notifyListeners();
    }
  }

  void fetchLatestNews() {
    _isLoading = true;
    notifyListeners();
    List<LatestNews> list = [];
    list.add(LatestNews(
        '1',
        'الدورى الرياضى',
        'من الملاعب السعودية إلى منصة التتويج بكأس العالم..',
        '12 يوليو 2018',
        'عندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغعندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغات. عندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغات. عندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغات.ات.\nعندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات',
        'assets/img2',
        'assets/Group545'));
    list.add(LatestNews(
        '2',
        'الدورى الرياضى',
        'من الملاعب السعودية إلى منصة التتويج بكأس العالم..',
        '12 يوليو 2018',
        'عندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغعندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغات. عندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغات. عندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغات.ات.\nعندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات',
        'assets/FHg3gVUXuDRecedpcuUnCT',
        'assets/Group545'));
    list.add(LatestNews(
        '3',
        'الدورى الرياضى',
        'من الملاعب السعودية إلى منصة التتويج بكأس العالم..',
        '12 يوليو 2018',
        'عندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغعندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغات. عندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغات. عندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغات.ات.\nعندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات',
        'assets/img3',
        'assets/Group545'));
    list.add(LatestNews(
        '4',
        'الدورى الرياضى',
        'من الملاعب السعودية إلى منصة التتويج بكأس العالم..',
        '12 يوليو 2018',
        'عندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغعندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغات. عندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغات. عندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغات.ات.\nعندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات',
        'assets/img2',
        'assets/Group545'));
    list.add(LatestNews(
        '5',
        'الدورى الرياضى',
        'من الملاعب السعودية إلى منصة التتويج بكأس العالم..',
        '12 يوليو 2018',
        'عندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغعندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغات. عندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغات. عندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغات.ات.\nعندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات',
        'assets/img3',
        'assets/Group545'));
    list.add(LatestNews(
        '6',
        'الدورى الرياضى',
        'من الملاعب السعودية إلى منصة التتويج بكأس العالم..',
        '12 يوليو 2018',
        'عندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغعندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغات. عندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغات. عندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات الصناعة على الشبكة العالمية انترنت ويونيكود حيث ستتم على الصعيدين الدولى والمحلى على حد سواء مناقشة سبل استخدام يونيكود فى النظم القائمة وفيما يخص التطبيقات الحاسوبية الخطوط تصميم النصوص والحوسبة متعددة اللغات.ات.\nعندما يريد العالم أن يتكلم فهو يتحدث بلغة يونيكود. تسجل الأن لحضور المؤتمر الدولى العاشر ليويكود (Unicode Conference). الذى سيعقد فى 10-12 اّذار 1997 بمدينة ماينتس ألمانيا. وسيجمع المؤتمر بين خبراء من كافة قطاعات',
        'assets/FHg3gVUXuDRecedpcuUnCT',
        'assets/Group545'));

    _latestNews = list;
    _isLoading = false;
    notifyListeners();
    _selLatestNewsId = null;
  }

  Future<bool> fetchPeriodicTable() async {
    _isLoading = true;
    notifyListeners();
    try {
      final http.Response response =
          await http.get("https://reqres.in/api/users");
      if (response.statusCode != 200 && response.statusCode != 201) {
        _isLoading = false;
        _items.clear();
        notifyListeners();
        return false;
      }
      final Map<String, dynamic> periodicTableListData =
          json.decode(response.body);
      if (periodicTableListData == null) {
        _isLoading = false;
        _items.clear();
        notifyListeners();
        return false;
      }
      _items = periodicTableListData;
      _isLoading = false;
      notifyListeners();
      return true;
    } catch (error) {
      _isLoading = false;
      _items.clear();
      notifyListeners();
      return false;
    }
  }
}

mixin UtiltyModel on ConnectedAllModel {
  bool get isLoading {
    return _isLoading;
  }

  Locale _appLocale = Locale('ar');
  Locale get appLocal => _appLocale ?? Locale("ar");

  void changeDirection() {
    if (_appLocale == Locale("ar")) {
      _appLocale = Locale("en");
    } else {
      _appLocale = Locale("ar");
    }
    notifyListeners();
  }
}