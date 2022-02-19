/*
 * Copyright (c) 2020 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import 'package:flutter/material.dart';
import '../../constants/app_image_paths.dart';
import '../../shared_widgets/app_bar_widget.dart';
import '../../data/recipe_repository.dart';
import 'widgets/recipe_item_widget.dart';
import 'widgets/footer_widget.dart';

class RecipeListPage extends StatelessWidget {
  const RecipeListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recipes = RecipeRepository.getRecipes();

    //TODO #2 Add SliverPadding
    //TODO #3 Add SliverToBoxAdapter

    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            const AppBarWidget(
                text: 'Reciperlich', imagePath: AppImagePaths.mainImage),
            SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: RecipeItem(
                    recipes[index],
                  ),
                ),
                childCount: recipes.length,
              ),
              itemExtent: 110,
            ),
            const SliverToBoxAdapter(
              child: FooterWidget(),
            )
          ],
        ),
      ),
    );
  }
}
