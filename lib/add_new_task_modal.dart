import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddnewTaskModal extends StatefulWidget {
  const AddnewTaskModal({super.key});

  @override
  State<AddnewTaskModal> createState() => _AddnewTaskModalState();
}

class _AddnewTaskModalState extends State<AddnewTaskModal> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Text('Add new Task', style: Theme.of(context).textTheme.titleLarge,),
              IconButton(onPressed: () {
                Navigator.pop(context);

              },
              icon: const Icon(Icons.close))
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          TextFormField(
            maxLines: 4,
            decoration: const InputDecoration(
              hintText: 'Enter You Todo here',
              enabledBorder: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder()

            ),

          ),
          const SizedBox(
            height: 24,
          ),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(

                onPressed: (){}, child: const Text('Add')),
          )

        ],
      ),
    );
  }
}
