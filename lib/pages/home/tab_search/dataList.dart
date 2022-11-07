// pages/home/tab_search/dataList.dart
class RoomListItemData {
  final String id;
  final String title;
  final String subTitle;
  final String imageUrl;
  final List<String> tags;
  final int price;

  RoomListItemData(
      this.id, this.title, this.subTitle, this.imageUrl, this.tags, this.price);
}

List<RoomListItemData> dataList = [
  RoomListItemData(
      'room/1',
      '朝阳门南大街 2室1厅 8300元',
      '二室/114/东|北/朝阳门南大街',
      'https://pic2.zhimg.com/80/v2-a4d6e46423c8e3275a035b6681958abd_720w.webp',
      ['近地铁', '集中供暖', '新上', '随时看房'],
      8300),
  RoomListItemData(
      'room/1',
      '朝阳门南大街 2室1厅 8300元',
      '二室/114/东|北/朝阳门南大街',
      'https://pic2.zhimg.com/80/v2-a4d6e46423c8e3275a035b6681958abd_720w.webp',
      ['近地铁', '集中供暖', '新上', '随时看房'],
      8300),
  RoomListItemData(
      'room/1',
      '朝阳门南大街 2室1厅 8300元',
      '二室/114/东|北/朝阳门南大街',
      'https://pic2.zhimg.com/80/v2-a4d6e46423c8e3275a035b6681958abd_720w.webp',
      ['近地铁', '集中供暖', '新上', '随时看房'],
      8300),
  RoomListItemData(
      'room/1',
      '朝阳门南大街 2室1厅 8300元',
      '二室/114/东|北/朝阳门南大街',
      'https://pic2.zhimg.com/80/v2-a4d6e46423c8e3275a035b6681958abd_720w.webp',
      ['近地铁', '集中供暖', '新上', '随时看房'],
      8300),
];
