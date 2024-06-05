import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'PlayerScreen.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

List images = [
  "assets/images/pic2.png",
  "assets/images/pic3.png",
  "assets/images/pic4.png"
];

List song = ['Dead inside', 'Alone', 'Heartless'];

List date = ['2020', '2023', '2023'];

List singers = ["assets/images/pic7.png", "assets/images/pic8.png"];
List names=['We are Chaos','Smile'];
class _GalleryScreenState extends State<GalleryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 27, 27, 27),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                      height: 367,
                      width: 459,
                      child: Image.asset("assets/images/pic1.png")),
                  Positioned(
                    top: 230,
                    left: 12,
                    child: SizedBox(
                      height: 44,
                      width: 200,
                      child: Text(
                        "A.L.O.N.E",
                        style: GoogleFonts.inter(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 290,
                    left: 12,
                    child: Container(
                      alignment: Alignment.center,
                      height: 37,
                      width: 127,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        color: const Color.fromRGBO(255, 46, 0, 1),
                      ),
                      child: Text(
                        "Subscribe",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(19, 19, 19, 1)),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 7,
                    width: 21,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: const Color.fromRGBO(255, 61, 0, 1)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: const Color.fromRGBO(159, 159, 159, 1),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: const Color.fromRGBO(159, 159, 159, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 10)),
                  SizedBox(
                    height: 24,
                    width: 110,
                    child: Text(
                      "Discography",
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 46, 0, 1)),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 7),
                    child: SizedBox(
                      height: 22,
                      width: 55,
                      child: Text(
                        "See all",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(248, 162, 69, 1)),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 140,
                              width: 119,
                              child: GestureDetector(
                                onTap: () {
                                 Navigator.push(context, MaterialPageRoute(builder:(context) {
                                   return const Player();
                                 },));
                                },
                                child: Image.asset(images[index % images.length])),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 15,
                              width: 100,
                              child: Text(
                                song[index % song.length],
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(203, 200, 200, 1)),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                              width: 100,
                              child: Text(
                                date[index % date.length],
                                style: GoogleFonts.inter(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(132, 125, 125, 1)),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 10)),
                  SizedBox(
                    //height: 27,
                    width: 117,
                    child: Text(
                      "Popular singles",
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(203, 200, 200, 1)),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 7),
                    child: SizedBox(
                      height: 22,
                      width: 55,
                      child: Text(
                        "See all",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(248, 162, 69, 1)),
                      ),
                    ),
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 72,
                                width: 67,
                                child: Image.asset(singers[index % singers.length]),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              SizedBox(
                               height: 60,
                          
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height:19,
                                      width: 110,
                                      child: Text(names[index%names.length],
                                          style: GoogleFonts.inter(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: const Color.fromRGBO(
                                                  203, 200, 200, 1))),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 12,
                                          width: 27,
                                          child: Text("2023",
                                              style: GoogleFonts.inter(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromRGBO(
                                                      132, 125, 125, 1))),
                                        ),
                                        const SizedBox(width: 3,),
                                        SizedBox(
                                          height: 15,
                                          width: 7,
                                          child: Text("*",
                                              style: GoogleFonts.inter(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  color: const Color.fromRGBO(
                                                      203, 200, 200, 1))),
                                        ),
                                        const SizedBox(width: 3,),

                                        SizedBox(
                                          height: 14,
                                          width: 67,
                                          child: Text("Easy Living",
                                              style: GoogleFonts.inter(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromRGBO(
                                                      132, 125, 125, 1))),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Column(
                                  children: [
                                    Container(
                                      height:5 ,
                                      width: 5,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(217, 217, 217, 1)
                                      ),
                                    ),
                                    const SizedBox(height: 3,),
                                    Container(
                                      height:5 ,
                                      width: 5,
                                      
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(217, 217, 217, 1)
                                      ),
                                    ),
                                    const SizedBox(height: 3,),

                                    Container(
                                      height:5 ,
                                      width: 5,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(217, 217, 217, 1)
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              )
            ],
          ),
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
            backgroundColor:  Color.fromARGB(255, 7, 7, 7) ,
            icon: Icon(Icons.favorite_outline,color: Color.fromRGBO(157, 178, 206, 1),),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(19, 19, 19, 1) ,
               
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
            
            icon: Icon(Icons.person,color: Color.fromRGBO(230, 154, 21, 1),),
            label: 'Profile',
          ),
        ],
       )
        );
  }
}
