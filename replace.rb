files = Dir[Rails.root.join("app", "**/*.rb")]

files.each do |f_name|
  # puts f_name
  File.open(f_name, "r+") do |f|

    old_pos = 0
    f.each do |line|
        f.pos = old_pos   # this is the 'rewind'
   #gsub replaces a pattern with a value.
	f.print line.gsub(/GxUserContacts/, "GxUserContact")
        old_pos = f.pos
    end
    
  end
end
