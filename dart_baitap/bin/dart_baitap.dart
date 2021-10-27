import 'package:dart_baitap/dart_baitap.dart' as dart_baitap;

void main(List<String> arguments) {
  print('Hello world: ${dart_baitap.calculate()}!');

  //1. Viết một hàm kiểm tra số đó là chẵn hay lẻ, kiểm tra xem số đó là chẵn hay lẻ dùng if … else
  int num = 6;
  ktraChanLe(num);

  //2. Viết một hàm kiểm tra số đó là chẵn hay lẻ, kiểm tra xem số đó là chẵn hay lẻ dùng switch…case
  int num2 = 3;
  checkSoChanLe(number: num2);

  //3. Tinh giai thua cua 8
  int num3 = 8;
  int kq = giaiThua(num: num3);
  print("Kết qua giai thua cua $num3 = $kq");

  //4. Số nguyên dương lẻ nhỏ hơn 25
  for (int i = 0; i < 25; i++) {
    if (i % 2 != 0) {
      print("Số nguyên dương lẻ nhỏ hơn 25 là $i");
    }
  }

  //5.  Từ 1 đến 50 in ra các số mà tổng số đó không vượt quá 50.
  List<int> list = [];
  int sum = 0;
  for (int i = 1; i <= 50; i++) {
    if (sum < 50) {
      sum = sum + i;
      list.add(i);
    }
  }
  print(list);

  //6. Tính tổng các số từ 1 đến 15 , Số nào là số chẵn thì in ra màn hình
  List<int> list2 = [];
  int sum2 = 0;
  for (int i = 1; i <= 15; i++) {
    if (i % 2 == 0) {
      sum2 = sum2 + i;
      list2.add(i);
    }
  }
  print(list2);

  //7. Từ 1 đến 1000 in ra các số chẵn mà tổng các số đó không lớn hơn 400
  timSoChan();
  //8. Từ. 1 đến 10000, Viết chương trình đếm xem có bao nhiêu chữ số chia hết cho 3 , bao nhiêu số chia hết cho 5
  countNum();
  //9. Cho một list : List list5 = [4, 3, 10, 9, 15, 7, 6, 5, 8]; In ra tổng các số chia hết cho 3
  List list5 = [4, 3, 10, 9, 15, 7, 6, 5, 8];
  sumNum(list5);
  //10.  Cho thông tin biểu diễn dưới sạng sau :
  // var classInformation = {
  // “id”: 12,
  // “name”: “Báo Flutter 1.2”,
  // “description”: “ Lớp học lập trình Flutter, hot line: 0349582808”
  // };
  var classInformation = {
    "id": 12,
    "name": "Báo Flutter 1.2",
    "description": "Lớp học lập trình Flutter, hotline: 0349582808 "
  };

  classInformation.forEach((key, value) {
    hotlineString(value.toString());
  });
}

void ktraChanLe(int num) {
  if (num % 2 == 0) {
    print("Số $num là số chẵn");
  } else {
    print("Số $num là số lẻ");
  }
}

void checkSoChanLe({required int number}) {
  int soDu = number % 2;

  switch (soDu) {
    case 0:
      print("Số này là số chẵn");
      break;

    case 1:
      print("Số này là số lẻ");
      break;

    default:
      print("Không thực hiện gì");
      break;
  }
}

int giaiThua({required int num}) {
  if (num == 1) return 1;
  return num * giaiThua(num: num - 1);
}

void timSoChan() {
  List<int> list = [];
  int sum = 0;
  for (int i = 1; i <= 1000; i++) {
    if (sum < 400 && i % 2 == 0) {
      sum = sum + i;
      list.add(i);
    }
  }
  print(list);
}

void countNum() {
  int count3 = 0;
  int count5 = 0;
  for (int i = 1; i <= 1000; i++) {
    if (i % 3 == 0) {
      count3++;
    }
    if (i % 5 == 0) {
      count5++;
    }
  }
  print("Có $count3 số chia hết cho 3");
  print("Có $count5 số chia hết cho 5");
}

void sumNum(List a) {
  int sumList = 0;
  for (int i in a) {
    if (i % 3 == 0) {
      sumList = sumList + i;
    }
  }
  print("Tổng các số chia hết cho 3 trong list $a là: $sumList");
}

void hotlineString(String a) {
  String hotline = "";
  var part = a.split(' ');
  final regExp = RegExp(r'^[0-9]');
  for (String i in part) {
    if (regExp.hasMatch(i.trim()) && i.length == 10) {
      hotline = i;
    }
    if (hotline.isNotEmpty) {
      print("Số hotline: $hotline");
    }
  }
}
