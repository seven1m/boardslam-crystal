require 'open3'

def spec
  puts
  puts '========================================='
  puts
  _, stdout, wait_thr = Open3.popen2('crystal spec')
  print stdout.getc until stdout.eof?
  wait_thr.value.success?
end

watch('\.cr') { spec }
