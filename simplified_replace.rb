#!/usr/bin/env ruby


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

def testsd
File.open("test.md", "r+") do |f|
    f.each do |line|
  puts "position 1 #{f.pos}"
    i = 1;

start = f.gets(1)
    if(start == "#")
      while(f.gets(1) == "#")
        puts "success"
      end
      track = f.pos
      f.pos = track -1
      if(f.getc != "\s")
        print true  #not a space
        f.pos = track -1
        strin = f.gets
        strin2 = " #{strin}" #adds a space.
        f.pos = track - 1
        f.write(strin2)
      else
        print false # a space
      end
      #add a space...
       #and now we are in the spot.
       # if no space add a space
   #read first
   #then concatenate space to beginning.
    end
      puts "position 2 #{f.pos}"
    end
  end
end

def puts_all        # this will start at the beginning go through each line and replace.
  File.open("test.md", "r+") do |f|
  #puts(f.gets(1));
  old_pos = 0
  i = 1;
    f.each do |line|
      f.write("hello") #replaces that line.
      end
  end
end
def write_to_beginning # this will start at the beginning go through each line and replace.
  File.open("test.md", "r+") do |f|
      f.write("pppp") #replaces that line.
  end
end

def write_to_pos_all_lines #complete
  File.open("test.md", "r+") do |f|
  f.pos = 3
  f.write("robertTHeDOIG") #replaces that line.
    f.each do |line|
#        line.pos = 3
       f.pos += 2
       f.write("robertTHeDOIG") #replaces that line.
   end
  end
end

def write_to_line #
  File.open("test.md", "r+") do |f|
      old_pos = 0
      f.each do |line|
        f.pos = old_pos   # this is the 'rewind'
        if(f.pos == 3)
          f.write("robertTHeDOIG")
          old_pos +=1
        end
          old_pos +=1
      end
      f.write("hi")
  end
end

#write_to_line
# write_to_end
#write_to_pos_all_lines
#puts_all
testsd
#puts_all
# write_to_beginning
