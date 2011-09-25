class Equation < ActiveRecord::Base
  validates :equation_type, :presence => true
  validates :param_1, :presence => true
  validates :param_2, :presence => true
  validates :param_3, :presence => true
  validates :param_4, :presence => true, :if => Proc.new{ |eq| eq.equation_type == 2 }

  def calculate_eq
     if equation_type == 1
      a, b, c = param_1, param_2, param_3
      dk = b**2 - 4 * a * c
      if dk > 0
        d = Math.sqrt(dk)
        x1 = (-b + d) / (2 * a)
        x2 = (-b - d) / (2 * a)
        re = "x1 = #{x1}, x2 = #{x2}"
      elsif dk == 0
        d = Math.sqrt(dk)
        x = (-b + d) / (2 * a)
        re = "x = #{x}"
      else
        re = "Korney net"
      end
    end

    if equation_type == 2
      x1, y1, x2, y2 = param_1, param_2, param_3, param_4
      a = y1 - y2
      b = x2 - x1
      c = x1 * y2 - x2 * y1
      if a == 0 and b == 0
        re = "Uravnenie ne imeet smisla"
      else
        re = "#{a}x + #{b}y + #{c} = 0"
      end
    end
  end

end
