#!/usr/bin/env ruby

LOCK_FILE = 'lock'

unless File.exists?(LOCK_FILE)
  print 'Not doing a kata right now. Use ./start.rb'
  exit 1
end

kata = `cat #{LOCK_FILE}`.strip()
Dir.chdir(kata)

print `./test.sh`
if $? == 0
  msg = 'PASS'
else
  msg = 'FAIL'
end
`git add . && git commit . -m "#{msg}"`
