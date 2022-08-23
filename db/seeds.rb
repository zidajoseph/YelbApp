10.times do
    Property.create!(
      name: Faker::Lorem.word,
      headline: Faker::Lorem.sentence,
      description: Faker::Lorem.paragraph,
      address_1: Faker::Address.street_address,
      city: Faker::Address.city,
      state: Faker::Address.state,
      country: "United States",
      latitude: 0, 
      longitude: 0,
      price: Money.from_amount((20..100).to_a.sample, "USD"))
  end
  