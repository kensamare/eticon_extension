void ePrint(Object? object){
  if(!_PrintSettings.instance.disable){
    print(object);
  }
}

class EPrintSettings {
  static void disablePrint(bool disable) {
    _PrintSettings.instance.setDisable(disable);
  }
}

class _PrintSettings {
  _PrintSettings._();

  static _PrintSettings instance = _PrintSettings._();

  static bool _disable = false;

  bool get disable => _disable;

  void setDisable(bool t) {
    _disable = t;
  }
}