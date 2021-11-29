library eticon_extension;

extension ExtensionString on String?{

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