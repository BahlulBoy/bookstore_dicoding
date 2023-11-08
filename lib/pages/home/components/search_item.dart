import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({
    super.key,
    required this.photo,
    required this.title,
    required this.creator,
    required this.price,
    required this.total,
    required this.onTap,
  });

  final String photo, title, creator;
  final int price, total;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        child: Row(
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
