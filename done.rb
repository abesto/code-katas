LOCK_FILE = 'lock'

kata = `cat #{LOCK_FILE}`.strip()
Dir.chdir(kata)

puts "Running tests for #{kata}"
`./test.sh`
unless $? == 0
  puts("Tests failed. Can't finish the kata if tests fail.")
  exit(1)
end

puts "Grats, that's another one down. Don't forget to push!"
`git add .`
`git commit . -m "finished #{kata}"`

