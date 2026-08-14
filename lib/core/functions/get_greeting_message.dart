String getGreetingMessage() {
  final hour = DateTime.now().hour;

  if (hour >= 5 && hour < 12) {
    return "صباح الخير";
  } else if (hour >= 12 && hour < 17) {
    return "مساء الخير";
  } else if (hour >= 17 && hour < 21) {
    return "مساء الخير";
  } else {
    return "تصبح على خير";
  }
}
