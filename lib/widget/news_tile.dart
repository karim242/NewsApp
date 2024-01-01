// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
   NewsTile({Key? key,required this.articleModel}) : super(key: key);
ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child:
          // CachedNetworkImage(
          //     height: 200,
          //       width: double.infinity,
          //        fit: BoxFit.cover,
          //   imageUrl: articleModel.image??" ",
          //   placeholder: (context, url) => CircularProgressIndicator(),
          //   errorWidget: (context, url, error ) =>
          //       Image(image:AssetImage("assets/technology.jpeg"),),
          //   ),
          Image.network(
          articleModel.image?? "",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
         Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            )),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle?? " ",
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
