FactoryBot.define do
	factory :account do
		username { "username" }
		first_name { "John" }
		last_name  { "Doe" }
		email { "admin@yahoo.com" }
		password { "password" }
	end
end