10.times do  |i|
    property = Property.create!(
      name: Faker::Lorem.word,
      headline: Faker::Lorem.sentence,
      description: Faker::Lorem.paragraph,
      address_1: Faker::Address.street_address,
      city: Faker::Address.city,
      state: Faker::Address.state,
      country: "United States",
      latitude: 0, 
      longitude: 0,
      price: Money.from_amount((25..100).to_a.sample)
    )

    property.images.attach(io: File.open(Rails.root.join("db", "sample", "images", "property_#{i + 1}.png")), filename: property.name)
end
  