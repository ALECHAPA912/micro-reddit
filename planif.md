# USER
name:string [unique, present]
email:string [unique, present]
password:string [6-16 chars, present]
id:integer
created_at:datetime
updated_at:datetime
has_many posts
has_many comments

# POST
title:string
body:text
user_id:integer 
id:integer
created_at:datetime
updated_at:datetime
belongs_to user
has_many comments

# COMMENT
body:text
user_id:integer
post_id:integer
id:integer
created_at:datetime
updated_at:datetime
belongs_to post
belongs_to user
