FactoryBot.define do
	factory :movie do
			title { "Nightmare on Elm Street" }
			description  { "Cool movie about a guy kicking ass for a dog" }
			year { '1981' }
			director { ['Wes Craven'] }
			cast { ["Nancy Girl", "Johnny Depp"] }
			mood { ['Horror'] }
	end
end