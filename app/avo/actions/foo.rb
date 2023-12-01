class Avo::Actions::Foo < Avo::BaseAction
  self.name = 'Foo'
  self.standalone = true
  # self.visible = -> do
  #   true
  # end

  def fields
    field :brand, as: :text
    field :occurences, as: :number
    field :occurences2,
          as: :hidden,
          default: lambda {
            10
          }
  end

  def handle(records:, fields:, current_user:, resource:, **_args)
    succeed "Occurences of #{fields[:brand]}: #{fields[:occurences2]}"
  end
end
