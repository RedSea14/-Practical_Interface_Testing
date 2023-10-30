import 'package:apptest/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:apptest/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:apptest/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeHeaderContainer extends StatelessWidget {
  const HomeHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        color: TColors.primary,
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.33,
          child: Stack(
            children: [
              const Positioned(
                top: -150,
                left: -90,
                child: TCircularContainer(
                  width: 313,
                  height: 313,
                  color: TColors.white,
                  opacity: 0.2,
                ),
              ),
              const Positioned(
                top: 149,
                left: 260,
                child: TCircularContainer(
                  width: 161,
                  height: 169,
                  color: TColors.white,
                  opacity: 0.06,
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
