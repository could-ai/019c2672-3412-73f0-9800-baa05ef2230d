import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/constants.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppStyles.sectionPadding,
      child: Column(
        children: [
          const Text(
            'OUR EXPERTISE',
            style: TextStyle(
              color: AppColors.accent,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Why Choose Us',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 60),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 900) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: _buildFeatureCard(
                      icon: FontAwesomeIcons.layerGroup,
                      title: 'Modern Design',
                      description: 'Aesthetic layouts that captivate your audience and enhance user experience.',
                    )),
                    const SizedBox(width: 30),
                    Expanded(child: _buildFeatureCard(
                      icon: FontAwesomeIcons.code,
                      title: 'Clean Code',
                      description: 'Scalable and maintainable architecture built with industry best practices.',
                    )),
                    const SizedBox(width: 30),
                    Expanded(child: _buildFeatureCard(
                      icon: FontAwesomeIcons.bolt,
                      title: 'Fast Performance',
                      description: 'Optimized for speed to ensure smooth interactions and quick load times.',
                    )),
                  ],
                );
              } else {
                return Column(
                  children: [
                    _buildFeatureCard(
                      icon: FontAwesomeIcons.layerGroup,
                      title: 'Modern Design',
                      description: 'Aesthetic layouts that captivate your audience and enhance user experience.',
                    ),
                    const SizedBox(height: 30),
                    _buildFeatureCard(
                      icon: FontAwesomeIcons.code,
                      title: 'Clean Code',
                      description: 'Scalable and maintainable architecture built with industry best practices.',
                    ),
                    const SizedBox(height: 30),
                    _buildFeatureCard(
                      icon: FontAwesomeIcons.bolt,
                      title: 'Fast Performance',
                      description: 'Optimized for speed to ensure smooth interactions and quick load times.',
                    ),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard({required IconData icon, required String title, required String description}) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: FaIcon(icon, color: AppColors.primary, size: 28),
          ),
          const SizedBox(height: 24),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.textSecondary,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
