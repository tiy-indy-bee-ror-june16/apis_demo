class Post < ApplicationRecord

  scope :featured, -> { where(published: true) }

  # def self.featured
  #   where(published: true)
  # end

  def self.last_five_minutes
    where("created_at > ?", 5.minutes.ago)
  end

end
