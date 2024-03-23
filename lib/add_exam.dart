import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:intership_task/widgets/custom_text_field.dart';

class AddExam extends StatelessWidget {
  const AddExam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Add Exam',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 9, 34, 85),
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_arrow_left_outlined,
            size: 40,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Patient',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextField(
                  label: 'MRN*',
                  suffixIcon: const Icon(Icons.content_paste_search_rounded)),
              const SizedBox(height: 12),
              CustomTextField(label: 'Frist Name*'),
              const SizedBox(height: 12),
              CustomTextField(label: 'Last Name*'),
              const SizedBox(height: 12),
              CustomTextField(label: 'Data Of Birth*'),
              const SizedBox(height: 12),
              CustomTextField(label: 'Gender*'),
              const SizedBox(height: 30),
              const Text(
                'Exam Code',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 5),
              CustomTextField(label: 'Exam Code'),
              const SizedBox(height: 20),
              const Text(
                'Prescribing Doctor',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 9),
              CustomTextField(
                suffixIcon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 15,
                ),
              ),
              const SizedBox(height: 29),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 9, 34, 85),
                      borderRadius: BorderRadius.circular(12)),
                  width: 350,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 9, 34, 85),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Add',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
