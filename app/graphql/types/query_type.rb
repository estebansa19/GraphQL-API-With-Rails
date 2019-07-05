module Types
  class QueryType < Types::BaseObject
    field :items,
          [Types::ItemType],
          null: false,
          description: "Returns a list of items in the library"

    field :users,
          [Types::UserType],
          null: false,
          description: "Returns a list of items in the library"

    def items
      Item.all
    end

    def users
      User.all
    end
  end
end
