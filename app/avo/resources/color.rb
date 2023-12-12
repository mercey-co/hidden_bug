class Avo::Resources::Color < Avo::BaseResource
  self.includes = []
  self.search = {
    query: -> { query.ransack(name_eq: params[:q], m: 'or').result(distinct: false) }
  }

  def fields
    field :id, as: :id
    field :name, as: :text
  end
end
