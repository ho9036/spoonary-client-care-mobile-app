import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constant/colors.dart';

class StartAppScreen extends ConsumerWidget {
  const StartAppScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          // 중앙 콘텐츠 영역
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 로고 이미지
                  Image.asset(
                    'assets/img/large_logo.png', // 로고 이미지 경로
                    width: 285,
                    height: 42,
                  ),
                  const SizedBox(height: 18),
                  // 부제목
                  const Text(
                    '모두를 위한 로봇 스터디',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // 하단 점 세개
          Container(
            margin: const EdgeInsets.only(bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDot(true),
                const SizedBox(width: 12),
                _buildDot(false),
                const SizedBox(width: 12),
                _buildDot(false),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDot(bool isSelected) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: isSelected ? selectedDotColor : unSelectedDotColor,
        shape: BoxShape.circle,
      ),
    );
  }
}