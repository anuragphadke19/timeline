class Entry < ActiveRecord::Base
  
  def parsed_date
    created_at.year
  end
  
  def as_json(options = {})
    super(options.merge(:only => [ :text, :created_at ]))
    super(options.merge(:methods => [ :parsed_date ]))
  end
  
end
