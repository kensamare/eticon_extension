library eticon_extension;

extension ExtensionNullString on String?{

  bool get isNullOrEmpty => _isNullOrEmpty();

  bool _isNullOrEmpty(){
    if(this == null){
      return true;
    }
    else if(this!.isEmpty){
      return true;
    }
    return false;
  }
}

extension ExtensionString on String{
  int toInt(){
    return int.parse(this);
  }
  double toDouble(){
    return double.parse(this);
  }
}

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

  DateTime operator -(DateTime other){
    return DateTime.fromMillisecondsSinceEpoch(this.millisecondsSinceEpoch - other.millisecondsSinceEpoch);
  }
}
