class DataModel {
  final String gambarTodaySelection;
  final String judulTodaySelection;
  final String genreTodaySelection1;
  final String genreTodaySelection2;

  DataModel(
      {required this.gambarTodaySelection,
      required this.judulTodaySelection,
      required this.genreTodaySelection1,
      required this.genreTodaySelection2});
}

List<DataModel> dataListTodaySelection = [
  DataModel(
      gambarTodaySelection: 'assets/image/poster_underwater.jpg',
      judulTodaySelection: 'Underwater',
      genreTodaySelection1: 'Action',
      genreTodaySelection2: 'Sci-Fi'),
  DataModel(
      gambarTodaySelection: 'assets/image/poster_extraction.jpg',
      judulTodaySelection: 'Extraction',
      genreTodaySelection1: 'Action',
      genreTodaySelection2: 'Thriller'),
  DataModel(
      gambarTodaySelection: 'assets/image/poster_grayhound.jpg',
      judulTodaySelection: 'Greyhound',
      genreTodaySelection1: 'Action',
      genreTodaySelection2: 'Drama'),
];
