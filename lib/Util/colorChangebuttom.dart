import 'package:flutter/material.dart';
import '../Apptheme.dart';
import 'responsive.dart';

class ColorChageButton extends StatefulWidget {
  final String text;
  final Function() onTap;
  const ColorChageButton({super.key, required this.text, required this.onTap});

  @override
  State<ColorChageButton> createState() => _ColorChageButtonState();
}

class _ColorChageButtonState extends State<ColorChageButton> {
  double _animatedWidth = 0.0;
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? Stack(
            children: [
              if (!isHover)
                Container(
                  height: 65,
                  width: 250,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                        width: 3),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: 65,
                width: _animatedWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  gradient: primary,
                ),
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    isHover = !isHover;
                    _animatedWidth = value ? 250 : 0.0;
                  });
                },
                onTap: () {
                  setState(() => _animatedWidth = 250);
                  widget.onTap();
                },
                child: SizedBox(
                  height: 65,
                  width: 250,
                  child: Center(
                    child: Text(
                      widget.text.toUpperCase(),
                      style: TextStyle(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        : Responsive.isTablet(context)
            ? Stack(
                children: [
                  if (!isHover)
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: ThemeColor.textColor, width: 2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    height: 50,
                    width: _animatedWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: primary,
                    ),
                  ),
                  InkWell(
                      onHover: (value) {
                        setState(() {
                          isHover = !isHover;
                          _animatedWidth = value ? 200 : 0.0;
                        });
                      },
                      onTap: () {
                        setState(() => _animatedWidth = 200);
                        widget.onTap();
                      },
                      child: SizedBox(
                        height: 50,
                        width: 200,
                        child: Center(
                          child: Text(
                            widget.text.toUpperCase(),
                            style: TextStyle(
                              color: ThemeColor.textColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      )),
                ],
              )
            : Stack(
                children: [
                  if (!isHover)
                    Container(
                      height: 35,
                      width: 125,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: ThemeColor.textColor, width: 1.5),
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    height: 35,
                    width: _animatedWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      gradient: primary,
                    ),
                  ),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        isHover = !isHover;
                        _animatedWidth = value ? 125 : 0.0;
                      });
                    },
                    onTap: () {
                      setState(() => _animatedWidth = 125);
                      widget.onTap();
                    },
                    child: SizedBox(
                      height: 35,
                      width: 125,
                      child: Center(
                        child: Text(
                          widget.text.toUpperCase(),
                          style: TextStyle(
                            color: ThemeColor.textColor,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
  }
}
