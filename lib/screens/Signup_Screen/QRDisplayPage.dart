import 'package:flutter/material.dart';
import 'package:tomiru_social_flutter/widgets/custom_appbar.dart';

class QRDisplayPage extends StatelessWidget {
  final String imagePath;

  const QRDisplayPage({Key? key, required this.imagePath}) : super(key: key);

  Widget _body(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            color: Color(0xFFF9F9F9),
            width: MediaQuery.of(context).size.width * 1.0,
            height: 60,
            padding: EdgeInsets.all(15),
            child: Text(
              'MÃ QR CỦA BẠN - DANH THIẾP TOMIRU',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Image.asset('assets/images/detail-qr.png'),
          SizedBox(height: 10),
          _buttonList(context),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              'Người dùng Tomiru có thể tìm và tuơng tác với bạn khi quét mã QR này. Hãy chia sẻ mã QR của bạn để có nhiều cơ hội kết nối với cộng đồng hơn!',
              style: TextStyle(),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Link giới thiệu:',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  'http://tomiru.com/nhg226',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xFF196DFF),
                      color: Color(
                        0xFF196DFF,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buttonList(context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: OutlinedButton(
            onPressed: () {},
            child: Text('Sao chép mã QR', style: TextStyle(fontSize: 16)),
            style: OutlinedButton.styleFrom(
              foregroundColor: Color(0xFF196DFF),
              side: BorderSide(color: Color(0xFF196DFF)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: OutlinedButton(
            onPressed: () {},
            child: Text('Tải về máy', style: TextStyle(fontSize: 16)),
            style: OutlinedButton.styleFrom(
              foregroundColor: Color(0xFF196DFF),
              side: BorderSide(color: Color(0xFF196DFF)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: OutlinedButton(
            onPressed: () {},
            child: Text('Chia sẻ mã QR', style: TextStyle(fontSize: 16)),
            style: OutlinedButton.styleFrom(
              foregroundColor: Color(0xFF196DFF),
              side: BorderSide(color: Color(0xFF196DFF)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        titleText: 'QR của tôi',
        onBackPress: () => Navigator.of(context).pop(),
      ),
      body: SingleChildScrollView(
        child: _body(context),
      ),
    );
  }
}
