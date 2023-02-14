class Person
  # your code here
  
  def initialize (attr)
    attr.each_key do|key, val|
      self.class.attr_accessor(key)
      self.send("#{key}=", attr[key])
    end
  end
end
# ella= {
# name:"ella",
# birthday:"today",
# hair_color:"blonde",
# eye_color:"brown",
# height:186
# }
# p1= Person.new(ella)
# puts p1.height