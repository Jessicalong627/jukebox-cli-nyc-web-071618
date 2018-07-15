songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
songs.each_with_index do |song, num|
  puts "#{num + 1}. #{song}"
end
end

def play(songs)
puts "Please enter a song name or number:"
input = gets.chomp
songs.each_with_index do |song, num|
if input == song || input.to_i == num +1
puts "Playing #{song}"

else
  puts "Invalid input, please try again"
end
end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  input = ""
  until input == "exit"
    puts "Please enter a command:"
    input = gets.chomp

case input
when "help"
  help
when "list"
  list(songs)
when "play"
  play(songs)
when "exit"
  exit_jukebox
  break
end
end
end