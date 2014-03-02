class Park < ActiveRecord::Base
  def class_name
    name.downcase.gsub(/[&\.]/, '').gsub(/\s+/, '-')
  end

  def traffic
    visitors / area
  end

  def crowdedness
    return 'peaceful' if traffic < 100
    return 'popular' if traffic > 100 && traffic < 1000
    return 'crowded'
  end
end
