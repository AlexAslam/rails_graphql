module Types
	PostType = GraphQL::ObjectType.define do 
		name "Post"
		description "a post"
		field :id, !types.Int
		field :text, !types.String do 
			resolve ->(obj,args,ctx){
				obj.user.username + ' - ' + obj.user.email + ' - ' + obj.text
			}
		end
		field :comment, !types.String
	end
end