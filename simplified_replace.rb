#!/usr/bin/env ruby


=begin
      if(start == "\s")
        puts "Space was First Character"
      end
      if(start == "#")
        while(f.gets(1) == "#")
          puts "success"
        end
      track = f.pos
      f.pos = track -1
      if(f.getc != "\s")
        print true  #not a space      #add a space...
        f.pos = track -1
        strin = f.gets
        strin2 = " #{strin}" #adds a space.    #then concatenate space to beginning.
        f.pos = track - 1
        f.write(strin2)
      else
        print false # a space
      end
    end
=end
def handlestart(start)
text_decision = {"\n" => "Newline was First Character", "\s" => "Space was First Character", "#" => "Hash was First Character"}
      if(text_decision.key?("#{start}"))
	#textdecision.each {|key,value| do_something(start, aChar) if
      	#if(start == aChar)
        puts text_decision["#{start}"]
	#start = f.gets(1)

#	handlestart(start, aChar)
      end
end
def tested
File.open("test.md", "r+") do |f|
    f.each do |line|
      puts "position 1 #{f.pos}"
      i = 1;
      start = f.gets(1)

      handlestart(start)
#      handlestart(start, "\n")
#      handlestart(start, "\s")
#      handlestart(start, "#")
      puts "position 2 #{f.pos}"
    end
  end
end




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

#write_to_line
# write_to_end
#write_to_pos_all_lines
#puts_all
tested
#puts_all
# write_to_beginning
