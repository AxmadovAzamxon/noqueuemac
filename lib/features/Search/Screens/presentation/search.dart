import 'package:flutter/material.dart';
import 'package:noq_app/exports/exports.dart';
import 'package:noq_app/features/ListPage.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int _currentIndex = 2;

  void _onTap(int index) {
    if (index == _currentIndex) return;

    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomePage()),
      );
    } else if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => Listpage()),
      );
    } else if (index == 3) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => ProfilePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F7F5),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), label: ''),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 72,
        height: 72,
        child: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: Colors.blue,
          onPressed: () {},
          child: const Icon(Icons.location_on, size: 25, color: Colors.white),
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.arrow_back),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 46,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.search, color: Colors.grey),
                            SizedBox(width: 8),
                            Text("Qidiruv", style: TextStyle(color: Colors.grey)),
                            Spacer(),
                            Icon(Icons.tune, color: Colors.grey),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),
                Wrap(
                  spacing: 18,
                  runSpacing: 18,
                  children: const [
                    _Category("Shifoxona", Icons.local_hospital),
                    _Category("Cafe", Icons.favorite, active: true),
                    _Category("Dorixona", Icons.medical_services),
                    _Category("Davlat idorasi", Icons.account_balance),
                    _Category("Barber Shop", Icons.content_cut),
                    _Category("Kinoteatr", Icons.movie),
                    _Category("Go‘zallik\nsalonlari", Icons.face),
                    _Category("Texnik ko‘rik", Icons.build),
                  ],
                ),

                const SizedBox(height: 28),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Natijalar",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text("Hammasi ▼", style: TextStyle(color: Colors.grey)),
                  ],
                ),

                const SizedBox(height: 12),

                const _ResultItem(color: Colors.green, status: "Bo‘sh"),
                const _ResultItem(color: Colors.yellow, status: "O‘rtacha"),
                const _ResultItem(color: Colors.red, status: "150 coin"),
                const _ResultItem(color: Colors.green, status: "Bo‘sh"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// --- Category Widget ---
class _Category extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool active;

  const _Category(this.text, this.icon, {this.active = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 72,
          width: 72,
          decoration: BoxDecoration(
            color: active ? const Color(0xffFAD0E2) : Colors.white,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: active ? Colors.pink : Colors.blue),
        ),
        const SizedBox(height: 6),
        Text(text, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12))
      ],
    );
  }
}

// --- ResultItem Widget ---
class _ResultItem extends StatelessWidget {
  final Color color;
  final String status;

  const _ResultItem({required this.color, required this.status});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: color.withOpacity(0.2),
            child: Icon(Icons.location_on, color: color),
          ),
          const SizedBox(width: 14),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Joy nomi", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Manzil", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(status, style: TextStyle(color: color, fontSize: 12)),
          )
        ],
      ),
    );
  }
}

