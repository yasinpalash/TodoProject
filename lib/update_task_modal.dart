import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdateModal extends StatefulWidget {
  const UpdateModal({super.key});

  @override
  State<UpdateModal> createState() => _UpdateModalState();
}

class _UpdateModalState extends State<UpdateModal> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Update Your Task',
                style: Theme.of(context).textTheme.titleLarge,
              ),
               IconButton(onPressed: () {
                 Navigator.pop(context);
               },
               icon: Icon(Icons.close),)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            maxLines: 4,
            decoration: const InputDecoration(
                hintText: 'Enter Your Update Todo',
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder()),
          ),
          const SizedBox(height: 24,),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: const Text('Update')))
        ],
      ),
    );
  }
}
