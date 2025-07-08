import 'package:flutter/material.dart';

class OptionWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String state;
  final String detail;
  final bool enable;

  const OptionWidget({
    Key? key,
    required this.onTap,
    required this.state,
    required this.detail,
    required this.enable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          // Main Card
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(16),
            width: 150,
            decoration: BoxDecoration(
              color: const Color(0xFF1C1B2F), // Dark background
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: enable ? Colors.blueAccent : Colors.transparent,
                width: 2,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  state,
                  style: const TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  detail,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          // Positioned check circle
          Positioned(
            top: 15,
            right: 20,
            child: Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF373850),
              ),
              child: enable
                  ? const Center(
                      child: Icon(
                        Icons.done,
                        color: Colors.lightBlueAccent,
                      ),
                    )
                  : const SizedBox(),
            ),
          ),
        ],
      ),
    );
  }
}
