module ApplicationHelper

  def bmi_color(bmi)
    case bmi
      when 0..15 # severely underweight
        return 'danger'
      when 16..17 # underweight
        return 'warning'
      when 18..24 # normal
        return 'success'
      when 25..30 # overweight
        return 'warning'
      when 31..60 # obese
        return 'danger'
    end
  end
end
