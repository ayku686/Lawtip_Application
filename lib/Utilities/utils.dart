import 'package:flutter/cupertino.dart';

class Utils{
  static focusChange(BuildContext context, FocusNode nextFocus){
    return FocusScope.of(context).requestFocus(nextFocus);
  }
}