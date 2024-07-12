import 'package:flutter/material.dart';
import 'package:lab2/student.dart';

class DetailPage extends StatelessWidget {
  final Student data;

  const DetailPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Detail Page"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: data.studentid,
                child: Image(
                  width: 200,
                  image: AssetImage(data.image),
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                data.name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              Text(
                "รหัสนักศึกษา: ${data.studentid}",
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16.0),
              const Text(
                "ประวัติโดยย่อ:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                data.aboutMe,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16.0),
              Text(
                "Email: ${data.email}",
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16.0),
              const Text(
                "Social Media:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                data.socialMediaLink,
                style: const TextStyle(fontSize: 16, color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
