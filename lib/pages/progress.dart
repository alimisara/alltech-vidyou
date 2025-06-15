import 'package:flutter/material.dart';

Future <void> showProgress(BuildContext context, double progress){
  final percent = (progress*100).toStringAsFixed(0);

  return showDialog (
    context: context,
    barrierDismissible: false,
    builder: (_) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      title: const Text("Téléchargement en cours..."),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LinearProgressIndicator(
            value: progress,
            minHeight: 8,
            backgroundColor: Colors.grey[300],
            color: Colors.redAccent,
          ),
          const SizedBox(height: 20,),
          Text("$percent %",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          )
        ],
      ),
    )
  );
}