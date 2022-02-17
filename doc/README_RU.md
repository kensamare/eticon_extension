<img src="https://user-images.githubusercontent.com/36012868/130392291-52b82b9b-fd52-424b-ba5a-b7630e9cf343.png" data-canonical-src="https://user-images.githubusercontent.com/36012868/130392291-52b82b9b-fd52-424b-ba5a-b7630e9cf343.png" height="200" width=400/>

[![English](https://img.shields.io/badge/Language-English-blue?style=plastic)](https://github.com/kensamare/eticon_extension#readme)

# ETICON EXTENSION

Библиотека расширяющая базовые классы и добавляющая новые.

## String

Расширяет базовый класс следующими методами:
- toInt - Преобразует string в int
- toDouble - Преобразует string в double
- toDateTime(String? format) - Преобразует string в DateTime с возможным использование формата использованых из пакета intl
- toEDateTime(String? format) - Преобразует string в EDateTime с возможным использование формата использованых из пакета intl
- isNullOrEmpty - Вернет true если строка пустая или null

## List

Расширяет базовый класс следующими методами:
- isNullOrEmpty - Вернет true если строка пустая или null

## Object
Расширяет базовый класс следующими методами:
- isNullValue - Вернет true если объект null
- isNotNull - Вернет true если объект не null

## DateTime

Добавлены оепраторы сравнения:
```bash
>, <, >=, <=, -
```

Расширяет базовый класс следующими методами:
- toFormatStr(String? format) - Возвращает форматированную строку. Используйте форматы из пакета intl

## EDateTime
Специальный класс обертка над DateTime, позволяет более удобно работать с датами.
Содержит все те же конструкторы и методы как и DateTime, однако имеет и измененные методы и новые методы и операторы.

Имеет дополнительный коснтруктор, который позволяет превратить DateTime в EDateTime.
```dart
EDateTime.fromDateTime(DateTime date);
```

Иммет измененые методы add и subtract, вместо Duration, принимает именнованные параметры:
```dart
    int year,
    int month,
    int day,
    int hour,
    int minute,
    int second,
    int millisecond,
    int microsecond,
```
Также эти методы возвращают EDateTime, но при этом и сохраняют результат. Строки ниже эквиваленты

```dart
EDateTime date = date.add(year: 1);
date.add(year: 1); ///auto do code from top
```

Имеет оепраторы сравнения:
```bash
>, <, >=, <=, -
```

Иммет свой метод:
- toFormatStr(String? format) - Возвращает форматированную строку. Используйте форматы из пакета intl


Стоит отметить, что отуствуют parse и tryParse

## log

Данный log, аналогичен log из dart:developer, но есть ключевое отличие.
Этот log принимает вместо String, dynamic.

```dart
int a = 10;
log(10, name:"test Log");
```
Как известно лучше не оставлять log и print в продакшен. Чтобы отключить отображение всех логов в проекте используйте следующий код:

```dart
void main() async {
  ELogSettings.disableLogs(true);
}
```

## ePrint

Данный ePrint, полностью аналогичен с print из dart:core.

Как известно лучше не оставлять print в продакшен. Чтобы отключить отображение всех print() в проекте используйте следующий код:

```dart
void main() async {
  EPrintSettings.disablePrint(true);
}
```

## Контакты
Если у вас остались вопросы или есть предложения по улучшению этого пакета.
Вы можете связаться с нами по почте: <main@eticon.ru> 