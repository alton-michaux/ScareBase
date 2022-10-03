FactoryBot.define do
	factory :director do
		name { "Jordan Peele" }
		age  { 43 }

		after(:build) do |director|
			director.movies { [create_list(:movie, 3)] }
		end
	end
end