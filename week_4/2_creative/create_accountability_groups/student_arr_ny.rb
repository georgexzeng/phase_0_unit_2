student_list=%w{
Ariel Olin
Alan Cohen
Alexander Le
Alexei Pesic
Anthony Ferragano
Audrey McGowan
Bruno Pasini
Chase Blokker
Dan Freed
Daniel Kim
Daniel Petrie
David Bragdon
Derek Johnson
Edward Kim
Eric Shemtov
Garrett Dalton
George Zeng
Irene Yu
John Cain
Joseph White
Justin Wagner
Kimberly Brewer
Mark Mcquillen
Max Lock
Patti Oneill
Ryan Storberg
Widny Stlouis
Wuang Qin
}
.each_slice(2).map{|student| "#{student[0]} #{student[1]}"}

new_student_list=student_list.each_slice(4).map{|student_name|"#{student_name[0]}, #{student_name[1]}, #{student_name[2]}, #{student_name[3]}"}

puts new_student_list


# %w turns each first and last name into a string, creates an array __> ['Dakota', 'Cousineau', 'Casey','Ryan', etc.]
# each_slice(2) splits the array into sub-arrays of 2 __>  [['Dakota', 'Cousineau'], ['Casey', 'Ryan'], etc.])
# map iterates over the main array, creating a string entry of the 0th and 1st elements of the sub-arrays __> ['Dakota Cousineau', 'Casey Ryan', etc.]

#Does not account for middle initials. 

# student_list = %w{
# Dakota Cousineau
# Casey Ryan
# Clayton Jordan
# William Davis
# David Nanry
# Dev Deol
# Duke Greene
# Edgar Garza
# Stephanie Chou
# Joey Sabani
# Joseph Hendele
# Kajal Agarwal
# Krystyna Ewing
# Grace Yim
# Jeff Keslin
# Jennie Chamberlin
# Joey Chamberlin
# Lovinder Pnag
# Maria Magdalena 
# Ang Bejar
# Michael Daugherty
# Michael Kirlin
# Robert Schwartz
# Sebastian Caso
# Sebastian Radloff
# Steven Pikelny
# Neel Shah
# }.each_slice(2).map{|student| "#{student[0]} #{student[1]}"}

# puts student_list