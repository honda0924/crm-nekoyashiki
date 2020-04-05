class PaymentDay < ActiveHash::Base
  self.data=[
    {id: 5,payment_day: '当月5日'},
    {id: 10,payment_day: '当月10日'},
    {id: 15,payment_day: '当月15日'},
    {id: 20,payment_day: '当月20日'},
    {id: 25,payment_day: '当月25日'},
    {id: 30,payment_day: '当月末日'},
    {id: 105,payment_day: '翌月5日'},
    {id: 110,payment_day: '翌月10日'},
    {id: 115,payment_day: '翌月15日'},
    {id: 120,payment_day: '翌月20日'},
    {id: 125,payment_day: '翌月25日'},
    {id: 130,payment_day: '翌月末日'},
    {id: 205,payment_day: '翌々月5日'},
    {id: 210,payment_day: '翌々月10日'},
    {id: 215,payment_day: '翌々月15日'},
    {id: 220,payment_day: '翌々月20日'},
    {id: 225,payment_day: '翌々月25日'},
    {id: 230,payment_day: '翌々月末日'},
    {id: 999,payment_day: '都度'}
  ]
end