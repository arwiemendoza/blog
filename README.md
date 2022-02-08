# Handy Bunny

    Ruby Version ruby-2.7.4

## Installation

```
git clone https://github.com/arwiemendoza/blog.git
```

```
cd blog
```

```
For Windows:

    sudo service postgresql start
```

```
For Mac:

    brew services start postgresql
```

```
bundle install
```

```
rails db:migrate
```

```
For Windows:

    Open database.yml
    Uncomment username and password
```

```
For Mac:

    Open database.yml
    Comment username and password
```

```
rails s
```

## Demo

    https://arwie-blogapp.herokuapp.com/articles

<br/>

## Features

-   User is able to create, view, edit, and delete an article
-   User can put a comment to an article
-   Comments are filtered according to the article
