class CoverBottom
  include Mongoid::Document
  field :img1, type: String
  field :img2, type: String
  field :img3, type: String
  field :img4, type: String
  field :img5, type: String
  field :img6, type: String
  embedded_in :intro_pg
end
