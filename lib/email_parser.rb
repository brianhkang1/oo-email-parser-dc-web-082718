require 'pry'

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    ans = emails.split(/[, ]/)
    ans = ans.reject {|x| x.empty?}
    ans.uniq 
  end

end
