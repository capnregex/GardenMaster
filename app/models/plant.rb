class Plant < ActiveRecord::Base
  def when_to_plant= s
    case s
    when /(\d+)-(\d+) weeks after/
      self.adlf_min =  $1.to_i
      self.adlf_max =  $2.to_i
    when /(\d+) weeks after/
      self.adlf_min =  $1.to_i
      self.adlf_max =  $1.to_i
    when /(\d+)-(\d+) weeks before/
      self.adlf_min = -( $1.to_i )
      self.adlf_max = -( $2.to_i )
    when /(\d+) weeks before/
      self.adlf_min = -( $1.to_i )
      self.adlf_max = -( $1.to_i )
    when 'On ADLF'
      self.adlf_min = 0
      self.adlf_max = 0
    end
  end

  def rows_per_bed= s
    case s
    when /(\d+) alt/
      self[:rows_per_bed] = $1.to_i
      self.alternate_rows = true
    else
      self[:rows_per_bed] = s.to_i
      self.alternate_rows = false
    end
  end

  def feedings= s
    case s
    when /(\d+)-(\d+)/
      self.feedings_min = $1
      self.feedings_max = $2
    else
      self.feedings_min = s
      self.feedings_max = s
    end
  end

end
