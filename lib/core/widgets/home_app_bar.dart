import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../utils/svg_icons.dart';



class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(55.0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.transparent,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: HexColor('005556'),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: SvgPicture.asset(SvgIcons.messageIcon),
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 8),
              Container(
                decoration: BoxDecoration(
                  color: HexColor('005556'),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: SvgPicture.asset(SvgIcons.heartIcon),
                  onPressed: () {},
                ),
              ),
              const Spacer(),
              InkWell(
                child: Image.asset(
                  PngImages.userPlaceHolder,
                  height: 35,
                  width: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}