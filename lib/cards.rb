
class Cards
  def anywhere
    return ["Anywhere Card: - Apr: 33.9% - Balance Transfer Offer Duration: 0 months - Purchase Offer Duration: 0 Months - Credit Available: £300", 300]
  end

  def studentlife(employment_status)
    if (@employment_status != 'student')
      return ["Student Life - Apr: 18.9% - Balance Transfer Offer Duration: 0 months - Purchase Offer Duration: 6 Months - Credit Available: £1200", 1200]
    else 
      return false
    end
  end

  def liquidcard(earnings)
    if (@earnings.to_i < 16000) 
      return ["Liquid Card - Apr: 33.9% - Balance Transfer Offer Duration: 12 months - Purchase Offer Duration: 6 Months - Credit Available: £3000", 3000]
    else 
      return false
    end
  end

end