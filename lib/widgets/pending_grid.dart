import 'package:charles_design/widgets/pending_item_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/pending_items.dart';
import '../providers/pending_item.dart';

class PendingGrid extends StatelessWidget {
  Widget build(BuildContext context) {
    final pendingItems = Provider.of<PendingItems>(context).items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: pendingItems.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        // builder: (c) => products[i],
        value: pendingItems[i],
        child: PendingItemCard(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
