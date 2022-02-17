<img src="https://user-images.githubusercontent.com/36012868/130392291-52b82b9b-fd52-424b-ba5a-b7630e9cf343.png" data-canonical-src="https://user-images.githubusercontent. com/36012868/130392291-52b82b9b-fd52-424b-ba5a-b7630e9cf343.png" height="200" width=400/>

[![English](https://img.shields.io/badge/Language-Russian-blue?style=plastic)](https://github.com/kensamare/eticon_extension/blob/master/doc/README_RU.md)

# ETICON EXTENSION

A library that extends base classes and adds new ones.

## String

Extends the base class with the following methods:
- toInt - Convert string to int
- toDouble - Convert string to double
- toDateTime(String? format) - Converts a string to a DateTime, possibly using the format used from the intl package
- toEDateTime(String? format) - Converts string to EDateTime, possibly using the format used from the intl package
- isNullOrEmpty - Returns true if the string is empty or null

##List

Extends the base class with the following methods:
- isNullOrEmpty - Returns true if the string is empty or null

## Object
Extends the base class with the following methods:
- isNullValue - Will return true if the object is null
- isNotNull - Will return true if the object is not null

## datetime

Comparison operators added:
```bash
>, <, >=, <=, -
```

Extends the base class with the following methods:
- toFormatStr(String? format) - Returns the formatted string. Use the formats from the intl package

##EDateTime
A special wrapper class over DateTime allows you to more conveniently work with dates.
It contains all the same constructors and methods as DateTime, however, it also has changed methods and new methods and operators.

Has an additional constructor that allows you to turn a DateTime into an EDateTime.
```dart
EDateTime.fromDateTime(DateTime date);
```

The modified add and subtract methods take named parameters instead of Duration:
```dart
    year,
    int month,
    int day,
    int hour,
    int minute,
    int second,
    int millisecond,
    int microsecond,
```
Also, these methods return EDateTime, but they also store the result. The lines below are equivalent

```dart
EDateTime date = date.add(year: 1);
date.add(year: 1); ///auto do code from top
```

Has comparison operators:
```bash
>, <, >=, <=, -
```

I have my own method:
- toFormatStr(String? format) - Returns the formatted string. Use the formats from the intl package


Note that parse and tryParse are missing.

## log

This log is similar to the log from dart:developer, but there is a key difference.
This log accepts dynamic instead of String.

```dart
int a = 10;
log(10, name:"test log");
```
As you know, it's better not to leave log and print in production. To disable the display of all logs in the project, use the following code:

```dart
void main() async {
  ELogSettings.disableLogs(true);
}
```

## ePrint

This ePrint is completely similar to print from dart:core.

As you know, it's better not to leave print in production. To disable the display of all print() in the project, use the following code:

```dart
void main() async {
  EPrintSettings.disablePrint(true);
}
```

## Contacts
If you have any questions or suggestions to improve this package.
You can contact us by mail: <main@eticon.ru>