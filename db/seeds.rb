# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


c1 = Company.new(
    :name => "Юл1",
    :money => 1000000,
    :term => 6,
    :annual_rate => 0.3,
    :period => 1,
    :default_rate => 0.5,

    :monthly_debt => 166666.666666667,
    :monthly_percent => 25000,
    :monthly_common => 191666.666666667,
    :payout => 1150000,

    :paid_percent => 150000,
    :paid_debt => 1000000,
    :yield_pa => 0.3
)

c1.payments.build(name: "Month 1", amount:  191666.67)
c1.payments.build(name: "Month 2", amount:  191666.67)
c1.payments.build(name: "Month 3", amount:  191666.67)
c1.payments.build(name: "Month 4", amount:  191666.67)
c1.payments.build(name: "Month 5", amount:  191666.67)
c1.payments.build(name: "Month 6", amount:  191666.67)
c1.save


c2 = Company.new(
    :name => "Юл2",
    :money => 1000000,
    :term => 6,
    :annual_rate => 0.3,
    :period => 1,
    :default_rate => 0.5,

    :monthly_debt => 166666.666666667,
    :monthly_percent => 25000,
    :monthly_common => 191666.666666667,
    :payout => 1150000,

    :paid_percent => 100000,
    :paid_debt => 1000000,
    :yield_pa => 0.2
)

c2.payments.build(name: "Month 1", amount:  191666.67)
c2.payments.build(name: "Month 2", amount:  191666.67)
c2.payments.build(name: "Month 3", amount:  191666.67)
c2.payments.build(name: "Month 4", amount:  525000.00)
c2.save


c3 = Company.new(
    :name => "Юл3",
    :money => 1000000,
    :term => 6,
    :annual_rate => 0.3,
    :period => 1,
    :default_rate => 0.5,

    :monthly_debt => 166666.666666667,
    :monthly_percent => 25000,
    :monthly_common => 191666.666666667,
    :payout => 1150000,

    :paid_percent => 216666.666666667,
    :paid_debt => 1000000,
    :yield_pa => 0.43
)

c3.payments.build(name: "Month 1", amount:  191666.67)
c3.payments.build(name: "Month 2", amount:  191666.67)
c3.payments.build(name: "Month 3", amount:  208333.33)
c3.payments.build(name: "Month 4", amount:  208333.33)
c3.payments.build(name: "Month 5", amount:  208333.33)
c3.payments.build(name: "Month 6", amount:  208333.33)
c3.save