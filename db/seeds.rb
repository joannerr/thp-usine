require 'faker'

#Création des assemblies
10.times do
	@assembly = Assembly.create(name: Faker::Science.element)
end

#Création des parts
10.times do
	@part = Part.create(part_number: Faker::IDNumber.valid)
end

#Ajout des ID dans le tableau join
10.times do |i|
	Part.find(i = rand(1..10)).assemblies << Assembly.find(i = rand(1..10))
end