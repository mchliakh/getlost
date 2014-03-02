class Park < ActiveRecord::Base
  def class_name
    name.downcase.gsub(/[&\.]/, '').gsub(/\s+/, '-')
  end

  def traffic
    visitors / area
  end

  def crowdedness
    return 'Tranquil' if traffic < 100
    return 'Popular' if traffic > 100 && traffic < 1000
    return 'Crowded'
  end
end
