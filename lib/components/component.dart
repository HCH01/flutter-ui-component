import 'package:flutter/material.dart';

class Component extends StatelessWidget {
  const Component({super.key});
  final TextStyle headStyle = const TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 22);
  final TextStyle menuStyle = const TextStyle(fontWeight: FontWeight.w400, color: Colors.white,fontSize: 15);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 153,
      padding: const EdgeInsets.only(left: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(90),topLeft: Radius.circular(15),bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
        boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(0, 10),blurRadius: 20)],
        gradient: LinearGradient(colors: [Color.fromRGBO(233, 132, 133, 1),Color.fromRGBO(246, 180, 119, 1)],begin: Alignment.topLeft,end: Alignment.bottomRight)),
        child:  Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 70,),
                Text("Breakfast",style: headStyle),
                const SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Bread,",style: menuStyle),
                    Text("Peanut butter,",style: menuStyle),
                    Text("Apple,",style: menuStyle),
                  ],
                ),
                const SizedBox(height: 30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    const Text("525",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                    const SizedBox(width: 10,),
                    Text("kcal",style: menuStyle,)
                  ],
                )
              ],
            ),
            Positioned(
              top: -30,
              left: -30,
              child: Container(
                decoration: const BoxDecoration(boxShadow: [BoxShadow(color: Color.fromARGB(66, 133, 130, 130), offset: Offset(0, 10),blurRadius: 20)]),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: const Color.fromRGBO(239, 237, 237, 0.2),
                  backgroundImage: Image.asset('assets/img.png').image,
                ),
              ),
            )
          ],
        ),
    );
  }
}