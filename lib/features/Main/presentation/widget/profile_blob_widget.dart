import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/constants/constants.dart';

class ProfileBlobWidget extends StatelessWidget {
  const ProfileBlobWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BlobClipper(waveHeight: 100.h),
      child: Container(
        height: 300.h,
        color: Pallete.greenColor,
      ),
    );
  }
}

class BlobClipper extends CustomClipper<Path> {
  final double waveHeight;

  BlobClipper({required this.waveHeight});

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - waveHeight);

    final firstControlPoint = Offset(size.width / 4, size.height);
    final firstEndPoint = Offset(size.width / 2.25, size.height - waveHeight);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    final secondControlPoint = Offset(
        size.width - (size.width / 3.25), size.height - (waveHeight * 2));
    final secondEndPoint = Offset(size.width, size.height - waveHeight);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
