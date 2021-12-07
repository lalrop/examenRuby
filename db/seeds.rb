# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# buildings = Building.create([
#     {name:'Edificio 1', address:'calle 1', city:'Santiago'},
#     {name:'Edificio 2', address:'calle 2', city:'Santiago'},
#     {name:'Edificio 3', address:'calle 3', city:'Rancagua'},
#     {name:'Edificio 4', address:'calle 4', city:'Arica'},
#     {name:'Edificio 5', address:'calle 5', city:'Talcahuano'},
#     {name:'Edificio 6', address:'calle 6', city:'Concepcion'},
#     {name:'Edificio 7', address:'calle 7', city:'Concepcion'},
#     {name:'Edificio 8', address:'calle 8', city:'Temuco'},
# ])


apartamento = Apartament.create(number:1, buildings_id: Building.find(1))
apartamento.save


