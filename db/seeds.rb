# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

activities = ([{ activity_name: 'Administrative' }, { activity_name: 'Break' }, { activity_name: 'Feedback' }, { activity_name: 'Filtration' }, { activity_name: 'Licensing consultancy' }, { activity_name: 'Meeting' }, { activity_name: 'Monitoring' }, { activity_name: 'Normalization' }, { activity_name: 'Permission' }, { activity_name: 'Preparation' }, { activity_name: 'Profiling' }, { activity_name: 'Quality control' }, { activity_name: 'Report' }, { activity_name: 'Technical issues' }, { activity_name: 'Training' }])


activities.each do |e|
	Activity.create(e) unless Activity.exists?(e)
end


brands = ([{brand_name: "Autodesk"}, {brand_name: "Echez"}, {brand_name: "McAfee"}, {brand_name: "Microsoft"}, {brand_name: "Oracle"}, {brand_name: "Other"} ])

brands.each do |e|
	Brand.create(e) unless Brand.exists?(e)
end

countries = ([{country_name: "Argentina"}, {country_name: "Bangadesh"}, {country_name: "Colombia"}, {country_name: "Costa Rica"}, {country_name: "Honduras"}, {country_name: "Italy"}, {country_name: "Malaysia"}])

countries.each do |e|
	Country.create(e) unless Country.exists?(e)
end


campaigns = ([{campaign_name: "XLS2406 MSFT Malaysia App Found"}, {campaign_name: "FRX2406 ADSK Italy Massive"}])

campaigns.each do |e|
	Campaign.create(e) unless Campaign.exists?(e)
end
