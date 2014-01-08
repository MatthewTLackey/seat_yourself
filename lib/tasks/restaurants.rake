namespace :restaurants do
  desc "get longitude/latitude coordinates for all restaurants with addresses"


  task :update_coordinates => :environment do 
    restaurants = Restaurant.where(longitude: nil, latitude: nil)
    restaurants.each do |r|
      r.geocode
      if r.save
        puts "#{r.name} was updated"
      else
        puts "There was an error"
      end
    end
  end
end