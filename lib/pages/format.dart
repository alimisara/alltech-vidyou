import 'package:flutter/material.dart';

class FormatsPage extends StatelessWidget {
  final String videoTitle;
  final String thumbnailUrl;
  final List<Map<String, String>> formats;

  const FormatsPage({
    super.key,
    required this.videoTitle,
    required this.thumbnailUrl,
    required this.formats,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: Text("Choisir un format"),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thumbnail et titre
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                      'images/miniature.jpeg',
                      fit: BoxFit.cover, // Ajuste l'image
                    ),
            ),
            SizedBox(height: 10),
            Text(
              videoTitle,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Liste des formats
            Expanded(
              child: ListView.builder(
                itemCount: formats.length,
                itemBuilder: (context, index) {
                  final format = formats[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 3,
                    child: ListTile(
                      leading: Icon(Icons.video_file, color: Colors.red),
                      title: Text(format['label'] ?? ''),
                      subtitle: Text("Taille : ${format['size']}"),
                      trailing: ElevatedButton(
                        onPressed: () {
                          // TODO: lancer le téléchargement
                        },
                        style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green
                            ),
                        child: Text("Télécharger", 
                        style: TextStyle(
                          color: Colors.grey[100]
                        )
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
