FactoryBot.define do
	factory :curator do
		name { "Sebastian Stan" }
		age  { 41 }
		movies { [ "Our Fake History", "Bumps in the Night" ] }
	end
end