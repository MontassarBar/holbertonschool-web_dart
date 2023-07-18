int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
    int teamAScore = (teamA['Free throws'] ?? 0) + ((teamA['2 pointer'] ?? 0) * 2) + ((teamA['3 pointer'] ?? 0) * 3);
    int teamBScore = (teamB['Free throws'] ?? 0) + ((teamB['2 pointer'] ?? 0) * 2) + ((teamB['3 pointer'] ?? 0) * 3);
    if (teamAScore < teamBScore) {
        return 2;
    }
  if (teamAScore > teamBScore) {
        return 1;
    }
  return 0;
}