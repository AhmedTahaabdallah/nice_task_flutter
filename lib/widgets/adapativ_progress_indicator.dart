import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdapativProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.android
        ? CircularProgressIndicator(
            valueColor: new AlwaysStoppedAnimation<Color>(
                Color.fromRGBO(15, 22, 57, 1.0)))
        : CupertinoActivityIndicator();
  }
}
