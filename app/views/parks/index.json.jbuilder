json.array!(@parks) do |park|
  json.extract! park, :id, :name, :province, :season_start, :season_end, :visitors, :area, :summer_mean_temp, :winter_mean_temp, :by_car, :by_plane, :by_ferry, :by_snowmobile, :number_of_species
  json.url park_url(park, format: :json)
end
