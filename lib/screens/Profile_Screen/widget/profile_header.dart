import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://s3-alpha-sig.figma.com/img/b919/2c16/0f3177f0b17f331e1acf645ca661bcb4?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=BjHaYO572C~Q9Nr-VDQ~xNeD1zK8R1GgBljvc32gzrjFDALW9GC~tst83Lurq1rK8UqZ3QahIXY9afT8JVzCigNR5LQsyxSicBPwc~TS47GRsIh5XY67dA1PiWkZ6UI6kz9C-jmwU~-3H6x1OF8S6FAM2TWCYLGbi21Yws~pLXY5OpIkLXVSw4iSGLbN4u7sfhbOlQJw4PzV0kQ17CT1uwxLBHJ8KYIl4fsIhLzWc5vhpxrqyUMMX26rGgn0SVFe6MotLPka55rY6mWhIhlKy0Oxz-uG1j12k2ixSyLXg2Y~P-5jnXFHbjU1OeNVj~NIbOtEkaoReUrgn9G7ya3U5w__'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: -55,
          child: CircleAvatar(
            radius: 65,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/images/mark-zuckerberg.jpg"),
            ),
          ),
        ),
        Positioned(
          bottom: -120,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Tony Nguyen',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.verified,
                    color: Colors.blue,
                    size: 16,
                  ),
                ],
              ),
              SizedBox(height: 4),
              Text(
                '11K người theo dõi | 0 đang theo dõi',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
        // Nút back
        Positioned(
          top: 40,
          left: 10,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,     
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
              iconSize: 20,
              padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              splashRadius: 20,
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}
