Dir['classes/*.rb'].each {|f| require_relative f}

cl = ARGV.first

def camelize(str)
  str.split('-').map {|c| c.capitalize}.join
end

def get_instance(cl)
  begin
    Object.const_get(cl).new
  rescue NameError
    Object.const_get('BaseExample').new
  end
end


puts get_instance(camelize(cl)).out
