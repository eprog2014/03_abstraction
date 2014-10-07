note
	description: "Summary description for {PERSON}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PERSON

create
	make, make_x
feature
	name: STRING
		jahrgang: STRING
	
	make(a_name, a_jahrgang, a_adresse: STRING)
		do
			namee := a_name
			jahrgang := a_jahrgang
			adresse := a_adresse
		end
	
	make_x(a_name,a_adresse: STRING)
		do
			namee := a_name
			jahrgang := "?"
			adresse := a_adresse
		end
		adresse: STRING
	
	
end
