class Avo::Resources::Car < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields2
    tabs do
      tab 'General' do
        panel do
          row do
            field :id, as: :id
            field :name, as: :text
          end
          row do
            field :brand, as: :text
            field :color, as: :belongs_to, searchable: true, can_create: false
          end
        end
      end
    end
  end

  def fields
    tabs do
      tab 'General' do
        panel do
          field :id, as: :id
          field :name, as: :text, sortable: true, filterable: true, hide_on: %i[show forms]
          field :brand, as: :text
          field :color, as: :belongs_to, searchable: true, can_create: false
        end
      end
    end
  end

  def actions
    action Avo::Actions::Foo
  end
end
