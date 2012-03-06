class Location < ActiveRecord::Base
  has_attached_file :image, :styles => {
    :large => "622x393#"
  }
  
  validates :description, :image, :presence => true
    
  before_post_process :transliterate_file_name

  def transliterate_file_name
    extension = File.extname(image_file_name).gsub(/^\.+/, '')
    filename = image_file_name.gsub(/\.#{extension}$/, '')

    # Downcase string
    filename.downcase!
    # Remove apostrophes so isn't changes to isnt
    filename.gsub!(/'/, '')
    # Replace any non-letter or non-number character with a space
    filename.gsub!(/[^A-Za-z0-9]+/, ' ')
    # Remove spaces from beginning and end of string
    filename.strip!
    # Replace groups of spaces with single hyphen
    filename.gsub!(/\ +/, '-')

    self.image.instance_write(:file_name, "#{filename}.#{extension}")
  end
end
