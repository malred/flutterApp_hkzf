// pages/home/tab_index/index_recommend_data.dart
class IndexRecommendItem{
  String title;
  String subTitle;
  String imageUri;
  String navigateUri;

  IndexRecommendItem(
      this.title, this.subTitle, this.imageUri, this.navigateUri);
}
List<IndexRecommendItem> indexRecommendData=[
  IndexRecommendItem('bs1','bs1', 'static/images/bs1.png', 'login'),
  IndexRecommendItem('hs2','hs2', 'static/images/hs2.png', 'login'),
  IndexRecommendItem('hs1','hs1', 'static/images/hs1.png', 'login'),
  IndexRecommendItem('hbss','hbss', 'static/images/hbss.png', 'login'),
];