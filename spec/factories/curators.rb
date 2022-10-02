FactoryBot.define do
	factory :curator do
		name { "Sebastian Stan" }
		age  { 41 }
		podcasts { [ "Our Fake History", "Bumps in the Night" ] }
	end
end