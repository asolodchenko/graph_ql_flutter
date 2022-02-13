class GqlQueries {
  static const launchesPast = """ 
query {
launches(limit: 10, offset: 0, find: {mission_name: ""}) {
mission_name
details
}
}
""";
}
