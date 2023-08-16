import 'package:flutter/material.dart';

class AddPlaceScreen extends StatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  State<AddPlaceScreen> createState() {
    return _AddPlaceScreen();
  }
}

class _AddPlaceScreen extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    void savePlace() {
      if (formKey.currentState!.validate()) {
        formKey.currentState!.save();
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Place Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              // name
              TextFormField(
                maxLength: 50,
                decoration: const InputDecoration(
                  label: Text('Name'),
                ),
                validator: (value) {
                  return null;
                },
                onSaved: (value) {},
              ),
              const SizedBox(
                height: 12,
              ),
              // button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: savePlace,
                    child: const Row(
                      children: [
                        Icon(
                          Icons.add,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Add Item"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
