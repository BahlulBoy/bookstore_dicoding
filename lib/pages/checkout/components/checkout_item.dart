import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CheckoutItem extends StatelessWidget {
  const CheckoutItem({
    super.key,
    required this.photo,
    required this.title,
    required this.creator,
    required this.price,
    required this.total,
    required this.add,
    required this.remove,
  });

  final String photo, title, creator;
  final int price, total;
  final Function(int value) add, remove;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 80,
          height: 125,
          child: ClipRRect(
            child: CachedNetworkImage(
              imageUrl: photo,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: SizedBox(
            height: 125,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        creator,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Rp.$price',
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3C87CC),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Material(
                        color: const Color(0xFF3C87CC),
                        child: InkWell(
                          onTap: () => add(total),
                          borderRadius: BorderRadius.circular(100),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 5,
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 13,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        '$total',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Material(
                        color: const Color(0xFF3C87CC),
                        child: InkWell(
                          onTap: () => remove(total),
                          borderRadius: BorderRadius.circular(100),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 5,
                            ),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 13,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
