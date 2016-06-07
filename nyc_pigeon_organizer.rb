require 'pry'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}



def nyc_pigeon_organizer(pigeon_data)
    names = pigeon_data[:gender][:male] + pigeon_data[:gender][:female]

    pigeon_list = {}

    names.each do |name|
      name = {name => {}}
      pigeon_list.merge!(name)
    end

    pigeon_list.each do |bird, attribute|
      pigeon_data.keys.each do |key|
        attribute[key] = pigeon_data[key].keys
      end
    end

    pigeon_list.each do |bird, attributes|
      attributes.each do |attribute, value|
        attributes[attribute] = []
      end
    end

    pigeon_data.each do |attribute, subattr|
      subattr.each do |key, birds|
        birds.each do |bird|
          pigeon_list[bird][attribute] << key.to_s
        end
      end
    end

    pigeon_list 

end
