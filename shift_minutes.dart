void main(List<String> args) {
  String time_code = "00:59:24,994 --> 00:00:26,194";
  int minutes = 23;
  var no_special_characters = time_code.replaceAll(RegExp(r'[-> ,:]'), '');
  print(no_special_characters);

  var start = no_special_characters.substring(0, 9);
  var end = no_special_characters.substring(9, 18);

  int start_hour = int.parse(start.substring(0, 2));
  int start_minute = int.parse(start.substring(2, 4));
  int start_second = int.parse(start.substring(4, 6));
  int start_milisecond = int.parse(start.substring(6, 9));

  print(start);
  print(end);
  print("hour: $start_hour");
  print("minute: $start_minute");
  print("second: $start_second");
  print("milisecond: $start_milisecond");

  resetMinHour(start_minute, minutes, start_hour);
}

void resetMinHour(int start_minute, int minutes, int start_hour) {
  if (start_minute + minutes < 60) {
    start_minute = start_minute + minutes;
    print("minute: $start_minute");
  } else {
    start_minute = minutes - (60 - start_minute);
    start_hour += 1;
    print("_______________________");
    print("hour: $start_hour");
    print("minute: $start_minute");
  }
}
