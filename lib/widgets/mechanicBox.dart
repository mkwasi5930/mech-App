import 'package:flutter/material.dart';
import 'package:mech_app/model/mech.dart';
import 'package:mech_app/widgets/Rating.dart';
import 'package:mech_app/widgets/bigtext.dart';


class mechBox extends StatelessWidget {
  const mechBox({Key? key, required this.item}) : super(key: key);
  final Mechapro item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             BigText(text: item.name,color: Colors.grey),  
             Image.asset("assets/images/" + item.image, width: 300, height: 300),   
                   
             Container(
               padding: const EdgeInsets.only(left: 5),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                     Text(item.city,style: 
                const TextStyle(color: Colors.grey, fontSize: 18.0),),               
                    ],
                ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const[
                      RatingBox()
                    ],
                  )]))    
                ],
              ),
    );
  }
}
