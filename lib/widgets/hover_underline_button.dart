import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(child: HoverUnderlineText("Click Me!")),
      ),
    );
  }
}

class HoverUnderlineText extends StatefulWidget {
  final String text;
  final Color color;
  final double fontSize;

  const HoverUnderlineText(
    this.text, {
    super.key,
    this.color = Colors.white,
    this.fontSize = 20,
  });

  @override
  _HoverUnderlineTextState createState() => _HoverUnderlineTextState();
}

class _HoverUnderlineTextState extends State<HoverUnderlineText> {
  bool _isHovered = false;
  bool _isClicked = false;

  void _handleClick() {
    setState(() {
      _isClicked = true;
    });
    Future.delayed(Duration(milliseconds: 200), () {
      setState(() {
        _isClicked = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: _handleClick,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.text,
              style: TextStyle(fontSize: widget.fontSize, color: widget.color),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              width:
                  _isClicked
                      ? widget.text.length *
                          12.0 // Expands slightly on click
                      : _isHovered
                      ? widget.text.length * 10.0
                      : 0,
              // Adjust width dynamically
              height: 2,
              color: widget.color,
            ),
          ],
        ),
      ),
    );
  }
}
