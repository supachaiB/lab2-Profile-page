import 'package:flutter/material.dart';
import 'package:lab2/DetailPage.dart';
import 'package:lab2/student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Student> datas = [
      Student(
          "นายเจษฎา ลีรัตน์ 643450067-0",
          "001",
          "images/1.jpg",
          "ชอบไปคาเฟ่",
          "jatsada.l@kkumail.com",
          "https://www.facebook.com/pat.loveasd"),
      Student(
          "นายธนาธิป เตชะ 643450076-9",
          "002",
          "images/2.jpg",
          "ชอบเดินเล่น",
          "email2@example.com",
          "https://www.facebook.com/profile.php?id=100011086212292"),
      Student(
          "นายพีระเดช โพธิ์หล้า 643450082-4",
          "003",
          "images/3.jpg",
          "ชอบนอน",
          "peeradech.p@kkumail.com",
          "https://www.facebook.com/peeradech8888"),
      Student(
          "นายวิญญู พรมภิภักดิ์ 643450084-0",
          "004",
          "images/4.jpg",
          "ชอบตีลังกา",
          "winyu.p@kkumail.com",
          "https://www.facebook.com/profile.php?id=100014625613598"),
      Student(
          "นายเทวารัณย์ ชัยกิจ 643450324-6",
          "005",
          "images/5.jpg",
          "ชอบเล่นเกม",
          "tewaran.c@kkumail.com",
          "https://www.facebook.com/rungoodnam"),
      Student(
          "นายณัฐกานต์ อินทรพานิชย์ 643450072-7",
          "006",
          "images/6.jpg",
          "ชอบหมี",
          "nuttakan.i@kkumail.com",
          "https://www.facebook.com/wai.nuttakan"),
      Student(
          "นายศุภชัย แสนประสิทธิ์ 643450332-7",
          "007",
          "images/7.jpg",
          "ชอบมีด",
          "supachai.sa@kkumail.com",
          "https://www.facebook.com/beam.supachai.9/"),
      Student(
          "ธนรัตน์ บ้านสระ 643450658-7",
          "008",
          "images/8.jpg",
          "ชอบแมว",
          "email8@example.com",
          "https://www.facebook.com/profile.php?id=100013270898676"),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My App"),
      ),
      body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context, index) {
            return displayItem(context: context, student: datas[index]);
          }),
    );
  }

  Widget displayItem(
      {required BuildContext context, required Student student}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(
                      data: student,
                    )));
      },
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(children: [
            Hero(
              tag: student.studentid,
              child: Image(
                width: 100,
                image: AssetImage(student.image),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  student.name,
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  student.studentid,
                  style: const TextStyle(fontSize: 12),
                )
              ],
            )
          ])),
    );
  }
}
