import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ExamPage extends StatelessWidget {
  const ExamPage({super.key});
  @override
  Widget build(BuildContext context) {
    var isOpen = false;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
          backgroundColor: const Color.fromARGB(255, 9, 34, 85),
          title: const Text(
            'Exam',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SearchBar(
                leading: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.grey,
                ),
                elevation: MaterialStatePropertyAll(0),
                side: MaterialStatePropertyAll(
                  BorderSide(
                    color: Colors.grey,
                  ),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionTile(
                iconColor: Color.fromARGB(255, 34, 78, 117),
                textColor: Color.fromARGB(255, 34, 78, 117),
                title: Text(
                  'Archived Exams',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionTile(
                iconColor: const Color.fromARGB(255, 34, 78, 117),
                textColor: const Color.fromARGB(255, 34, 78, 117),
                title: const Text(
                  'Currant Exam',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/exam.png',
                        width: 150,
                      ),
                      const Text(
                        'No Exams Founded',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 9, 34, 85),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
