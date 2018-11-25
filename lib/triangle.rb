class Triangle

  attr_accessor :side_one

  def initialize(attributes)
    attributes.each { |key, value| send.(("#{key}="), value)
    

end