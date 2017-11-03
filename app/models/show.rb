class Show < ApplicationRecord

  validates_presence_of :title, :episodes
end
