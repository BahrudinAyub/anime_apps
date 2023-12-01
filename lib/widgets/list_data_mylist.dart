class DataModel {
  final String gambarMylist;
  final String judulMylist;
  final String genreMylist1;
  final String genreMylist2;

  DataModel(
      {required this.gambarMylist,
      required this.judulMylist,
      required this.genreMylist1,
      required this.genreMylist2});
}

List<DataModel> dataListMylist = [
  DataModel(
      gambarMylist: 'assets/image/poster_underwater_list.jpg',
      judulMylist: 'UnderWater',
      genreMylist1: 'Action',
      genreMylist2: 'Sci-Fi'),
  DataModel(
      gambarMylist: 'assets/image/poster_extraction_list.jpg',
      judulMylist: 'Extraction',
      genreMylist1: 'Action',
      genreMylist2: 'Thriller'),
  DataModel(
      gambarMylist: 'assets/image/poster_greyhound_list.jpg',
      judulMylist: 'Greyhound',
      genreMylist1: 'Action',
      genreMylist2: 'Drama'),
];
