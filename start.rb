#!/usr/bin/env ruby
require 'date'

KATAS_DIR = 'katas'
TEMPLATES_DIR = 'templates'

def choose_language
  choose_dir(TEMPLATES_DIR, 'Language:')
end 

def choose_kata
  choose_dir(KATAS_DIR, 'Kata:')
end

def build_kata_path(language, kata)
  today = Date.today()
  kata_dir = "#{KATAS_DIR}/#{kata}/#{language}-#{today.strftime('%Y%m%d')}"
  postfix = 0
  while Dir.exists?("#{kata_dir}-#{postfix}")
    postfix += 1
  end 
  "#{kata_dir}-#{postfix}"
end

def prepare_kata(language, kata_dir)
  `cp -r #{TEMPLATES_DIR}/#{language} #{kata_dir}`
  `git add #{kata_dir}`
  `git commit #{kata_dir} -m "Started #{kata-dir}"`
end

def choose_dir(dir, prompt)
  puts()
  Dir.chdir(dir)
  puts(prompt)
  choice = choose(Dir['**'])
  Dir.chdir('..')
  choice
end

def choose(options)
  options.each_index {|idx| puts "#{idx}. #{options[idx]}"}
  print('Choice: ')
  choice = gets().strip()
  unless choice.match(/\d+/) and options.length > choice.to_i()
    puts 'No.'
    exit 1
  end
  options[choice.to_i()]
end

`git pull`
language = choose_language()
kata = choose_kata()
kata_dir = build_kata_path(language, kata)
prepare_kata(language, kata_dir)
puts "cd #{kata_dir}"

