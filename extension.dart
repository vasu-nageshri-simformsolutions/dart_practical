extension WeekendCheck on DateTime {
  bool get isWeekend {
    return this.weekday == DateTime.saturday || this.weekday == DateTime.sunday;
  }
}

void main() {
  DateTime date1 = DateTime(2025, 1, 13);  
  print(date1.isWeekend);  

  DateTime date2 = DateTime(2025, 1, 11);  
  print(date2.isWeekend);  
}
// sd