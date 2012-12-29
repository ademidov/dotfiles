#!/usr/bin/ruby

require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"

IRB.conf[:PROMPT_MODE] = :DEFAULT
IRB.conf[:AUTO_INDENT] = true

def ccopy(str)
  IO.popen('xclip -selection clipboard', 'w') { |f| f << str.to_s }
  str
end

def cpaste
  `xclip -selection clipboard -o`
end

def copy_history
  history = Readline::HISTORY.entries
  index = history.rindex('exit') || -1
  content = history[(index+1)..-2].join("\n")
  ccopy content
  true
end
