
@search_selection = ["cp", "mv", "cd", "mkdir", "ls", "rm"]
@end_search = ["QUIT", "quit", "Quit"]

def menu
  puts
  puts "****** CHEATSHEET *********"
  puts "1. Command Line"
  puts "2. Search"
  puts "3. Exit"
  puts "****** Make a Selection *****"
  choice = gets.chomp.to_i
  case choice
   when 1
    command_line
   when 2
    search_line
   when 3
    exit
  else
    puts "Invalid Selection."
    menu
  end
end

def command_line
  puts
  puts "Command Line
   1. cp
   2. mv
   3. cd
   4. mkdir
   5. ls
   6. rm
   7. Main Menu"
   puts "Select an Option"
   cls = gets.chomp.to_i
   case cls
    when 1
     puts `man cp`
     command_line
    when 2
     puts `man mv`
     command_line
    when 3
     puts `man cd`
     command_line
    when 4
     puts `man mkdir`
     command_line
    when 5
     puts `man ls`
     command_line
    when 6
     puts `man rm`
     command_line
    when 7
     menu
    else
     puts "Invalid Option. Try again"
     command_line
  end
end


def search_line
  puts "Enter search selection: "
  @ss = gets.chomp
   if @search_selection.include? (@ss)
    search_go
    else
    puts "Can not locate #{@ss}. Try again or type QUIT to exit."
    reply = gets.chomp
    if @end_search.include? (reply)
      menu
    else
      search_line
    end
  end
end

def search_go
  case @ss
   when "cp"
    puts `man cp`
    search_line
   when "mv"
    puts `man mv`
    search_line
  when "cd"
   puts `man cd`
    search_line
   when "mkdir"
    puts `man mkdir`
    search_line
   when "ls"
    puts `man ls`
    search_line
   when "rm"
    puts `man rm`
    search_line
  end
end

puts
puts
menu
