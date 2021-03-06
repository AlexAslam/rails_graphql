Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(root, args, ctx) {
      "Hello World!"
    }
  end

  field :me, Types::UserType do
    description "An example field added by the generator"
    resolve ->(root, args, ctx) {
      User.first
    }
  end

  field :posts, types[Types::PostType] do
    description "the posts for the current user"
    resolve ->(root,args,ctx){
      Post.all
    }
  end
end
