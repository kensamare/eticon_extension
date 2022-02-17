///This is a standard print with dart:core.
///Also allows you to disable the output of logs for the entire project, for this use EPrintSettings.disablePrint(true)
void ePrint(Object? object) {
  if (!_PrintSettings.instance.disable) {
    print(object);
  }
}

///Disable the output of logs for the entire project, for this use EPrintSettings.disablePrint(true)
class EPrintSettings {
  ///Disable the output of logs for the entire project
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
