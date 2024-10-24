import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:thread_app_sample/feed_model.dart';

class HomeFeedListcontroller extends GetxController {
  List<FeedModel> feedList = [];

  late CollectionReference feedsCollectionRef;

  @override
  void onInit() {
    super.onInit();
    feedsCollectionRef = FirebaseFirestore.instance.collection('feeds');
    loadAllFeeds();
  }

  void loadAllFeeds() async {
    var feedData = await feedsCollectionRef.get();
    feedList = feedData.docs
        .map<FeedModel>(
            (data) => FeedModel.fromJson(data.data() as Map<String, dynamic>))
        .toList();
    update();
  }

  void reload() {
    feedList.clear();
    loadAllFeeds();
  }

  void removeFeed(String feedId) {
    feedList.removeWhere((feed) => feed.id == feedId);
    update();
  }
}
