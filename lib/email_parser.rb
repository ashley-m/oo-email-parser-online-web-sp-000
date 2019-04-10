# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  @@all = []
  attr_accessor :address

  def initialize(add)
    @address = add
    @@all << add
  end

  def parse(text)
    bits = text.split(/[, ]/)
    bits.each {|x| x.strip!}
    bits.each {|y| initialize(y) if !@@all.include?(y)}

  end
end
