final Results = [];

checkResults(List usersAnsweresList, List answeresList) {
  for (int i = 0; i < 6; i++) {
    if (answeresList[i] == answeresList[i]) {
      Results.add(1);
    } else {
      Results.add(0);
    }
  }
}
