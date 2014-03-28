class About
  include Mongoid::Document
  field :titre, type: String
  field :content, type: String
  field :details, type: String
  embedded_in :intro_pg 
end
