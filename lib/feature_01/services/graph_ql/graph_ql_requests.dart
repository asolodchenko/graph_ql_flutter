class GqlQueries {
  static const launchesPast = """ 
query posts(\$search: String, \$limit: Int){
  launches(limit: \$limit, offset: 0, find: {mission_name: \$search}) {
    mission_name
    details
  }
}
""";
}
