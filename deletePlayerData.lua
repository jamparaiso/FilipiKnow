local sqlite = require ( "sqlite3" )
	local db = sqlite.open(path)
	local sql
			for row in db:nrows(sql) do
			totalRows = totalRows +1
	end

	if (totalRows == 0) then