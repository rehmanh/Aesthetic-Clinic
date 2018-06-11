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
  }
])

User.create!([
  {
    name: 'John Doe',
    email: 'john@example.com',
    phone_number: '03009233780',
    complaint:
    %{
      I have a headache and I don't think it is relatd to Dermatlogy, but here I am anyways
    }.squish
  },
  {
    name: 'Jane Doe',
    email: 'jane@example.com',
    phone_number: '666-666-6666',
    complaint:
    %{
      Why won't any one love me in this cule cruel world?   
    }.squish
  },
  {
    name: 'Charlie Man',
    email: 'charles@mann.com',
    phone_number: '03009233780',
    complaint: 
    %{
      I have this urge to always bite people and I am not sure why...
    }.squish
  },
  {
    name: 'Hanson the Unicorn',
    email: 'hanson@theunicorn.com',
    phone_number: '67867867867867867867867867',
    complaint: 
    %{
      Charlie bit me, and it reaaally hurt! :(
    }.squish
  }

])
