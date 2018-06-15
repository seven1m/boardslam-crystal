require "../lib/boardslam"

args = ARGV.map { |a| a.to_i8 }
board = BoardSlam.new(args[0], args[1], args[2])
board.results.to_a.sort.each do |result, equation|
  puts equation.ljust(15) + " = " + result.to_s
end
puts
if board.missing.any?
  puts "missing answers: #{board.missing.join(", ")}"
else
  puts "all answers possible!"
end
