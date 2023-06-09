class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.map{ |audition| "#{audition.actor}"}
  end

  def locations
    self.auditions.map{ |audition| "#{audition.location}"}
  end

  def lead
    self.auditions.find{ |audition| audition.hired?}

  end

  def understudy
    arr = self.auditions.find_all{ |audition| audition.hired?}
    arr[1]
  end

end