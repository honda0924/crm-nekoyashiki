class PaymentMethod < ActiveHash::Base
  self.data=[
    {id: 1,name: "現金"},
    {id: 2,name: "小切手"},
    {id: 3,name: "手形"}
  ]
end