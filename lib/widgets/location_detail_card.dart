import 'package:flutter/material.dart';

class LocationDetailsCard extends StatelessWidget {
  final Gradient gradient;
  final Color color;
  final VoidCallback onTap;

  const LocationDetailsCard({
    Key? key,
    required this.gradient,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.27,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  gradient: gradient,
                ),
                child: const Center(
                  child: Text(
                    "Location",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Icon(
                  Icons.location_on,
                  size: 100,
                  color: color,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                color: const Color(0xffF6F8FA),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: const Text(
                  "9.71",
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: gradient,
            ),
            padding: const EdgeInsets.all(10), // Add padding to make the icon size balanced
            child: const Icon(
              Icons.check,
              size: 60, // Adjusted size for better balance
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
