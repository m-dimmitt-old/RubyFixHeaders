def write_to_beginning # this will start at the beginning go through each line and replace.
  File.open("test.md", "r+") do |f|
      f.write("pppp") #replaces that line.
  end
end
def write_to_end
  File.open("test.md", "a+") do |f|
    f.write("hello333\n");
  end
end

def write_to_all        # this will start at the beginning go through each line and replace.
  File.open("test.md", "r+") do |f|
  f.write("qqqqq") #replaces that line.
    f.each do |line|
    f.write("qqqqq") #replaces that line.
   end
  end
end

def write_to_pos_all_lines #complete
  File.open("test.md", "r+") do |f|
  f.pos = 3
  f.write("robertTHeDOIG") #replaces that line.
    f.each do |line|
       f.pos += 2
       f.write("robertTHeDOIG") #replaces that line.
   end
  end
end

def write_to_line #would use a count ... starting at 1. and incrementing in the f.each
  File.open("test.md", "r+") do |f|
      line_count = 1
      f.each do |line|
        f.pos = old_pos   # this is the 'rewind'
          line_count += 1
        if(line_count == 4)
          f.pos += 2
          f.write("robertTHeDOIG")
        end
      end
      f.write("hi")
  end
end

#enter method name here to execute... 
#warning will change test file since using f.write 
