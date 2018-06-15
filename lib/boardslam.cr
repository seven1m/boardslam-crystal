class BoardSlam
  BOARD = 1..36
  OPERATIONS = %w(+ - * /)

  def initialize(x : Int8, y : Int8, z : Int8)
    @numbers = [x, y, z]
    @answers = {} of Int8 => String
  end

  getter :numbers, :answers

  def variants(num)
    [num, "#{num}^0", "#{num}^2", "#{num}^3"]
  end

  def expand(num)
    return num if num.is_a?(Int8)
    num, exp = num.split('^').map { |n| n.to_i }
    num ** exp
  end

  def results
    each_order do |x_base, y_base, z_base|
      each_variant(x_base, y_base, z_base) do |(x_pretty, x), (y_pretty, y), (z_pretty, z)|
        each_operation_pair do |op1, op2|
          result1 = op(x.to_i8, op1, y.to_i8)
          #next if op1 == "/" && x.to_i8 % y.to_i8 != 0
          result2 = op(result1, op2, z.to_i8)
          #next if op2 == "/" && result1.to_i8 % z.to_i8 != 0
          if BOARD.includes?(result2) && !answers.has_key?(result2)
            answers[result2] = "#{x_pretty.to_s.ljust(3)} #{op1} #{y_pretty.to_s.ljust(3)} #{op2} #{z_pretty.to_s.ljust(3)}"
          end
        end
      end
    end
    answers
  end

  def op(n1 : Int8, op : String, n2 : Int8) : Int8
    case op
    when "+"
      n1 + n2
    when "-"
      n1 - n2
    when "*"
      n1 * n2
    when "/"
      n1 / n2
    else
      0i8
    end
  end

  def each_order
    @numbers.permutations.each do |(x, y, z)|
      yield x, y, z
    end
  end

  def each_variant(x_base, y_base, z_base)
    variants(x_base).each do |x|
      x_expanded = expand(x)
      variants(y_base).each do |y|
        y_expanded = expand(y)
        variants(z_base).each do |z|
          z_expanded = expand(z)
          yield([x, x_expanded], [y, y_expanded], [z, z_expanded])
        end
      end
    end
  end

  def each_operation_pair
    OPERATIONS.each do |op1|
      OPERATIONS.each do |op2|
        yield(op1, op2)
        yield(op2, op1)
      end
    end
  end

  def missing
    BOARD.to_a - results.keys
  end
end
