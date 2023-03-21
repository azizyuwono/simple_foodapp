// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../models/foodcard.model.dart';

class FoodCard extends StatelessWidget {
  final FoodCardModel foodcard;

  const FoodCard({super.key, required this.foodcard});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 70,
            height: 70,
            child: Image.asset('assets/${foodcard.imageURL}.png'),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                foodcard.title,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                foodcard.desc,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                ),
              ),
            const  SizedBox(
                height: 5,
              ),
              Text(
                'IDR ${foodcard.price}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
              )
            ],
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: const EdgeInsets.only(bottom: 3),
              alignment: Alignment.center,
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.green),
              child: const Text(
                '+',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
