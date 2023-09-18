import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Contact Us Form',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Contact Us Form'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUs()));
            },
            child: const Text('Contact Us'),
          ),
        ),
      ),
    );
  }
}

class ContactUs extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
      ),
      body: FormBuilder(
        child: Column(
          children: [
            FormBuilderTextField(
              name: 'name',
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            FormBuilderTextField(
              name: 'email',
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            FormBuilderTextField(
              name: 'message',
              controller: messageController,
              decoration: const InputDecoration(labelText: 'Message'),
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: Submit the form
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}