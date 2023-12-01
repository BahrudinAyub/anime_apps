class DataModel {
  final String imagePath;
  final String text1;
  final String text2;

  DataModel(
      {required this.imagePath, required this.text1, required this.text2});
}

List<DataModel> dataListNewInCinemas = [
  DataModel(
    imagePath: 'assets/image/banneravatar.jpg',
    text1: 'Avatar: The Way of Water',
    text2: 'Jake Sully lives with his newfound',
  ),
  DataModel(
    imagePath: 'assets/image/bannerwakanda.jpg',
    text1: 'Black Adam',
    text2: 'Nearly 5,000 years after',
  ),
  DataModel(
      imagePath: 'assets/image/bannerdrstrange.jpg',
      text1: 'DR Strange',
      text2: 'Multiverse In Madness')
  // Add more items as needed
];
