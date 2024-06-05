import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 7, 7, 7),

      body: Column(
        children: [
          Stack(
            children: [
             SizedBox(
              height: 551,
              width: 390,
              child: Image.asset("assets/images/pic9.png"),
             ),
             Positioned(
              top: 490,
              left: 75,
               child: SizedBox(
                height: 87,
                width: 250,
                child: Text("Alone in the Abyss",style:GoogleFonts.inter(fontSize:24,fontWeight:FontWeight.w400,color:const Color.fromRGBO(230, 154, 21,1)),),
               ),
             ),
              Positioned(
              top: 520,
              left: 140,
               child: SizedBox(
                height: 16,
                width: 62,
                child: Text("Youlakou",style:GoogleFonts.inter(fontSize:13,fontWeight:FontWeight.w600,color:const Color.fromRGBO(255, 255, 255,1)),),
               ),
             ),
             Positioned(
              top: 524,
              left: 357,
               child: SizedBox(
                height: 25,
                width: 25,
                child:Image.asset("assets/images/pic10.png")
               ),
             )
            ],
          ),
          Row(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SizedBox(
                  height: 18,
                  width: 50,
                  child: Text("4 min",style: GoogleFonts.inter(fontSize:15,fontWeight:FontWeight.w400,color:const Color.fromRGBO(255, 255, 255,1)),),
                ),
              )
            ],
          ),
          SizedBox( 
            height: 19,
            width: 370,
            child: Text("Dynamic Warmup | ",style: GoogleFonts.inter(fontSize:14,fontWeight:FontWeight.w400,color:const Color.fromRGBO(255, 255, 255, 1)),),
          ),
          const   SizedBox(height: 17,),
          Container(
            height: 6,
            width: MediaQuery.of(context).size.width*1.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
            ),
            child: Slider(
              min: 0,
              max: 100,
              value: 30,
              onChanged: (value) {
                
              },
             
              activeColor: const Color.fromRGBO(230, 154, 21, 1),
              inactiveColor: const Color.fromRGBO(217, 217, 217, 0.19),
            ),
          ),
          const SizedBox(height: 18,),
         const  Padding(
            padding: EdgeInsets.only(left: 13,right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               SizedBox(
                height: 20,
                width: 20,
                child: Icon(Icons.repeat_one,size: 30,color: Colors.white,),
               ),
                SizedBox(
                height: 25,
                width: 25,
                child: Icon(Icons.skip_previous,color: Colors.white,size: 30,),
               ),
                  SizedBox(
                height: 50,
                width: 50,
                child: Icon(Icons.play_circle,color: Colors.white,size: 48,),
               ),
                  SizedBox(
                height: 25,
                width: 25,
                child: Icon(Icons.skip_next,color: Colors.white,size: 30,),
               ),
                 SizedBox(
                height: 24,
                width: 24,
                child: Icon(Icons.volume_down_rounded,color: Colors.white,size: 30,),
               ),
              
            
              ],
            ),
          )
        ],
      ),
       bottomNavigationBar:BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 7, 7, 7),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedLabelStyle: GoogleFonts.abel(fontSize:12,fontWeight:FontWeight.w400,color:const Color.fromRGBO(157, 178, 206, 1)),
        selectedLabelStyle: GoogleFonts.abel(fontSize:12,fontWeight:FontWeight.w400,color:const Color.fromRGBO(230, 154, 21, 1)),
         iconSize: 24,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 7, 7, 7) ,
            icon: Icon(Icons.favorite_outline,color: Color.fromRGBO(230, 154, 21, 1),),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            backgroundColor:  Color.fromARGB(255, 7, 7, 7) ,
               
            icon: Icon(Icons.search,color: Color.fromRGBO(157, 178, 206, 1)),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,color: Color.fromRGBO(157, 178, 206, 1)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined,color: Color.fromRGBO(157, 178, 206, 1)),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            
            icon: Icon(Icons.person,color: Color.fromRGBO(157, 178, 206, 1),),
            label: 'Profile',
          ),
        ],
       )
    );
  }
}