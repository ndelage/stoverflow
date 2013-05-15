# StoverFlow

## The Chefs

- [Michael Malchak](https://github.com/malchak)  - @malchak
- [Pat Scanlan](https://github.com/patscan)      - @patscan
- [Vincent Storme](https://github.com/vincentstorme)   - @vincentstorme
- [Chris Torstenson](https://github.com/ctorstens) - @ctorstens

## Schema

![v 0.1](http://i.imgur.com/enfSYJH.png)

## To Do

### Schema

#### Add Answer Schema

```
$ rails generate migration CreateAnswersTable
```

##### ```db/migrate/xxxxCreateAnswersTable.rb```
``` ruby
class CreateAnswersTable < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :user
      t.references :question
      t.text :content

      t.timestamps
    end
  end
end
```

#### Add Vote Schema (Polymorphic Association)

##### CREATE: ```migration_file.rb```
``` ruby
class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :votable, :polymorphic => true
      t.references :user
      t.integer :value

      t.timestamps
    end
  end
end
```

##### CREATE: ```app/models/vote.rb```
``` ruby
class Vote < ActiveRecord::Base
  belongs_to :votable, :polymorphic => true
  belongs_to :user
end
```

##### UPDATE: ```app/models/user.rb```
``` ruby
class User < ActiveRecord::Base
  has_many :votes
end
```


##### UPDATE: ```app/models/question.rb```
``` ruby
class Question < ActiveRecord::Base
  has_many :votes, :as => votable
end
```



##### UPDATE: ```app/models/answer.rb```
``` ruby
class Answer < ActiveRecord::Base
  has_many :votes, :as => votable
end
```


## References

- [RoR Guides: polymorphic-associations](http://guides.rubyonrails.org/association_basics.html#polymorphic-associations)