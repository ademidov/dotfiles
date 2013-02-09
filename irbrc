#!/usr/bin/ruby

require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"

IRB.conf[:PROMPT_MODE] = :DEFAULT
IRB.conf[:AUTO_INDENT] = true

def xcopy(str)
  IO.popen('xclip -selection clipboard', 'w') { |f| f << str.to_s }
  str
end

def xpaste
  `xclip -selection clipboard -o`
end

def copy_history
  history = Readline::HISTORY.entries
  index = history.rindex("exit") || -1
  content = history[(index+1)..-2].join("\n")
  ccopy content
  true
end

# Toys methods
class Array
  def self.toy(n=10, &block)
    block_given? ? Array.new(n,&block) : Array.new(n) {|i| i+1}
  end
end

class Hash
  def self.toy(n=10)
    Hash[Array.toy(n).zip(Array.toy(n){|c| (96+(c+1)).chr})]
  end
end
