import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> mapInfoDialog(BuildContext ctx) async {
  return showDialog<void>(
      context: ctx,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Notice'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                const Text('Created by Occian F. Diaali'),
                InkWell(
                  child: const Text('https://github.com/occiandiaali/ambit',
                    style: TextStyle(decoration: TextDecoration.underline),),
                  onTap: () => launchUrl(Uri.parse('https://github.com/occiandiaali/ominus')),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
  );
}
