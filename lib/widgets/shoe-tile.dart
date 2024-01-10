import '/models/Shoe.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  void Function(Shoe s) onAdd;

  ShoeTile({super.key, required this.shoe, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onAdd(shoe),
      child: Container(
        margin: const EdgeInsets.only(left: 20, top: 30),
        width: 280,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // show image
            Container(
              height: 250,
              width: 250,
              margin: const EdgeInsets.only(top: 30),
              child: Image.asset(
                shoe.imagePath,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                shoe.description,
                style: const TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // shoe info
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          shoe.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23),
                        ),
                        Text(
                          shoe.price,
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                    // add btn
                    Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7),
                            bottomRight: Radius.circular(7),
                          )),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 25,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
