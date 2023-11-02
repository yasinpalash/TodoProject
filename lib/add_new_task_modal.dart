import 'package:flutter/material.dart';

import 'Todo_task.dart';

class AddNewTaskModal extends StatefulWidget {
  const AddNewTaskModal({
    super.key,
    required this.onAddTap,
  });

  final Function(Todo) onAddTap;

  @override
  State<AddNewTaskModal> createState() => _AddNewTaskModalState();
}

class _AddNewTaskModalState extends State<AddNewTaskModal> {
  final TextEditingController todoTEController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Add new todo',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              maxLines: 4,
              controller: todoTEController,
              decoration: const InputDecoration(
                hintText: 'Enter your todo here',
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
              validator: (String? value) {
                if (value?.isEmpty ?? true) {
                  return 'Enter a value';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity, // Make the button full width
              margin: const EdgeInsets.all(16), // Add margin for spacing
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent, // Background color
                  onPrimary: Colors.white, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Round the corners
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Todo todo = Todo(
                      details: todoTEController.text.trim(),
                      createdDateTime: DateTime.now(),
                      updatedDateTime: DateTime.now(),
                    );
                    widget.onAddTap(todo);
                    Navigator.pop(context);
                  }
                },
                child: const Text('Add'),
              ),
            )

          ],
        ),
      ),
    );
  }
}
