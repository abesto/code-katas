#!/usr/bin/env ruby

LOCK_FILE = 'lock'

pwd = Dir.pwd
kata = `cat #{LOCK_FILE}`.strip()
Dir.chdir(kata)

puts "Running tests for #{kata}"
`./test.sh`
unless $? == 0
  puts("Tests failed. Can't finish the kata if tests fail.")
  exit(1)
end

puts "Grats, that's another one down. Don't forget to push!"

Dir.chdir(pwd)
`git commit . -m "Finished #{kata}"`
`git checkout master && git merge #{kata} --no-ff`
`git branch -d #{kata}`
`rm #{LOCK_FILE}`
