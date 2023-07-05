import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  final int starCount;
  final double rating;
  final Color color;
  final double size;
  final Function(int) onRatingChanged;

  StarRating({
    this.starCount = 5,
    this.rating = 0.0,
    required this.color,
    this.size = 24.0,
    required this.onRatingChanged,
  }) : assert(rating != null && rating >= 0 && rating <= starCount);

  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  int currentRating = 0;

  @override
  void initState() {
    super.initState();
    currentRating = widget.rating.round();
  }

  Widget buildStar(int index) {
    Icon icon;
    if (index >= currentRating) {
      icon = Icon(Icons.star_border_rounded, color: widget.color);
    } else if (index > currentRating - 1 && index < currentRating) {
      icon = Icon(Icons.star_half_rounded, color: widget.color);
    } else {
      icon = Icon(Icons.star_rounded, color: widget.color);
    }

    return GestureDetector(
      onTap: () {
        setState(() {
          currentRating = index + 1;
        });
        if (widget.onRatingChanged != null) {
          widget.onRatingChanged(currentRating);
        }
      },
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.starCount, (index) {
        return buildStar(index);
      }),
    );
  }
}
