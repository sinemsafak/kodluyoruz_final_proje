import 'package:flutter/material.dart';

class TipsPage extends StatelessWidget {
  final List<String> tips = [
    'Enerji tasarrufu yapmak için LED ampuller kullanın.',
    'Su tasarrufu için kısa duşlar alın.',
    'Geri dönüşüm kutularınızı düzenli olarak kullanın.',
    'Toplu taşıma veya bisiklet kullanarak karbon ayak izinizi azaltın.',
    'Yerel ürünleri satın alarak çevrenize destek olun.',
    'Gün içinde bilgisayarınızı uyku moduna alın.',
  ];

  final List<String> tipsDetails = [
    'LED ampuller, geleneksel ampullere göre çok daha az enerji tüketir.',
    'Kısa duşlar almak, su tasarrufu yapmanın etkili bir yoludur.',
    'Geri dönüşüm kutularını kullanarak atıklarınızı düzenli olarak ayrıştırın ve geri dönüşüme kazandırın.',
    'Toplu taşıma veya bisiklet kullanmak, karbon ayak izinizi azaltmanın çevre dostu bir yoludur.',
    'Yerel ürünleri satın alarak, çevrenize ve yerel ekonomiye destek olabilirsiniz.',
    'Bilgisayarınızı uyku moduna alarak enerji tüketimini azaltabilir ve kaynakları koruyabilirsiniz.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Günlük İpuçları'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: tips.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _showTipDetails(context, tips[index], tipsDetails[index]);
            },
            child: Card(
              elevation: 3,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                title: Text(
                  tips[index],
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.lightbulb_outline),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showTipDetails(BuildContext context, String title, String details) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: Text(details),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Kapat'),
            ),
          ],
        );
      },
    );
  }
}
