class Equation < ActiveRecord::Base
  #validates :equation_type, :presence => true

  validates :param_1, :presence => true
  validates :param_2, :presence => true
  validates :param_3, :presence => true
  validates :param_4, :presence => true, :if => Proc.new{ |eq| eq.equation_type == 2 }
end
