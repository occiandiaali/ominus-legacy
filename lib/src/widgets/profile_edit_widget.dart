import 'package:flutter/material.dart';

class ProfileEditWidget extends StatelessWidget {
  const ProfileEditWidget({Key? key, required this.titleController, required this.secretController}) : super(key: key);

  final TextEditingController titleController;
  final TextEditingController secretController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(height: 10,),
          TextField(
            autofocus: true,
            controller: titleController,
            decoration: const InputDecoration(
              label: Text('User Name'),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10,),
          TextField(
            controller: secretController,
            decoration: const InputDecoration(
              label: Text('Secret'),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10,),
          TextField(
            controller: secretController,
            decoration: const InputDecoration(
              label: Text('Something else'),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 28,),
          // Padding(
          //   padding: const EdgeInsets.all(8),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [],
          //   ),
          // ),
          TextButton.icon(
            icon: const Icon(Icons.update_rounded),
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                  vertical: 10, horizontal: 50
              ),
              foregroundColor: Colors.white,
              backgroundColor: Colors.deepOrange,
              shape: const StadiumBorder(),
            ),
            onPressed: () => Navigator.pop(context),
            label: const Text('Update'),
          ),
        ],
      ),
    );
  }
}
