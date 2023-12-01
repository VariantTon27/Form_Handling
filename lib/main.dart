import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lab', debugShowCheckedModeBanner: false, home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  TextEditingController emailAddress = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 163, 1, 1),
        leading: const Icon(Icons.code),
      ),
      body: Form(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextFormField(
              controller: emailAddress,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: ('Email Address'),
              ),
            ),
            TextFormField(
              controller: password,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                labelText: ('Password'),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print(emailAddress.text);
                print(password.text);
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
