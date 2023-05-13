import 'dart:io';

void main() {
  List<int> list1 = listFunction();

  stdout.writeln(list1);

  List<int> newList1 = list1.toSet().toList();
  stdout.writeln(newList1);

  newList1.sort();
  List listFinaly = newList1.reversed.toList();
  stdout.writeln("Ikinci en boyuk eded budur : ${listFinaly[1]}");
}

List<int> listFunction() {
  List<int> lists = [];
  stdout.write(" listde  nece eded daxil olsun : ");

  int eded = int.tryParse(stdin.readLineSync().toString())!;

  for (int i = 1; i <= eded; i++) {
    stdout.write("listin-in $i ededini daxil edin : ");
    int daxil = int.tryParse(stdin.readLineSync().toString()) ?? 0;

    lists.add(daxil);
  }

  return lists;
}
