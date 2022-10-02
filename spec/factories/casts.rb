FactoryBot.define do
	factory :cast do
		name { "Kelly Monroe" }
		age  { 29 }
		movies { [ "Get Out", "Descent" ] }
        podcasts { [ "After Dark", "Left Alone"]}
	end
end