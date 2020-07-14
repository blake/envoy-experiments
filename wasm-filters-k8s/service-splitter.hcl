Kind = "service-splitter"
Name = "downloads"
Splits = [
  {
    Weight        = 0
    ServiceSubset = "v1"
  },
  {
    Weight        = 100
    ServiceSubset = "v2"
  },
]
