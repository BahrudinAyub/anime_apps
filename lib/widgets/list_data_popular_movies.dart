class DataModel {
  final String gambarPopular;
  final String judul;
  final String genre1;
  final String genre2;

  DataModel(
      {required this.gambarPopular,
      required this.judul,
      required this.genre1,
      required this.genre2});
}

List<DataModel> dataListPopularMovies = [
  DataModel(
      gambarPopular: 'assets/image/gambar_popular_movies1.jpg',
      judul: 'Top Gun: Maverick',
      genre1: 'Action',
      genre2: 'Drama'),
  DataModel(
      gambarPopular: 'assets/image/gambar_popular_movies2.jpg',
      judul: 'Without Remorse',
      genre1: 'Action',
      genre2: 'Thriller'),
  DataModel(
      gambarPopular: 'assets/image/gambar_popular_movies3.jpg',
      judul: 'Without Remorse',
      genre1: 'Mystery',
      genre2: 'Sci-fi')
];
