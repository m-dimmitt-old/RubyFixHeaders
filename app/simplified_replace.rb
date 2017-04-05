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
def handle_char(curr_char, f)
text_decision = {"\n" => "Newline was First Character", "\s" => "Space was First Character", "#" => "Hash was First Character"}
  if(text_decision.key?("#{curr_char}"))
    puts text_decision["#{curr_char}"]

    value = f.gets(1)
    while(value == "#{curr_char}")
      value = f.gets(1)
    end
    if(curr_char == "#")
      return true;
    else
    handle_char(value, f)#recur, iterating through until ... hash fails.
    end
    #start = f.gets(1)
    #	handlestart(start, aChar)
  else
    return false
  end
end
def check_for_space(f)

  track = f.pos
  f.pos = track -1
  if(f.getc != "\s")
    print true  #not a space      #add a space...
    f.pos = track -1
    strin = f.gets
    strin2 = " #{strin}" #adds a space.    #then concatenate space to beginning.
    f.pos = track - 1
    f.write(strin2)
  end
end

def tested
  File.open("app/test.md", "r+") do |f|
    curr_char = f.gets(1)
    if(handle_char(curr_char, f))
      check_for_space(f)
    end
    f.each do |line|
      puts "position 1 #{f.pos}"
      i = 1;
      curr_char = f.gets(1)
      if(handle_char(curr_char, f))
        check_for_space(f)
      else
        #nothing
      end
      puts "position 2 #{f.pos}"
    end
  end
end

tested
tested
