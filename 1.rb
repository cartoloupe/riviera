text = ARGV.first || "when are we working on the pairing app?"
screenwidth = 10
pad = screenwidth

text = (" " * pad )+ (text) + ( " " * pad)
size = text.size
loops = text.size - screenwidth + 1

loops.times do |n|
  frametext = text.split('')[n..(n+screenwidth)]
  string = frametext.join('')
  puts string
  counter = "%04d" % n
  `convert -background lightblue -fill blue -font Courier -pointsize 40 label:"#{string}" tmp#{counter}.gif`
end

`convert -delay 20 -loop 0 tmp*.gif themessage.gif`

`rm tmp*gif`

