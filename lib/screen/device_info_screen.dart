import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeviceInfoScreen extends ConsumerWidget {
  const DeviceInfoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: 실제로는 ref.watch(robotProvider) 등으로 데이터를 가져오세요.
    const robotName = 'Robot Model X';
    const robotImage = 'assets/robot_model_x.png';
    const description =
        'The Robot Model X is a versatile and powerful robot designed for a wide range of tasks. '
        'It features advanced sensors, robust construction, and a user-friendly interface.';
    final specs = {
      'Dimensions': '12 x 10 x 8 inches',
      'Weight': '5 lbs',
      'Battery Life': '4 hours',
      'Max Speed': '2 m/s',
      'Payload Capacity': '2 kg',
      'Operating Temp': '0-40°C',
    };
    final features = <_Feature>[
      _Feature(icon: Icons.radar, label: 'Advanced Sensors'),
      _Feature(icon: Icons.build, label: 'Robust Construction'),
      _Feature(icon: Icons.desktop_mac, label: 'User-Friendly Interface'),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF062D2F),
      appBar: AppBar(
        backgroundColor: const Color(0xFF062D2F),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Robot Info'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- 제목 & 이미지 ---
            Text(
              robotName,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Center(
              child: Image.asset(
                robotImage,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 16),

            // --- 설명 ---
            Text(
              description,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(color: Colors.white70, height: 1.4),
            ),
            const SizedBox(height: 24),

            // --- Specifications ---
            Text(
              'Specifications',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            const Divider(color: Colors.white24),
            ...specs.entries.map((e) => _SpecRow(title: e.key, value: e.value)),
            const SizedBox(height: 24),

            // --- Key Features ---
            Text(
              'Key Features',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            ...features.map((f) => _FeatureItem(feature: f)),
            const SizedBox(height: 32),

            // --- 버튼 ---
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF1FA67A), // 버튼 색
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () {
                  // TODO: 장치 추가 로직
                },
                child: const Text(
                  '+ 장치 추가하기',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),

      // --- 하단 네비게이션 바 ---
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF062D2F),
        selectedItemColor: const Color(0xFF1FA67A),
        unselectedItemColor: Colors.white54,
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.devices),
            label: 'Device',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad),
            label: 'Control',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle),
            label: 'Learning',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (idx) {
          // TODO: 네비게이션 처리
        },
      ),
    );
  }
}

// 사양 Row
class _SpecRow extends StatelessWidget {
  final String title;
  final String value;
  const _SpecRow({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.white70),
            ),
            Text(
              value,
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
        const Divider(color: Colors.white12),
      ],
    );
  }
}

// Feature 데이터 클래스
class _Feature {
  final IconData icon;
  final String label;
  _Feature({required this.icon, required this.label});
}

// Feature 아이템
class _FeatureItem extends StatelessWidget {
  final _Feature feature;
  const _FeatureItem({required this.feature});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF1FA67A),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(feature.icon, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 16),
          Text(
            feature.label,
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
