# puts f_name
def write_to_end
  File.open("Readme2.md", "a+") do |f|
  f.write("hello333\n");
end
end
def write_to_beginning
#this will start at the beginning go through each line and replace. 
  File.open("Readme2.md", "r+") do |f|
  #      old_pos = 0
  #     f.each do |line|
  #        f.pos = old_pos   # this is the 'rewind'
          #f.print line.gsub(/GxUserContacts/, "GxUserContact")
  f.write("hello\n") #replaces that line.
   # also f.syswrite("")
   # f.syswrite worse until writes become 1000 characters large.
   #       old_pos = f.pos
   #   end
  end
end
def write_to_line
  File.open("Readme2.md", "r+") do |f|
    old_pos = 0
  
    f.each do |line|
    f.pos = old_pos   # this is the 'rewind'
    if(pos == 3)f.write("hello")end

  
end



write_to_end
write_to_beginning
