import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  
  final String imageURL;
  final String? description;

  const CustomCard2({super.key, this.description, required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      shadowColor: Colors.amber.withOpacity(0.2),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageURL),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            fadeInDuration: const Duration(milliseconds: 300),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
          ),
          if (description != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(description!))
        ],
      ),
    );
  }
}
