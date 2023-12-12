class Avo::Resources::Contact < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :first_name, as: :text
    field :last_name, as: :text

    field :crm_relations, as: :has_many, name: 'Relations'
  end
end
