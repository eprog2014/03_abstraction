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

		end


	part1
		do
			-- DRY - Don't Repeat Yourself
			Io.put_string ("Professor: Bertrand")
			Io.put_string ("Bertrand ist Professor und hat Jahrgang 1950%N")
			Io.put_string ("Eiffel ist von Bertrand erfunden worden.")
			Io.put_string ("Bertrand lehrt seit 2001 an der ETH.")



			Io.put_string ("Professor: Bertrand")
			Io.put_string ("Bertrand ist Professor und hat Jahrgang 1950%N")
			Io.put_string ("Eiffel ist von Bertrand erfunden worden.")
			Io.put_string ("Bertrand lehrt seit 2001 an der ETH.")
		end






















	part1_2
		do
			-- DRY - Don't Repeat Yourself
			Io.put_string ("Professor: Bertrand")
			Io.put_string ("Bertrand ist Professor und hat Jahrgang 1950%N")
			Io.put_string ("Eiffel ist von Bertrand erfunden worden.")
			Io.put_string ("Bertrand lehrt seit 2001 an der ETH.")
		end




















	part2
		do
			-- DRY - Don't Repeat Yourself
			Io.put_string ("Professor: Bertrand")
			Io.put_string ("Bertrand ist Professor und hat Jahrgang 1950%N")
			Io.put_string ("Bertrand lehrt seit 2001 an der ETH.")

			-- DRY - Don't Repeat Yourself
			Io.put_string ("Professor: Ueli")
			Io.put_string ("Ueli ist Professor und hat Jahrgang 1960%N")
			Io.put_string ("Ueli lehrt seit 1992 an der ETH.")
		end
























	part3
		do
			-- DRY - Don't Repeat Yourself
			Io.put_string ("Professor: Bertrand")
			Io.put_string ("Professor: Ueli")

			Io.put_string ("Bertrand ist Professor und hat Jahrgang 1950%N")
			Io.put_string ("Ueli ist Professor und hat Jahrgang 1960%N")

			Io.put_string ("Bertrand lehrt seit 2001 an der ETH.")
			Io.put_string ("Ueli lehrt seit 1992 an der ETH.")
		end



















	part4 (
		ueli_name: STRING, ueli_jahrgang: STRING, ueli_adresse: STRING,
		bertrand_name: STRING, bertrand_jahrgang: STRING, bertrand_adresse: STRING
	)

		do
			-- DRY - Don't Repeat Yourself
			present_prof(ueli_name, ueli_jahrgang, ueli_adresse)
			present_prof(bertand_name, bertrand_jahrgang, bertrand_adresse)
		end

end
