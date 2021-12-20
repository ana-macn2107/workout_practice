import 'package:charles_design/providers/pending_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class PendingItemCard extends StatelessWidget {
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    var deviceSizeHeight = MediaQuery.of(context).size.height;
    var deviceSizeWidth = MediaQuery.of(context).size.width;

    final pendingItem = Provider.of<PendingItem>(context, listen: false);

    return Container(
      color: Colors.pink,
      width: deviceSizeWidth * 0.869,
      height: deviceSizeHeight * 0.111,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconTheme(
              data: new IconThemeData(color: Colors.white),
              child: Icon(Icons.call_outlined),
            ),
            Column(
              children: <Widget>[
                Text(
                  pendingItem.title,
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  pendingItem.description,
                  style: TextStyle(fontSize: 8),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconTheme(
                        data: new IconThemeData(color: Colors.white),
                        child: Icon(
                          Icons.call_outlined,
                          size: 10,
                        )),
                    Text(DateFormat("yyyy-MM-dd").format(pendingItem.date)),
                    Text(DateFormat("hh:mm").format(pendingItem.time))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
