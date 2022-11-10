// pages/room_detail/data.dart

class RoomDetailData {
  String? id;
  String? title;
  String? community;
  String? subTitle;
  int? size;
  String? floor;
  int? price;
  String? roomType;
  List<String>? houseImgs;
  List<String>? tags;
  List<String>? oriented;
  List<String>? appliances;

  RoomDetailData(
      {this.id,
      this.title,
      this.community,
      this.subTitle,
      this.size,
      this.floor,
      this.price,
      this.roomType,
      this.houseImgs,
      this.tags,
      this.oriented,
      this.appliances});
}

var defaultData = RoomDetailData(
    id: '1111',
    title: '整租 中山路 历史最低价',
    community: '中山花园',
    subTitle: '近地铁,附近有商场! https://img1.doubanio.com/view/photo/l/public/p2625212097.webphttps://img1.doubanio.com/view/photo/l/public/p2625212097.webphttps://img1.doubanio.com/view/photo/l/public/p2625212097.webphttps://img1.doubanio.com/view/photo/l/public/p2625212097.webphttps://img1.doubanio.com/view/photo/l/public/p2625212097.webphttps://img1.doubanio.com/view/photo/l/public/p2625212097.webphttps://img1.doubanio.com/view/photo/l/public/p2625212097.webphttps://img1.doubanio.com/view/photo/l/public/p2625212097.webphttps://img1.doubanio.com/view/photo/l/public/p2625212097.webphttps://img1.doubanio.com/view/photo/l/public/p2625212097.webphttps://img1.doubanio.com/view/photo/l/public/p2625212097.webphttps://img1.doubanio.com/view/photo/l/public/p2625212097.webphttps://img1.doubanio.com/view/photo/l/public/p2625212097.webphttps://img1.doubanio.com/view/photo/l/public/p2625212097.webphttps://img1.doubanio.com/view/photo/l/public/p2625212097.webphttps://img1.doubanio.com/view/photo/l/public/p2625212097.webphttps://img1.doubanio.com/view/photo/l/public/p2625212097.webp',
    size: 100,
    floor: '高楼层',
    price: 3000,
    oriented: ['南'],
    roomType: '三室',
    appliances: ['衣柜', '洗衣机'],
    tags: ['近地铁', '集中供暖', '新上', '随时看房'],
    houseImgs: [
      'https://img1.doubanio.com/view/photo/l/public/p2625212097.webp',
      'https://img9.doubanio.com/view/photo/l/public/p2540116434.webp',
      'https://wx3.sinaimg.cn/mw1024/006NGfpGgy1h7yo0deneej316o1kwwuj.jpg'
    ]);
