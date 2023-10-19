import 'package:flutter/material.dart';

import '../models/models.dart';
import '../utilities/utilities.dart';

class PlantCard extends StatelessWidget {
  final PlantModel plant;
  final VoidCallback onPressed;
  const PlantCard({super.key, required this.plant, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: AppColors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(
                height: 200,
                width: 156,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(27),
                    child: Image.asset(plant.images[0]))),
          ),
          const SizedBox(height: 5),
          Text(plant.name,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Row(
            children: [
              Text("\$ ${plant.price}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              const Spacer(),
              GestureDetector(
                onTap: onPressed,
                child: Container(
                  height: 40,
                  alignment: Alignment.center,
                  width: 40,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.black),
                  child: const Icon(
                    Icons.favorite_outlined,
                    color: AppColors.altWhite,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
