#!/usr/bin/ruby

def g
  Class.new(String) do
    def method_missing(name, *args)
      name =~ /al|call/ ? self << name.to_s.sub('call', 'o') : super
    end
  end.new << 'g'
end

puts g().().().().().().().al
