class GqlQueries {
  static const launchesPast = """ 
query posts(\$search: String){
  launches(limit: 10, offset: 0, find: {mission_name: \$search}) {
    mission_name
    details
  }
}
""";
}
