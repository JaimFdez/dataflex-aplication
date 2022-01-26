import 'package:flutter/material.dart';

const _duration = Duration(milliseconds: 350);
const _minSize = 50.0;
const _iconSize = 24.0;

class ButtonFAB extends StatefulWidget {
  ButtonFAB({
    Key? key,
    this.expanded = false,
    required this.onTap,
  }) : super(key: key);


  final bool expanded;
  final VoidCallback onTap;

  @override
  _ButtonFABState createState() => _ButtonFABState();
}

class _ButtonFABState extends State<ButtonFAB> {
  double _maxSize = 150.0;
  final _keyText = GlobalKey();

  @override
  void initState(){
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      setState(() {
        _maxSize = _keyText.currentContext!.size!.width + _minSize + _iconSize / 2;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final position = _minSize / 2 - _iconSize / 2;
    
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: _duration,
        width: widget.expanded ? _maxSize : _minSize,
        height: _minSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_minSize / 2),
          color: Colors.blue
        ),
        child: Stack(
          children: [
            Positioned(
              left: position,
              top: position,
              child: Icon(Icons.shopping_cart, color: Colors.white,),
            ),
            Positioned(
              left: position + 1.5 * _iconSize,
              top: position,
              child: Text(
                'Nuevo Pedido',
                key: _keyText,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}