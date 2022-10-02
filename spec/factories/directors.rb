FactoryBot.define do
	factory :director do
		name { "Jordan Peele" }
		age  { 43 }
		movies { [ "Get Out", "Us", "Nope" ] }
	end
end