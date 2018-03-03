require 'json'

class ThisIsAnExample
  def out
    JSON.generate({example: "text"})
  end
end
