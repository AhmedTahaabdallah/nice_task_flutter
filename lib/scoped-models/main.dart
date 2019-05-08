import 'package:scoped_model/scoped_model.dart';
import './connected_all.dart';

class MainModel extends Model
    with ConnectedAllModel, LatestNewsModel, UtiltyModel {}
