# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Iou.create([{
  name:    'Daniel Ortiz',
  event:   'Sleep over',
  amount:   20,
  contact: 'do@gmail.com',
  date:    '',
  status:  'pending'
},
{
  name:    'Mara',
  event:   'Huel party',
  amount:   12,
  contact: 'mw@gmail.com',
  date:    '',
  status:  'accepted'
}])
