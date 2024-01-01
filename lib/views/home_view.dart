import 'package:flutter/material.dart';
import '../widget/categories_listView.dart';
import '../widget/new_list_view_builder.dart';


class HomeViews extends StatelessWidget {
  const HomeViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "News",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                "Cloud",
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: CategoriesListView()),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              const NewsListViewBuilder(category: 'general',),
            ],
          ),
        ));
  }
}
