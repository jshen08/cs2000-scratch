use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")
include csv

workouts = table: date :: String, activity :: String, duration :: Number
  row: "2025-04-01", "Running", 30
  row: "2025-04-02", "Yoga", 45
  row: "2025-04-03", "Cycling", 60
end 


recipes-raw = load-table:
  title :: String,
  servings :: String,
  prep-time :: String
  source: csv-table-url("https://data.london.gov.uk/download/ex9jd/d90c8f4c-6ae0-4838-b18b-240958550879/gla_modelled_estimates_series_LAD_EW_2001_2022_(2021_geog)_wide.csv", default-options)
end
