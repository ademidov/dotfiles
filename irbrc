#!/usr/bin/ruby
# encoding: utf-8

require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"

IRB.conf[:PROMPT][:CUSTOM] = {
  :PROMPT_I => "\e[0;32m%N(%m):%03n:%i>\e[0m ",
  :PROMPT_N => "\e[0;32m%N(%m):%03n:%i>\e[0m ",
  :PROMPT_S => "\e[0;32m%N(%m):%03n:%i%l\e[0m ",
  :PROMPT_C => "\e[0;32m%N(%m):%03n:%i*\e[0m ",
  :RETURN => "=> %s\n"
}

IRB.conf[:PROMPT_MODE] = :CUSTOM
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
