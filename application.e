note
	description : "abstraction application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization

	make
		do
			part1
			part1_duplicate
		end


	part1
		do
			-- DRY - Don't Repeat Yourself
		part1_duplicate
		part1_duplicate


		end

	part1_duplicate
		do
			Io.put_string ("Professor: Bertrand")
				Io.put_string ("Bertrand ist Professor und hat Jahrgang 1950%N")
				Io.put_string ("Eiffel ist von Bertrand erfunden worden.")
				Io.put_string ("Bertrand lehrt seit 2001 an der ETH.")
		end




















	part1_2
		local
			name : STRING
		do
			name := "Bertrand Meyer"
			-- DRY - Don't Repeat Yourself
			-- IO Input Output
			Io.put_string ("Professor: " + name)
			Io.put_string (name + " ist Professor und hat Jahrgang 1950%N")
			Io.put_string ("Eiffel ist von " + name + " erfunden worden.")
			Io.put_string (name + " lehrt seit 2001 an der ETH.")
		end




















	part2
		do
			-- DRY - Don't Repeat Yourself
			part2_neu ("Bertrand", "1950")
			part2_neu ("Ueli", "1960")

		
		end

	part2_neu (name: STRING; jahrgang: STRING)
	part2_neu (name, jahrgang: STRING)
		
		do
			Io.put_string ("Professor: " + name)
			Io.put_string (name + " ist Professor und hat Jahrgang " + jahrgang + "%N")
			Io.put_string (name + " lehrt seit 2001 an der ETH.")
		end























	part3
		do
			-- DRY - Don't Repeat Yourself
			Io.put_string ("Professor: Bertrand Meyer")
			Io.put_string ("Professor: Ueli")
			

		
			part3_jahrgang("Bertrand Meyer", "1950")
			part3_jahrgang("Ueli", "1960")

			Io.put_string ("Bertrand lehrt seit 2001 an der ETH.")
			Io.put_string ("Ueli lehrt seit 1992 an der ETH.")
		end
		
	part3_jahrgang (name, jahrgang: STRING)
		do
			Io.put_string (name + " ist Professor und hat  Jahrgang " + jahrgang + "%N")
		end

















	part4_caller
		local
			ueli: PERSON
		do
			create ueli.make_x("Ueli", "ETH")
			part4(ueli, ueli)
		end

	part4 (
		ueli :PERSON; bertrand: PERSON
	)

		do
			-- DRY - Don't Repeat Yourself
			present_prof(ueli)
			present_prof(bertand)
		end
		
	present_prof(a_person: PERSON)
		do
			Io.put_string (a_person.name + " ist Professor")
		end

end
