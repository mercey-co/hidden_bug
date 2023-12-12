class Avo::Resources::CrmRelation < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :item, as: :belongs_to, polymorphic_as: :item, types: [::Contact, ::Company], can_create: false,
                 searchable: true
    field :ref_relation_role, as: :belongs_to, can_create: false, name: 'Relation'
    field :related_item, as: :belongs_to, polymorphic_as: :related_item, types: [::Contact, ::Company],
                         can_create: false, searchable: true
  end
end
