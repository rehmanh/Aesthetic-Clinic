# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Procedure.create!([
  {
    name: 'The Thing', 
    description:
    %{
      This is a very descriptive description and a lot of content goes here, for some particular reason.
    }.squish
  },
  {
    name: 'The Flutterby',
    description:
    %{
      The name of this description basically speaks for itself here, there is nothing to see here, other than the fact that there will be a butterfly somehow involved...
    }.squish
  },
  {
    name: 'The Flutterby',
    description:
    %{
      The name of this description basically speaks for itself here, there is nothing to see here, other than the fact that there will be a butterfly somehow involved...
    }.squish
  },
  {
    name: 'The Flutterby',
    description:
    %{
      The name of this description basically speaks for itself here, there is nothing to see here, other than the fact that there will be a butterfly somehow involved...
    }.squish
  }
])
