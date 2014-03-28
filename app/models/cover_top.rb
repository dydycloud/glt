class CoverTop
  include Mongoid::Document
  field :img1, type: String
  field :img2, type: String
  field :img3, type: String
  embedded_in :intro_pg
end
