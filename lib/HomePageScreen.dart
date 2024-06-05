import 'package:flutter/material.dart';
import 'package:flutter_music_app/GalleryScreen.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19,1),
      body: Stack(
        children: [
          Container(
          height:880,
          width:403,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 7, 7, 7),
          ),
          ),
          Image.asset("assets/images/pic.png"),
        Positioned(
            top: 420,
            left: 40,
            child:Column(
            children: [
              SizedBox(
                height: 150,
                width: 308,
                child: Text("Dancing between The shadows Of rhythm ",style:GoogleFonts.inter(fontSize:36,fontWeight:FontWeight.w600,color:const Color.fromRGBO(255, 255, 255,1))),
              ),
            ],

            
          )),
         Positioned(
          top: 590,
          right: 10,
          left: 10,
          child: SizedBox(
            height: 200,
            width: 672,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context) {
                      return const GalleryScreen();
                    },));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 47,
                    width: 261,
                    decoration:BoxDecoration(
                      color: const Color.fromRGBO(255, 46, 0,1),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Text("Get started",style:GoogleFonts.inter(fontSize:20,fontWeight:FontWeight.w600,color:const Color.fromRGBO(19, 19, 19, 1))),
                  ),
                )
              ],
            ),
          )
         
         ),
         Positioned(
          top: 659,
          right: 10,
          left: 10,
          child: SizedBox(
            height: 200,
            width: 672,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 47,
                  width: 261,
                  decoration:BoxDecoration(
                    color: const Color.fromRGBO(19, 19, 19,1),
                    borderRadius: BorderRadius.circular(19),
                    border: Border.all(width: 1,color: const Color.fromRGBO(255, 61, 0, 1))
                  ),
                  child: Text("Continue with Email",style:GoogleFonts.inter(fontSize:20,fontWeight:FontWeight.w600,color:const Color.fromRGBO(255, 61, 0, 1))),
                )
              ],
            ),
          )
         
         ),
          Positioned(
          top: 720,
          right: 10,
          left: 10,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 250,
                
                child: Text("by continuing you agree to terms of services and  Privacy policy",style:GoogleFonts.inter(fontSize:14,fontWeight:FontWeight.w600,color:const Color.fromRGBO(203, 200, 200, 1))),
              )
            ],
          )
         
         ),

        ]
        ),

        
    );
  }
}