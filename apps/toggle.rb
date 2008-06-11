#!/usr/bin/env ruby -wKU

#$:.unshift File.dirname(__FILE__) # For use/testing when no gem is installed

require '../lib/monome'

class Paint
  def initialize
    @monome = Monome::Communicator.new
    @monome.listeners << self << 
                         Monome::Listeners::Toggle.new <<
                         Monome::Listeners::CornerToggles.new << 
                         Monome::Listeners::Rectangles.new
                         
  end
  
  def run
    @monome.run
  end
end

if $0 == __FILE__
  Paint.new.run 
end

