import 'package:intl/intl.dart';

extension ExtensionDateTime on DateTime{
  bool operator >(DateTime other){
    if(isAfter(other)){
      return true;
    }
    else {
      return false;
    }
  }
  bool operator >=(DateTime other){
    if(isAfter(other) || this == other){
      return true;
    }
    else {
      return false;
    }
  }
  bool operator <=(DateTime other){
    if(isBefore(other) || this == other){
      return true;
    }
    else {
      return false;
    }
  }
  bool operator <(DateTime other){
    if(isBefore(other) || this == other){
      return true;
    }
    else {
      return false;
    }
  }

  Duration operator -(DateTime other){
    return difference(other);
  }

  String toFormat(String? format){
    if(format == null){
      return toString();
    } else{
      return DateFormat(format).format(this);
    }
  }
}