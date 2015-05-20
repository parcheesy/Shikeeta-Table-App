Guest.destroy_all

json = ActiveSupport::JSON.decode(File.read("db/guest.json"))

Guest.create!(json)

p "Created #{Guest.count} guests"
