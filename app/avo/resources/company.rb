class Avo::Resources::Company < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    main_panel do
      field :id, as: :id
      field :name, as: :text
    end
    tabs id: 'whatever' do
      tab 'Tab1' do
        panel 'Foo' do
          field :name, as: :text
        end
      end
      tab 'Tab2' do
        panel 'Foo' do
          field :description, as: :text
        end
      end
    end
  end
end
