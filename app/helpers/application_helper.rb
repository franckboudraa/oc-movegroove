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

  def feeling_icon(feeling)
    case feeling
      when 'i1'
        return 'sentiment_very_dissatisfied'
      when 'i2'
        return 'sentiment_dissatisfied'
      when 'i3'
        return 'sentiment_neutral'
      when 'i4'
        return 'sentiment_satisfied'
      when 'i5'
        return 'sentiment_very_satisfied'
    end
  end

  def calculate_calories_from_met(met, weight, duration)
    return (met.to_f * weight.to_f * (duration.to_f / 60)).to_i
  end
end