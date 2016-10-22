#protospace

##Description of DB

1. User model  
     
  1. Table  
    users table  
     
  2. Columns and types of columns  
    name : string, null: false, index: true  
    
  3. Association    
    has\_many :groups, through: :group\_users  
    has\_many :messages, dependent: :destroy  
    has\_many :users_groups  
      
2. Group model  
    
  1. Table  
    groups table  
    
  2. Columns and types of columns  
      name : string, null: false
    
  3. Association  
    has\_many :users, through: :group\_users  
    has\_many :messages, dependent: :destroy  
    has\_many :group\_users
      
3. Message model  
    
  1. Table  
    messages table  
    
  2. Columns and types of columns  
    content   :text  
    user\_id  :reference  
    group\_id :reference  
    
  3. Association  
    belongs\_to :user,  foreign_key: true  
    belongs\_to :group, foreign_key: true  
      
4. GroupUser model
  1. Table  
    group\_users table  
    
  2. Columns and types of columns  
    user\_id  :reference, foreign_key: true  
    group\_id :reference, foreign_key: true  
    
  3. Association  
    belongs\_to :user  
    belongs\_to :group  
