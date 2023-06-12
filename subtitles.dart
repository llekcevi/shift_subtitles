//uzeti jedan redni broj titlova?
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

String shiftMinutes(String time_code, int minutes) {
  return "";
}

void main(List<String> args) async {
  var min_shift = 5;

  var file = File("simpsons.txt");

  Stream<String> lines =
      file.openRead().transform(Utf8Decoder()).transform(LineSplitter());

  var shifted = File("shifted.txt");
  var sink = shifted.openWrite();
  try {
    await for (var line in lines) {
      if (line.contains("-->")) {
        //dodati funkciju koja "pametno zbraja sekunde"
        sink.writeln("timecode");
      } else {
        sink.writeln(line);
      }
    }
  } catch (e) {
    print("Error: $e");
  }
  sink.close();
}
