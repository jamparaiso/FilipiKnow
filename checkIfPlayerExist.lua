local sqlite = require ( "sqlite3" )
	local db = sqlite.open(path)
	local sql
		for row in db:nrows("SELECT * FROM player_Data") do
			totalRows = totalRows +1
		end