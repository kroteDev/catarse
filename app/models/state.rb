class State < ActiveRecord::Base
  validates_presence_of :name, :acronym
  validates_uniqueness_of :name, :acronym

  has_many :cities

  def self.array
    @array ||= order(:name).pluck(:name, :acronym).push(['Acre','AC'],['Alagoas','AL'],['Amapá','AP'],['Amazonas','AM'],['Bahia ','BA'],['Ceará','CE'],['Distrito Federal ','DF'],['Espírito Santo','ES'],['Goiás','GO'],['Maranhão','MA'],['Mato Grosso','MT'],['Mato Grosso do Sul','MS'],['Minas Gerais','MG'],['Pará','PA'],['Paraíba','PB'],['Paraná','PR'],['Pernambuco','PE'],['Piauí','PI'],['Rio de Janeiro','RJ'],['Rio Grande do Norte','RN'],['Rio Grande do Sul','RS'],['Rondônia','RO'],['Roraima','RR'],['Santa Catarina','SC'],['São Paulo','SP'],['Sergipe','SE'],['Tocantins','TO'])
  end
end
