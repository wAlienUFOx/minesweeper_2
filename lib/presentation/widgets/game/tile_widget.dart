import 'package:flutter/material.dart';
import 'package:minesweeper_2/data/models/tile_model.dart';
import 'package:minesweeper_2/presentation/theme/colors.dart';

class TileWidget extends StatefulWidget {
  final TileModel tile;
  final double size;

  const TileWidget({required this.tile, required this.size, super.key});

  @override
  State<TileWidget> createState() => _TileWidgetState();
}

class _TileWidgetState extends State<TileWidget> {
  void openTile() {
    //if (!widget.tile.hasFlag) gameService.openTile(widget.tile);
  }

  void changeFLag() {
    //gameService.changeFlag(widget.tile);
  }

  void openByFlags() {
    //gameService.openByFlags(widget.tile);
  }

  void update() => {}; //setState(() {});

  @override
  Widget build(BuildContext context) {
    Widget child = IgnorePointer(
      ignoring: widget.tile.ignore,
      child: SizedBox(
        height: widget.size,
        width: widget.size,
        child: Container(
          decoration: BoxDecoration(
            color: ColorsTheme.of(context).tileShadowColor,
            border: Border.all(color: ColorsTheme.of(context).primarySF, width: 0.5),
          ),
          margin: EdgeInsets.all(1 * widget.size / 40),
          child: Center(child: buildChild()),
        ),
      ),
    );

    if (widget.tile.isOpen) {
      return GestureDetector(onDoubleTap: openByFlags, child: child);
    }
    if (false /*settingsService.flagMode == FlagMode.doubleTap*/ ) {
      return GestureDetector(onTap: openTile, onDoubleTap: changeFLag, child: child);
    } else {
      return GestureDetector(onTap: openTile, onLongPress: changeFLag, child: child);
    }
  }

  Widget buildChild() {
    double fontSize = 25 * widget.size / 40;
    double iconSize = 25 * widget.size / 40;
    if (!widget.tile.isOpen && widget.tile.hasFlag) {
      return Container(
        width: double.infinity,
        height: double.infinity,
        color: ColorsTheme.of(context).tileColor,
        child: Icon(Icons.flag, color: ColorsTheme.of(context).flagColor, size: iconSize),
      );
    }
    if (!widget.tile.isOpen) return Container(color: ColorsTheme.of(context).tileColor);
    if (widget.tile.hasMine) {
      return Container(
        width: double.infinity,
        height: double.infinity,
        color: ColorsTheme.of(context).tileColor,
        child: Icon(Icons.local_fire_department, color: ColorsTheme.of(context).mineColor, size: iconSize),
      );
    }
    Color color = ColorsTheme.of(context).colorOf1;
    if (widget.tile.digit == 0) return Container(color: ColorsTheme.of(context).tileColor);
    if (widget.tile.digit == 2) color = ColorsTheme.of(context).colorOf2;
    if (widget.tile.digit == 3) color = ColorsTheme.of(context).colorOf3;
    if (widget.tile.digit == 4) color = ColorsTheme.of(context).colorOf4;
    if (widget.tile.digit == 5) color = ColorsTheme.of(context).colorOf5;
    if (widget.tile.digit == 6) color = ColorsTheme.of(context).colorOf6;
    if (widget.tile.digit == 7) color = ColorsTheme.of(context).colorOf7;
    if (widget.tile.digit == 8) color = ColorsTheme.of(context).colorOf8;
    return Text(
      widget.tile.digit.toString(),
      style: TextStyle(color: color, fontSize: fontSize, fontWeight: FontWeight.bold),
    );
  }
}
