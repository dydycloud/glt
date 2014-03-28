class IntroPg
  include Mongoid::Document

  field :titre, type: String

  embeds_one :cover_top
  embeds_one :cover_bottom
  embeds_one :about

  accepts_nested_attributes_for :cover_top, :cover_bottom, :about

  validates_presence_of :titre
end
