class ClosingDay < ActiveHash::Base
  self.data=[
    {id: 5,closing_day: '5日'},
    {id: 10,closing_day: '10日'},
    {id: 15,closing_day: '15日'},
    {id: 20,closing_day: '20日'},
    {id: 25,closing_day: '25日'},
    {id: 30,closing_day: '末日'},
    {id: 99,closing_day: '都度'}
  ]
end