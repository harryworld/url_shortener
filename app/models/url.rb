class Url < ActiveRecord::Base

  before_save :generate_url
  validates :original, :presence => true

  def generate_url
    self.converted = "http://localhost:3000/#{random_string}"
  end

  def check_converted
    if self.converted.nil?
      self.errors.add :base, "the converted URL should exists"
    end
  end

  private

    def random_string
      (0...6).map { (65 + rand(26)).chr }.join
    end

end
