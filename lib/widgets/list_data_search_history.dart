class DataModel {
  final String gambarHistory;
  final String judulHistory;
  final String genreHistory1;
  final String genreHistory2;

  DataModel(
      {required this.gambarHistory,
      required this.judulHistory,
      required this.genreHistory1,
      required this.genreHistory2});
}

List<DataModel> dataListSearchHistory = [
  DataModel(
      gambarHistory: 'assets/image/poster_life.jpg',
      judulHistory: 'Life',
      genreHistory1: '2017',
      genreHistory2: 'Sci-fi'),
  DataModel(
      gambarHistory: 'assets/image/poster_alien.jpg',
      judulHistory: 'Alien: Covenant',
      genreHistory1: '2017',
      genreHistory2: 'Sci-fi'),
  DataModel(
      gambarHistory: 'assets/image/poster_promotheus.jpg',
      judulHistory: 'Alien: Covenant',
      genreHistory1: '2017',
      genreHistory2: 'Sci-fi'),
];
