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

tested
