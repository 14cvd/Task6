import 'dart:io';

String listName1 = "Ilk list";
String indexs1 = "Birinci";
String listName2 = "Ikinci list";
String indexs2 = "Ikinci";

void main() {
  List list1 = listFunction(listName: listName1, indexs: indexs1);
  stdout.writeln("Sizin $indexs1 list  $list1");

  List list2 = listFunction(listName: listName2, indexs: indexs2);
  stdout.writeln("Sizin $indexs2 list  $list2");

  List listCombine = list1 + list2;
  listCombine.sort();

  loadingMethods();
  stdout.writeln("Listlerin birləşməsindən alınan List :$listCombine ");
  //main();
}

void loadingMethods() {
  for (int i = 0; i < 17; i++) {
    sleep(Duration(milliseconds: 200));

    stdout.write("-" * i);
  }
  print("\n");
}

List listFunction({String? indexs, String? listName}) {
  List lists = [];
  stdout.write("$indexs listde  nece eded daxil olsun : ");

  int eded = int.tryParse(stdin.readLineSync().toString())!;

  for (int i = 1; i <= eded; i++) {
    stdout.write("$listName-in $i ededini daxil edin : ");
    int daxil = int.tryParse(stdin.readLineSync().toString()) ?? 0;

    lists.add(daxil);
  }

  return lists;
}
