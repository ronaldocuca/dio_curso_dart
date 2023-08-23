void tipoDateTime() {
  DateTime data1 = DateTime.now();
  data1 = DateTime.parse("2023-08-22 23:55:59");

  // Partes da data
  print(data1);
  print(data1.day);
  print(data1.month);
  print(data1.year);
  print(data1.hour);
  print(data1.minute);
  print(data1.second);

// Dia da semana
print(data1.weekday);

// Soma de datas
print(data1);
data1 = data1.add(Duration(days: 1));
print(data1.add(Duration(days: 1)));
print(data1);
data1 = data1.subtract(Duration(hours: 1));
print(data1.subtract(Duration(hours: 1)));
print(data1);

var data2 = DateTime.parse("2023-08-23 00:03:00");
print(data1.isAfter(data2));
print(data1.isBefore(data2));
print(data1.compareTo(data2));


}