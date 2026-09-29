import 'package:flutter/material.dart';

class FormControlsProgram extends StatefulWidget {
  const FormControlsProgram({super.key});

  @override
  State<FormControlsProgram> createState() => _FormControlsProgramState();
}

class _FormControlsProgramState extends State<FormControlsProgram> {
  final TextEditingController nameController = TextEditingController();

  String gender = 'Male';
  bool isStudent = false;
  bool reading = false;
  bool sports = false;
  bool music = false;
  String selectedCourse = 'Flutter';

  void submitForm() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FormResultPage(
          name: nameController.text,
          gender: gender,
          isStudent: isStudent,
          reading: reading,
          sports: sports,
          music: music,
          course: selectedCourse,
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Controls'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Name',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Enter your name',
                hintText: 'Enter Name',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Gender',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            RadioListTile<String>(
              title: const Text('Male'),
              value: 'Male',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
            ),

            RadioListTile<String>(
              title: const Text('Female'),
              value: 'Female',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
            ),

            CheckboxListTile(
              title: const Text('Are you a student?'),
              value: isStudent,
              onChanged: (value) {
                setState(() {
                  isStudent = value!;
                });
              },
            ),

            const SizedBox(height: 15),

            const Text(
              'Hobbies',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            CheckboxListTile(
              title: const Text('Reading'),
              value: reading,
              onChanged: (value) {
                setState(() {
                  reading = value!;
                });
              },
            ),

            CheckboxListTile(
              title: const Text('Sports'),
              value: sports,
              onChanged: (value) {
                setState(() {
                  sports = value!;
                });
              },
            ),

            CheckboxListTile(
              title: const Text('Music'),
              value: music,
              onChanged: (value) {
                setState(() {
                  music = value!;
                });
              },
            ),

            const SizedBox(height: 15),

            const Text(
              'Select Course',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            DropdownButtonFormField<String>(
              value: selectedCourse,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(
                  value: 'Flutter',
                  child: Text('Flutter'),
                ),
                DropdownMenuItem(
                  value: 'Java',
                  child: Text('Java'),
                ),
                DropdownMenuItem(
                  value: 'Python',
                  child: Text('Python'),
                ),
                DropdownMenuItem(
                  value: 'C#',
                  child: Text('C#'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedCourse = value!;
                });
              },
            ),

            const SizedBox(height: 25),

            Center(
              child: SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: submitForm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FormResultPage extends StatelessWidget {
  final String name;
  final String gender;
  final bool isStudent;
  final bool reading;
  final bool sports;
  final bool music;
  final String course;

  const FormResultPage({
    super.key,
    required this.name,
    required this.gender,
    required this.isStudent,
    required this.reading,
    required this.sports,
    required this.music,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Result'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Submitted Details',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            Text('Name: $name'),
            Text('Gender: $gender'),
            Text('Student: ${isStudent ? "Yes" : "No"}'),
            Text('Reading: ${reading ? "Yes" : "No"}'),
            Text('Sports: ${sports ? "Yes" : "No"}'),
            Text('Music: ${music ? "Yes" : "No"}'),
            Text('Course: $course'),
          ],
        ),
      ),
    );
  }
}