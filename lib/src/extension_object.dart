///Extension on Object?
extension ExtensionNullObject on Object? {
  ///Check Object is Null
  bool get isNullValue => _isNull();

  ///Check Object is not Null
  bool get isNotNull => !_isNull();

  bool _isNull() {
    if (this == null) {
      return true;
    }
    return false;
  }
}
