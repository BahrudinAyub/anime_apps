class DataModel {
  final String gambarMostSearched;
  final String judulMostSearched;
  final String genreMostSearched1;
  final String genreMostSearched2;

  DataModel(
      {required this.gambarMostSearched,
      required this.judulMostSearched,
      required this.genreMostSearched1,
      required this.genreMostSearched2});
}

List<DataModel> dataListMostSearched = [
  DataModel(
      gambarMostSearched: 'assets/image/poster_band.jpg',
      judulMostSearched: 'Band Of Brothers',
      genreMostSearched1: '2001',
      genreMostSearched2: 'Series'),
  DataModel(
      gambarMostSearched: 'assets/image/gambar_popular_movies2.jpg',
      judulMostSearched: 'Without Remorse',
      genreMostSearched1: '2022',
      genreMostSearched2: 'Action'),
  DataModel(
      gambarMostSearched: 'assets/image/poster_interstellar.jpg',
      judulMostSearched: 'Interstellar',
      genreMostSearched1: '2014',
      genreMostSearched2: 'Sci-fi'),
];
