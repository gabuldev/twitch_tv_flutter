import 'package:flutter/material.dart';
import 'package:twitch_tv/app/modules/channels/widgets/tag_widget.dart';

class ChannelItemWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String bottomtitle;
  final String photoURL;
  final List<String> tags;

  const ChannelItemWidget({
    Key key,
    @required this.title,
    @required this.photoURL,
    this.subtitle,
    this.bottomtitle,
    this.tags,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    _buildTags() {
      if (tags != null) {
        return tags.map((e) => TagWidget(label: e)).toList();
      } else {
        return Container();
      }
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 100,
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: Image.network(
                  photoURL,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey[350]),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  bottomtitle,
                  style: TextStyle(color: Colors.grey[350]),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: _buildTags(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
