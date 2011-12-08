module DonationsHelper

  def total_donations
    donations = Donation.all
    total = 0
    donations.each do |donation|
      total += donation.value
    end
    return total
  end

  def org_donations(id)
    donations = Donation.find(:all , :conditions => { :org_id => id })
    total = 0
    donations.each do |donate|
      total += donate.value
    end
    return total
  end

  def donation_kind
    kind = Array.new
    kind = [['Financial($)', 0],['Clothing', 1],['Furniture', 2],['Electronics', 3],['Other', 4]]
    return kind
  end
 
  def x_donation_kind(kind) # used to translate value stored into english
    x = donation_kind
    x[kind][0]
  end
  
end
