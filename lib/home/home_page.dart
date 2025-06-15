import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:provider/provider.dart';
import 'package:vidyou/pages/format.dart';

class HomePage extends StatelessWidget {
  const HomePage ({super.key});

  @override
 @override
Widget build(BuildContext context) {

  return Scaffold(
    backgroundColor: Colors.grey[100],
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      'images/camera.png',
                      fit: BoxFit.cover, // Ajuste l'image
                    ),
                  ),
            
                    SizedBox(width: 16,),
                    Text.rich(
                       TextSpan(
                        children :[
                          TextSpan(
                            text: 'Vid',
                            style: TextStyle(
                              color: Color(0xFFFF0000),
                              fontSize: 25,
                              fontWeight: FontWeight.w900
                            )
                          ),
                          TextSpan(
                            text: 'You',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Colors.black
                            )
                          )
                        ] 
                      ),
                    ),
                  ],
                ),
                IconButton(onPressed: (){
                }, 
                icon: Icon(Icons.share)
                )
              ],
            ),
            SizedBox(height: 25,),
            Expanded(
              child: Container(
                constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height * 0.6,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.3),
                      offset: Offset(0, -2),
                      blurRadius: 8,
                      spreadRadius: 1,
                    )
                  ]
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 150,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withAlpha(120),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Téléchargeur",
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                ),
                                ),
                                Text("Téléchargez toutes vos vidéos en lignes préférées",
                                style: TextStyle(
                                  color: Colors.grey[300],
                                  fontSize: 15,
                                  fontFamily: "serif",
                                ),
                                ),
                                SizedBox(height: 80,),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.all(Radius.circular(50))
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      borderRadius: BorderRadius.all(Radius.circular(50))
                                    ),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Coller le lien de la vidéo...",
                                        prefixIcon: Icon(Icons.paste, size: 20,)
                                      ),
                                    )
                                  ),
                                )
                              ],
                            ),
                          ),
                          ),
                      )
                      ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 60,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FormatsPage(
                                    videoTitle: "Ma vidéo incroyable",
                                    thumbnailUrl: "https://img.youtube.com/vi/<ID>/0.jpg",
                                    formats: [
                                      {'label': 'MP4 - 360p', 'size': '5 MB'},
                                      {'label': 'MP4 - 720p', 'size': '12 MB'},
                                      {'label': 'MP3 - Audio', 'size': '2 MB'},
                                    ],
                                  ),
                                ),
                              );
                            }, 
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 175, 15, 3)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text("Télécharger", 
                                style: TextStyle(
                                  color: Colors.grey[300],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                            ),
                        SizedBox(height: 15,),
                        Text("Platform supported",
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(FontAwesomeIcons.facebook, color: Colors.blue,),
                            Icon(FontAwesomeIcons.instagram, color: const Color.fromARGB(255, 145, 3, 74),),
                            Icon(FontAwesomeIcons.youtube, color: const Color.fromARGB(255, 238, 12, 24),),
                            Icon(FontAwesomeIcons.tiktok, color: Colors.black,)
                          ],
                        ),
                        ],
                      )
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
}
