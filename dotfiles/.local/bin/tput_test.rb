#!/usr/bin/env ruby

def tput(args)
  print `tput #{args}`
end

def reset
  tput 'sgr0' #turn off all attributes
  puts "\n " + '-'*78
end

def pallete_demo
u=0
x=0
y=0
z=0

(1..7).each do |w|
#(1..7).each do |x|
(1..7).each do |y|
#(1..7).each do |z|
  tput "setab #{w}" #background colour using ANSI escape
# tput "setb #{x}"  #background colour
  tput "setaf #{y}" #foreground colour using ANSI escape
# tput "setf #{z}"  #foreground colour
  print "#{w}#{x}#{y}#{z}"
end
end
#end
#end
end

pallete_demo

reset; puts 'BOLD'
tput 'bold' #set bold mode
pallete_demo

reset; puts 'DIM'
tput 'dim'  #turn on half-bright mode
pallete_demo

reset; puts 'SMUL'
tput 'smul' #begin underline mode
pallete_demo
tput 'rmul' #exit underline mode

reset; puts 'SMSO'
tput 'smso' #enter standout mode
pallete_demo
tput 'rmso' #exit standout mode

pallete_demo
reset

