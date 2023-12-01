class DataModel {
  final String gambarPopularTV;
  final String judulPopularTV;
  final String genrePopularTV1;
  final String genrePopularTV2;

  DataModel(
      {required this.gambarPopularTV,
      required this.judulPopularTV,
      required this.genrePopularTV1,
      required this.genrePopularTV2});
}

List<DataModel> dataListPopularTV = [
  DataModel(
      gambarPopularTV: 'assets/image/poster_band.jpg',
      judulPopularTV: 'Band of Brothers',
      genrePopularTV1: '2001',
      genrePopularTV2: 'War'),
  DataModel(
      gambarPopularTV: 'assets/image/poster_the_pacific.jpg',
      judulPopularTV: 'The Pacific',
      genrePopularTV1: '2010',
      genrePopularTV2: 'War'),
  DataModel(
      gambarPopularTV: 'assets/image/poster_halo.jpg',
      judulPopularTV: 'Halo',
      genrePopularTV1: '2022',
      genrePopularTV2: 'Sci-fi'),
];
