class DataModel {
  final String gambarDownload;
  final String judulDownload;
  final String jenisDownload;
  final String genreDownload1;
  final String genreDownload2;

  DataModel(
      {required this.gambarDownload,
      required this.judulDownload,
      required this.jenisDownload,
      required this.genreDownload1,
      required this.genreDownload2});
}

List<DataModel> dataListDownload = [
  DataModel(
      gambarDownload: 'assets/image/poster_band.jpg',
      judulDownload: 'Band Of Brothers',
      jenisDownload: 'Series',
      genreDownload1: '2001',
      genreDownload2: 'Series'),
  DataModel(
      gambarDownload: 'assets/image/gambar_popular_movies2.jpg',
      judulDownload: 'Without Remorse',
      jenisDownload: 'Movie',
      genreDownload1: '2022',
      genreDownload2: 'Action'),
  DataModel(
      gambarDownload: 'assets/image/poster_interstellar.jpg',
      judulDownload: 'Interstellar',
      jenisDownload: 'Movie',
      genreDownload1: '2014',
      genreDownload2: 'Sci-fi'),
  DataModel(
      gambarDownload: 'assets/image/gambar_popular_movies1.jpg',
      judulDownload: 'Top Gun: Maverick',
      jenisDownload: 'Series',
      genreDownload1: '2022',
      genreDownload2: 'Drama'),
  DataModel(
      gambarDownload: 'assets/image/poster_the_pacific.jpg',
      judulDownload: 'The Pacific',
      jenisDownload: 'Movie',
      genreDownload1: '2010',
      genreDownload2: 'War'),
  DataModel(
      gambarDownload: 'assets/image/poster_halo.jpg',
      judulDownload: 'Halo',
      jenisDownload: 'Movie',
      genreDownload1: '2022',
      genreDownload2: 'Sci-fi'),
];
