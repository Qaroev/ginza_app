const String jsonData = '''[
 {
    "name": "Бургеры",
    "products": [
      {
        "name": "Black-бургер-Maxi",
        "image": "assets/images/burgers/Black-бургер-Maxi.jpg",
        "description": "Булочка с кунжитом, майонез, кетчуп, горчица,лист салата, двойная котлета, двойной сыр Чеддер, помидор, маринованный огурец, репчатый лук.",
        "id": "0030",
        "price": 499,
        "count":0
      },
      {
        "name": "Black-бургер-классический",
        "image": "assets/images/burgers/Black-бургер-классический.jpg",
        "description": "Булочка с кунжитом, майонез, кетчуп, горчица,лист салата, сочная котлета из говядины, сыр Чеддер, помидор, маринованный огурец, репчатый лук.",
        "id": "0031",
        "price": 340,
        "count":0
      },
      {
        "name": "Black-бургер-с-мясной-котлетой-и-беконом",
        "image": "assets/images/burgers/Black-бургер-с-мясной-котлетой-и-беконом.jpg",
        "description": "Булочка с кунжитом, майонез, кетчуп, горчица,лист салата, сочная котлета из говядины, сыр Чеддер, жареный бекон, помидор, маринованный огурец.",
        "id": "0032",
        "price": 380,
        "count":0
      },
      {
        "name": "Maxi",
        "image": "assets/images/burgers/Maxi.jpg",
        "description":
        "Булочка с кунжутом, майонез, кетчуп, горчица, лист салата, двойная сочная котлета из говядины, двойной сыр Чеддер, помидоры, огурчики маринованные, лук репчатый",
        "id": "0033",
        "price": 380,
        "count":0
      },
      {
        "name": "Барбекю",
        "image": "assets/images/burgers/Барбекю.jpg",
        "description":
        "Булочка с кунжутом, майонез, соус Барбекю, лист салата, сочная котлета из говядины, сыр Чеддер, помидоры, лук репчатый",
        "id": "0034",
        "price": 270,
        "count":0
      },
      {
        "name": "Классический",
        "image": "assets/images/burgers/Классический.jpg",
        "description":
        "Булочка с кунжутом, майонез, кетчуп, горчица, лист салата, сочная котлета из говядины, сыр Чеддер, помидоры, огурчики маринованные, лук репчатый",
        "id": "0035",
        "price": 260,
        "count":0
      },
      {
        "name": "Острый",
        "image": "assets/images/burgers/Острый.jpg",
        "description":
        "Булочка с кунжутом, фирменный соус Спайси, лист салата, сочная котлета из говядины, сыр Чеддер, помидоры, огурчики маринованные, перец халапеньо",
        "id": "0036",
        "price": 280,
        "count":0
      },
      {
        "name": "Цезарь",
        "image": "assets/images/burgers/Цезарь.jpg",
        "description":
        "Булочка с кунжутом, соус Цезарь, лист салата, сочная куриная котлета, сыр Чеддер, помидоры",
        "id": "0037",
        "price": 300,
        "count":0
      }
    ]
  },
  {
    "name": "Десерты",
    "products": [
      {
        "name": "Донат баббл гам",
        "image": "assets/images/desert/Донат баббл гам.jpg",
        "description": "",
        "id": "0001",
        "price": 130,
        "count":0
      },
      {
        "name": "Донат клубничный",
        "image": "assets/images/desert/Донат клубничный.jpg",
        "description": "",
        "id": "0002",
        "price": 110,
        "count":0
      },
      {
        "name": "Донат манго",
        "image": "assets/images/desert/Донат манго.jpg",
        "description": "",
        "id": "0003",
        "price": 130,
        "count":0
      },
      {
        "name": "Донат с кокосовой начинкой",
        "image": "assets/images/desert/Донат с кокосовой начинкой.jpg",
        "description": "",
        "id": "0004",
        "price": 130,
        "count":0
      },
      {
        "name": "Донат смородина малина",
        "image": "assets/images/desert/Донат смородина малина.jpg",
        "description": "",
        "id": "0005",
        "price": 130,
        "count":0
      },
      {
        "name": "Ролл тропикана",
        "image": "assets/images/desert/Ролл тропикана.jpg",
        "description": "",
        "id": "0006",
        "price": 230,
        "count":0
      },
      {
        "name": "Ролл фантазия",
        "image": "assets/images/desert/Ролл фантазия.jpg",
        "description": "",
        "id": "0007",
        "price": 220,
        "count":0
      },
      {
        "name": "Ролл фруктовый роти",
        "image": "assets/images/desert/Ролл фруктовый роти.jpg",
        "description": "",
        "id": "0008",
        "price": 210,
        "count":0
      },
      {
        "name": "Чизкейк десерт фентази",
        "image": "assets/images/desert/Чизкейк десерт фентези.jpg",
        "description": "",
        "id": "0009",
        "price": 220,
        "count":0
      },
      {
        "name": "Чизкейк нью йорк",
        "image": "assets/images/desert/Чизкейк нью йорк.jpg",
        "description": "",
        "id": "0010",
        "price": 160,
        "count":0
      },
      {
        "name": "Чизкейк шоколадный",
        "image": "assets/images/desert/Чизкейк шоколадный.jpg",
        "description": "",
        "id": "0011",
        "price": 166,
        "count":0
      }
    ]
  },
    {
    "name": "Дополнительно",
    "products": [
      {
        "name": "Васаби",
        "products": [
          {
            "name": "Васаби",
            "image": "assets/images/dop/Васаби.jpg",
            "description": "",
            "id": "0069",
            "price": 50
,
"count":0          }
        ]
      },
      {
        "name": "Имбирь",
        "products": [
          {
            "name": "Имбирь",
            "image": "assets/images/dop/Имбирь.jpg",
            "description": "",
            "id": "0070",
            "price": 50
,
"count":0          }
        ]
      },
      {
        "name": "Соевый соус",
        "products": [
          {
            "name": "Соевый-соус",
            "image": "assets/images/dop/Соевый-соус.jpg",
            "description": "",
            "id": "0076",
            "price": 50
 ,
 "count":0         }
        ]
      },
      {
        "name": "Халапеньо",
        "products": [
          {
            "name": "Халапеньо",
            "image": "assets/images/dop/Халапеньо.jpg",
            "description": "",
            "id": "",
            "price": 50
 ,
 "count":0         }
        ]
      },
      {
        "name": "Шампиньоны",
        "products": [
          {
            "name": "Шампиньоны",
            "image": "assets/images/dop/Шампиньоны.jpg",
            "description": "",
            "id": "8881",
            "price": 50
 ,
 "count":0         }
        ]
      },
      {
        "name": "Ветчина",
        "products": [
          {
            "name": "Ветчина",
            "image": "assets/images/dop/Ветчина.jpg",
            "description": "",
            "id": "8883",
            "price": 50 ,
             "count":0    
          }
          
        ]
      },
      {
        "name": "Острый халапеньо",
        "products": [
          {
            "name": "Острый халапеньо",
            "image": "assets/images/dop/Острый-халапеньо.jpg",
            "description": "",
            "id": "8881",
            "price": 50,
             "count":0 
          }
        ]
      },
      {
        "name": "Свежие томаты",
        "products": [
          {
            "name": "Свежие томаты",
            "image": "assets/images/dop/Томаты.jpg",
            "description": "",
            "id": "8882",
            "price": 50,
             "count":0 
          }
        ]
      },
      {
        "name": "Маринованные огурцы",
        "products": [
          {
            "name": "Маринованные огурцы",
            "image": "assets/images/dop/Маринованные-огуричики.jpg",
            "description": "",
            "id": "8884",
            "price": 50,
             "count":0 
          }
        ]
      },
      {
        "name": "Сливочная моцарелла",
        "products": [
          {
            "name": "Сливочная моцарелла",
            "image": "assets/images/dop/Моцарелла.jpg",
            "description": "",
            "id": "8885",
            "price": 50,
             "count":0 
          }
        ]
      }
    ]
  },
   {
    "name": "Закуски",
    "products": [
      {
        "name": "Картофель-по-деревенски",
        "image": "assets/images/sakuski/Картофель-по-деревенски.jpg",
        "description": "",
        "id": "0114",
        "price": 210,
        "count":0
      },
      {
        "name": "Картофель-фри",
        "image": "assets/images/sakuski/Картофель-фри.jpg",
        "description": "",
        "id": "0115",
        "price": 190,
        "count":0
      },
      {
        "name": "Кольцы-кальмара",
        "image": "assets/images/sakuski/Кольцы-кальмара.jpg",
        "description": "",
        "id": "0117",
        "price": 340,
        "count":0
      },
      {
        "name": "Куриный-попкорн",
        "image": "assets/images/sakuski/Куриный-попкорн.jpg",
        "description": "",
        "id": "0118",
        "price": 270,
        "count":0
      },
      {
        "name": "Луковые-кольца",
        "image": "assets/images/sakuski/Луковые-кольца.jpg",
        "description": "",
        "id": "0119",
        "price": 199,
        "count":0
      },
      {
        "name": "Наггетсы",
        "image": "assets/images/sakuski/Наггетсы.jpg",
        "description": "",
        "id": "0120",
        "price": 250,
        "count":0
      },
      {
        "name": "Сырные-палочки",
        "image": "assets/images/sakuski/Сырные-палочки.jpg",
        "description": "",
        "id": "0123",
        "price": 200,
        "count":0
      },
      {
        "name": "Чесноные-гренки",
        "image": "assets/images/sakuski/Чесноные-гренки.jpg",
        "description": "",
        "id": "0124",
        "price": 170,
        "count":0
      }
    ]
  },
    {
    "name": "Китайская кухня",
    "products": [
      {
        "name": "Гарниры",
        "products": [
          {
            "name": "Картофель-по-китайски",
            "image": "assets/images/chiness/Картофель-по-китайски.jpg",
            "description": "Картофель, лук, болгарский перец, морковь, крахмал, кунжут, чеснок, арахис+перец, китайские специи",
            "id": "0016",
            "price": 340,
            "count":0
          },
          {
            "name": "Рис по-китайски",
            "image": "assets/images/chiness/Рис по-китайски.jpg",
            "description": "Рис, огурец, яйцо, китайская приправа",
            "id": "0020",
            "price": 200,
            "count":0
          }
        ]
      },
      {
        "name": "Горячее",
        "products": [
          {
            "name": "Габаджоу",
            "image": "assets/images/chiness/Габаджоу.jpg",
            "description": "Свинина, крахмал, томат, сахар, уксус 9%, соевый соус, лук, морковь, апельсиновый концентрат",
            "id": "0013",
            "price": 450,
            "count":0
          },
          {
            "name": "Гречневая лапша с морепродуктами",
            "image": "assets/images/chiness/Гречневая_лапша_с_морепродуктами.jpg",
            "description": "Мидии, кальмар и креветки в устричном соусе с гречневой лапшой и овощами",
            "id": "0014",
            "price": 360,
            "count":0
          },
          {
            "name": "Мясо-верёвочкой",
            "image": "assets/images/chiness/Мясо-верёвочкой.jpg",
            "description": "Свинина, яйцо (белок), крахмал, болгарский перец, лук, морковь, грибы древесные, соевый соус, виноградный уксус, сахар, крахмал, томатная паста, апельсиновый концентрат, китайские приправы",
            "id": "0018",
            "price": 440,
            "count":0
          },
          {
            "name": "Свинина с ананасами",
            "image": "assets/images/chiness/Свинина_с_ананасами.jpg",
            "description": "Свинина, крахмал, перец болгарский, ананас, томат, сахар, уксус 9%, соевый соус",
            "id": "0021",
            "price": 440,
            "count":0
          },
          {
            "name": "Свиные-рёбра-по-китайски",
            "image": "assets/images/chiness/Свиные-рёбра-по-китайски.jpg",
            "description": "Рёбра свиные, лук, кунжут, крахмал, соевый соус",
            "id": "0022",
            "price": 370,
            "count":0
          },
          {
            "name": "Стеклянная лапша со свининой",
            "image": "assets/images/chiness/Стеклянная_лапша_со_свининой.jpg",
            "description": "Лапша крахмальная с зелёным перцем и свининой в китайском соусе",
            "id": "0017",
            "price": 450,
            "count":0
          },
          {
            "name": "Удон с курицей",
            "image": "assets/images/chiness/Удон_с_курицей.jpg",
            "description": "Пшеничная лапша с луком, перцем болгарским, морковью и курицей в фирменном карри (средне-острый)",
            "id": "0023",
            "price": 380,
            "count":0
          },
      
          {
            "name": "Удон с семгой",
            "image": "assets/images/chiness/Удон_с_семгой.jpg",
            "description": "Пшеничная лапша с луком, болгарским перцем, морковью и сёмгой в фирменном карри",
            "id": "0024",
            "price": 470,
            "count":0
          }
        ]
      },
      {
        "name": "Салаты",
        "products": [
          {
            "name": "Китайский салат",
            "image": "assets/images/chiness/Китайский_салат.jpg",
            "description": "Фунчоза, древесные грибы, капуста, огурцы, морковь, китайские соусы",
            "id": "0082",
            "price": 255,
            "count":0
          },
          {
            "name": "Салат из брокколи",
            "image": "assets/images/chiness/Салат_из_брокколи.jpg",
            "description": "Брокколи, древесные грибы, лук репчатый, огурцы, помидоры, майонез, китайская приправа",
            "id": "0085",
            "price": 250,
            "count":0
          },
          {
            "name": "Салат из древесных грибов  500 гр",
            "image": "assets/images/chiness/Салат_из_древесных_грибов.jpg",
            "description": "Древесные чёрные и белые грибы, огурцы, морковь, сахар, китайские соусы и приправа",
            "id": "0088",
            "price": 470,
            "count":0
          },
          {
            "name": "Салат из древесных грибов  250 гр",
            "image": "assets/images/chiness/Салат_из_древесных_грибов.jpg",
            "description": "Древесные чёрные и белые грибы, огурцы, морковь, сахар, китайские соусы и приправа",
            "id": "0088",
            "price": 470,
            "count":0
          },
          {
            "name": "Салат из свиных ушей 500 гр",
            "image": "assets/images/chiness/Салат_из_свиных_ушей.jpg",
            "description": "Свиные уши, огурец, морковь, сахар, китайские соусы и приправа",
            "id": "0090",
            "price": 570,
            "count":0
          },
          {
            "name": "Салат из свиных ушей 250 гр",
            "image": "assets/images/chiness/Салат_из_свиных_ушей.jpg",
            "description": "Свиные уши, огурец, морковь, сахар, китайские соусы и приправа",
            "id": "0090",
            "price": 295,
            "count":0
          },
          {
            "name": "Салат из языка 500 гр",
            "image": "assets/images/chiness/Салат_из_языка.jpg",
            "description": "Говяжий язык, огурцы, морковь, помидоры, майонез, китайская приправа",
            "id": "0092",
            "price": 580,
            "count":0
          },
          {
            "name": "Салат из языка 250 гр",
            "image": "assets/images/chiness/Салат_из_языка.jpg",
            "description": "Говяжий язык, огурцы, морковь, помидоры, майонез, китайская приправа",
            "id": "0092",
            "price": 299,
            "count":0
          },
          {
            "name": "Салат свинина с арахисом 500 гр",
            "image": "assets/images/chiness/Салат_свинина_с_арахисом.jpg",
            "description": "Отварная свинина, огурцы, помидоры, древесные грибы, лук, арахис, сахар, китайские соусы и приправа",
            "id": "0094",
            "price": 490,
            "count":0
          },
          {
            "name": "Салат свинина с арахисом 250 гр",
            "image": "assets/images/chiness/Салат_свинина_с_арахисом.jpg",
            "description": "Отварная свинина, огурцы, помидоры, древесные грибы, лук, арахис, сахар, китайские соусы и приправа",
            "id": "0094",
            "price": 255,
            "count":0
          }
        ]
      }
    ]
  },  
   {
    "name": "Напитки",
    "products": [
      {
        "name": "Кола-0,5",
        "image": "assets/images/napitki/Кола-0,5.jpg",
        "description": "",
        "id": "",
        "price": 0
        ,
        "count":0         },
      {
        "name": "Сок-апельсин",
        "image": "assets/images/napitki/Сок-апельсин.jpg",
        "description": "",
        "id": "",
        "price": 0
        ,
        "count":0         },
      {
        "name": "Сок-вишня",
        "image": "assets/images/napitki/Сок-вишня.jpg",
        "description": "",
        "id": "",
        "price": 0
        ,
        "count":0         },
      {
        "name": "Сок-мультифрукт",
        "image": "assets/images/napitki/Сок-мультифрукт.jpg",
        "description": "",
        "id": "",
        "price": 0
        ,
        "count":0         },
      {
        "name": "Сок-яблоко",
        "image": "assets/images/napitki/Сок-яблоко.jpg",
        "description": "",
        "id": "",
        "price": 0
        ,
        "count":0         },
      {
        "name": "Спрайт-0,5",
        "image": "assets/images/napitki/Спрайт-0,5.jpg",
        "description": "",
        "id": "",
        "price": 0
        ,
        "count":0         }
    ]
  },
  {
    "name": "Пицца",
    "products": [
      {
        "name": "4 сыра 40 см",
        "image": "assets/images/pizza/4_сыра.jpg",
        "description": "Тесто, соус фирменный, сыр моцарелла, сыр гауда, сыр пармезан, сыр рассольный, грецкие орехи",
        "id": "0044",
        "price": 610,
        "count":0
      },
      {
        "name": "4 сыра 30 см",
        "image": "assets/images/pizza/4_сыра.jpg",
        "description": "Тесто, соус фирменный, сыр моцарелла, сыр гауда, сыр пармезан, сыр рассольный, грецкие орехи",
        "id": "0044",
        "price": 510,
        "count":0
      },
      {
        "name": "Барбекю 40 см",
        "image": "assets/images/pizza/Барбекю.jpg",
        "description": "Тесто, соус томатный, шампиньоны, бекон, лук, сыр моцарелла, соус Барбекю, укроп",
        "id": "0046",
        "price": 640,
        "count":0
      },
      {
        "name": "Барбекю 30 см",
        "image": "assets/images/pizza/Барбекю.jpg",
        "description": "Тесто, соус томатный, шампиньоны, бекон, лук, сыр моцарелла, соус Барбекю, укроп",
        "id": "0046",
        "price": 510,
        "count":0
      },
      {
        "name": "Гавайская 40 см",
        "image": "assets/images/pizza/Гавайская.jpg",
        "description": "Тесто, соус фирменный, курица, сыр моцарелла, ананас консервированный",
        "id": "0048",
        "price": 670,
        "count":0
      },
      {
        "name": "Гавайская 30 см",
        "image": "assets/images/pizza/Гавайская.jpg",
        "description": "Тесто, соус фирменный, курица, сыр моцарелла, ананас консервированный",
        "id": "0048",
        "price": 540,
        "count":0
      },
      {
        "name": "Классическая 40 см",
        "image": "assets/images/pizza/Классическая.jpg",
        "description": "Тесто, соус фирменный, ветчина, сыр моцарелла, помидоры, укроп",
        "id": "0050",
        "price": 610,
        "count":0
      },
      {
        "name": "Классическая 30 см",
        "image": "assets/images/pizza/Классическая.jpg",
        "description": "Тесто, соус фирменный, ветчина, сыр моцарелла, помидоры, укроп",
        "id": "0050",
        "price": 500,
        "count":0
      },
      {
        "name": "Куриная с грибами 40 см",
        "image": "assets/images/pizza/Куриная_с_грибами.jpg",
        "description": "Тесто, соус фирменный, курица, шампиньоны, сыр моцарелла, помидоры, укроп",
        "id": "0052",
        "price": 630,
        "count":0
      },
      {
        "name": "Куриная с грибами 30 см",
        "image": "assets/images/pizza/Куриная_с_грибами.jpg",
        "description": "Тесто, соус фирменный, курица, шампиньоны, сыр моцарелла, помидоры, укроп",
        "id": "0052",
        "price": 520,
        "count":0
      },
      {
        "name": "Курочка с чесноком 40 см",
        "image": "assets/images/pizza/Курочка_с_чесноком.jpg",
        "description": "Тесто, соус чесночный, курица, сыр моцарелла, помидоры, укроп",
        "id": "0054",
        "price": 620,
        "count":0
      },
      {
        "name": "Курочка с чесноком 30 см",
        "image": "assets/images/pizza/Курочка_с_чесноком.jpg",
        "description": "Тесто, соус чесночный, курица, сыр моцарелла, помидоры, укроп",
        "id": "0054",
        "price": 510,
        "count":0
      },
      {
        "name": "Маргарита 40 см",
        "image": "assets/images/pizza/Маргарита.jpg",
        "description": "Тесто, соус томатный, сыр моцарелла, помидоры, укроп",
        "id": "0056",
        "price": 550,
        "count":0
      },
      {
        "name": "Маргарита 30 см",
        "image": "assets/images/pizza/Маргарита.jpg",
        "description": "Тесто, соус томатный, сыр моцарелла, помидоры, укроп",
        "id": "0056",
        "price": 410,
        "count":0
      },
      {
        "name": "Морская 40 см",
        "image": "assets/images/pizza/Морская.jpg",
        "description": "Тесто, соус фирменный, кольца кальмара, мясо мидий, креветки, полоски кальмара, щупальца кальмара, сыр моцарелла, маслины, укроп",
        "id": "0058",
        "price": 660,
        "count":0
      },
      {
        "name": "Морская 30 см",
        "image": "assets/images/pizza/Морская.jpg",
        "description": "Тесто, соус фирменный, кольца кальмара, мясо мидий, креветки, полоски кальмара, щупальца кальмара, сыр моцарелла, маслины, укроп",
        "id": "0058",
        "price": 520,
        "count":0
      },
      {
        "name": "Мясная 40 см",
        "image": "assets/images/pizza/Мясная.jpg",
        "description": "Тесто, соус томатный, фарш свинина/говядина, лук репчатый, перец болгарский, помидоры, сыр моцарелла, шампиньоны, укроп",
        "id": "0060",
        "price": 870,
        "count":0
      },
      {
        "name": "Мясная 30 см",
        "image": "assets/images/pizza/Мясная.jpg",
        "description": "Тесто, соус томатный, фарш свинина/говядина, лук репчатый, перец болгарский, помидоры, сыр моцарелла, шампиньоны, укроп",
        "id": "0060",
        "price": 670,
        "count":0
      },
      {
        "name": "Острая курочка 40 см",
        "image": "assets/images/pizza/Острая_курочка.jpg",
        "description": "Тесто, соус спайси, репчатый лук, курица, перец халапеньо, сыр моцарелла, помидоры черри, укроп",
        "id": "0062",
        "price": 680,
        "count":0
      },
      {
        "name": "Острая курочка 30 см",
        "image": "assets/images/pizza/Острая_курочка.jpg",
        "description": "Тесто, соус спайси, репчатый лук, курица, перец халапеньо, сыр моцарелла, помидоры черри, укроп",
        "id": "0062",
        "price": 520,
        "count":0
      },
      {
        "name": "Охотничья 40 см",
        "image": "assets/images/pizza/Охотничья.jpg",
        "description": "Тесто, соус спайси, репчатый лук, охотничьи колбаски, маслины, сыр моцарелла, укроп",
        "id": "0064",
        "price": 680,
        "count":0
      },
      {
        "name": "Охотничья 30 см",
        "image": "assets/images/pizza/Охотничья.jpg",
        "description": "Тесто, соус спайси, репчатый лук, охотничьи колбаски, маслины, сыр моцарелла, укроп",
        "id": "0064",
        "price": 530,
        "count":0
      },
      {
        "name": "Пепперони 40 см",
        "image": "assets/images/pizza/Пепперони.jpg",
        "description": "Тесто, соус томатный, колбаса пепперони, перец болгарский, сыр моцарелла, укроп",
        "id": "0066",
        "price": 680,
        "count":0
      },
      {
        "name": "Пепперони 30 см",
        "image": "assets/images/pizza/Пепперони.jpg",
        "description": "Тесто, соус томатный, колбаса пепперони, перец болгарский, сыр моцарелла, укроп",
        "id": "0066",
        "price": 530,
        "count":0
      },
      {
        "name": "Римская 40 см",
        "image": "assets/images/pizza/Римская.jpg",
        "description": "Тесто, соус томатный, колбаса п/к, сыр моцарелла, солёные огурцы, укроп",
        "id": "0068",
        "price": 640,
        "count":0
      },
      {
        "name": "Римская 30 см",
        "image": "assets/images/pizza/Римская.jpg",
        "description": "Тесто, соус томатный, колбаса п/к, сыр моцарелла, солёные огурцы, укроп",
        "id": "0068",
        "price": 510,
        "count":0
      }
    ]
  },
  {
    "name": "Роллы",
    "products": [
      {
        "name": "Жаренные роллы",
        "products": [
          {
            "name": "Акинава",
            "image": "assets/images/roll/Акинава.jpg",
            "description": "нори,рис,снежный краб,болгарский перец,масаго,кляр,панировочный сухарь",
            "id": "0098",
            "price": 350,
            "count":0
          },
          {
            "name": "Камчатский",
            "image": "assets/images/roll/Камчатский.jpg",
            "description": "рис,нори,огурец,снежный краб,майонез,кляр,панировочный сухарь",
            "id": "0110",
            "price": 320,
            "count":0
          },
          {
            "name": "Ролл Восток",
            "image": "assets/images/roll/Ролл_Восток.jpg",
            "description": "нори,рис,сливочный сыр,креветка,огурец,соус лава,панировочный сухарь,кляр",
            "id": "0099",
            "price": 390,
            "count":0
          },
          {
            "name": "Сальмон Фурай",
            "image": "assets/images/roll/Сальмон_фурай-transformed.jpg",
            "description": "нори,рис,сливочный сыр,семга,угор копченый,огурец,кляр,панировочный сухарь,",
            "id": "0111",
            "price": 390,
            "count":0
          },
          {
            "name": "Сяке темпура",
            "image": "assets/images/roll/Сяке_темпура.jpg",
            "description": "нори,рис,сливочный сыр,семга,панировочный сухарь,огурец,кляр",
            "id": "0100",
            "price": 380,
            "count":0
          },
          {
            "name": "Хотатэ фурай (гребешок)",
            "image": "assets/images/roll/Хотатэ_фурай_(гребешок).jpg",
            "description": "рис,нори,гребешок,сыр,сливочный сыр,масаго,кляр,панировочный сухар,соус спайси красный",
            "id": "0113",
            "price": 370,
            "count":0
          },
          {
            "name": "Цезарь с курицей",
            "image": "assets/images/roll/Цезарь_с_курицей.jpg",
            "description": "",
            "id": "0145",
            "price": 330,
            "count":0
          }
        ]
      },
      {
        "name": "Запечённые",
        "products": [
          {
            "name": "Запеченный с гребешком",
            "image": "assets/images/roll/Запеченный_с_гребешком.jpg",
            "description": "рис,нори,огурец,гребешок,сливочный сыр",
            "id": "0106",
            "price": 350,
            "count":0
          },
          {
            "name": "Запеченный с крабом",
            "image": "assets/images/roll/Запеченный_с_крабом.jpg",
            "description": "нори,рис,снежный краб,сливочный сыр,огурец,замес шапочки",
            "id": "0104",
            "price": 340,
            "count":0
          },
          {
            "name": "Запеченный с креветкой",
            "image": "assets/images/roll/Запеченный_с_креветкой.jpg",
            "description": "рис,нори,огурец,креветка,сливочный сыр",
            "id": "0107",
            "price": 370,
            "count":0
          },
          {
            "name": "Запеченный с семгой",
            "image": "assets/images/roll/Запеченный_с_семгой.jpg",
            "description": "рис,нори,огурец,семга,сливочный сыр",
            "id": "0108",
            "price": 390,
            "count":0
          },
          {
            "name": "Кани темпура",
            "image": "assets/images/roll/Кани_темпура.jpg",
            "description": "рис,нори,микс краба,сливочный сыр,панировочные сухари,замес шапочки",
            "id": "0103",
            "price": 350,
            "count":0
          },
          {
            "name": "Хот тори",
            "image": "assets/images/roll/Хот_тори.jpg",
            "description": "нори,рис,сливочный сыр,огурец,курица,кунжут,замес шапочки",
            "id": "0105",
            "price": 330,
            "count":0
          }
        ]
      },
      {
        "name": "Наборы",
        "products": [
          {
            "name": "Гурман",
            "image": "assets/images/roll/Гурман.jpg",
            "description": "Филадельфия,Тори фурай,Запеченный с сёмгой,Сливочная каппа",
            "id": "0152",
            "price": 1300,
            "count":0
          },
          {
            "name": "Калифорния",
            "image": "assets/images/roll/Калифорния.jpg",
            "description": "Рис, нори, огурец, микс краба, масаго",
            "id": "0128",
            "price": 280,
            "count":0
          },
          {
            "name": "Лава",
            "image": "assets/images/roll/Лава.jpg",
            "description": "",
            "id": "0155",
            "price": 1360,
            "count":0
          },
          {
            "name": "Микс",
            "image": "assets/images/roll/Микс.jpg",
            "description": "Салмон Фурай,Эби Калифорния,Хот-тори,Каппа маки",
            "id": "0151",
            "price": 1200,
            "count":0
          },
          {
            "name": "Мини-сет",
            "image": "assets/images/roll/Мини-сет.jpg",
            "description": "Сяке маки,Каппа маки,Кани маки,Сливочная каппа",
            "id": "0150",
            "price": 780,
            "count":0
          },
          {
            "name": "Сет калифорния",
            "image": "assets/images/roll/Сет_калифорния.jpg",
            "description": "Сяке Калифорния,Колифорния,Эби Калифорния,Унаги Калифорния",
            "id": "0154",
            "price": 1400,
            "count":0
          },
          {
            "name": "Сет Лава",
            "image": "assets/images/roll/Сет_Лава.jpg",
            "description": "Лава с угрем,Лава с гребешком,Лава с семгой,Лава с креветкой",
            "id": "0115",
            "price": 1360,
            "count":0
          },
          {
            "name": "Темпурный",
            "image": "assets/images/roll/Темпурный.jpg",
            "description": "Хотатэ Фурай (жареный)(гребешок),Ролл камчатский(жареный),Тори Фурай(жареный),Сальмон Фурай(жареный)",
            "id": "0158",
            "price": 1390,
            "count":0
          },
          {
            "name": "Трио",
            "image": "assets/images/roll/Трио.jpg",
            "description": "",
            "id": "0159",
            "price": 950,
            "count":0
          }
        ]
      },
      {
        "name": "Холодные",
        "products": [
          {
            "name": "Аляска",
            "image": "assets/images/roll/Аляска.jpg",
            "description": "Рис, нори, микс краба, майонез, соус спаси белый, сёмга, огурец",
            "id": "0125",
            "price": 399,
            "count":0
          },
          {
            "name": "Бонито",
            "image": "assets/images/roll/Бонито.jpg",
            "description": "Нори, рис, стружка тунца, соус Терияке, филе сёмги, сливочный сыр",
            "id": "0126",
            "price": 320,
            "count":0
          },
          {
            "name": "Грин ролл",
            "image": "assets/images/roll/Грин_ролл.jpg",
            "description": "Нори, рис, сёмга копчёная, сливочный сыр, огурец, укроп",
            "id": "0127",
            "price": 320,
            "count":0
          },
          {
            "name": "Кани Маки",
            "image": "assets/images/roll/Кани_Маки.jpg",
            "description": "Рис, нори, снежный краб",
            "id": "0129",
            "price": 190,
            "count":0
          },
          {
            "name": "Каппа маки",
            "image": "assets/images/roll/Каппа_маки.jpg",
            "description": "Рис, нори, огурец",
            "id": "0130",
            "price": 140,
            "count":0
          },
          {
            "name": "Лава с гребешком",
            "image": "assets/images/roll/Лава_с_гребешком.jpg",
            "description": "Рис, нори, огурец, гребешок, сливочный сыр, соус Лава",
            "id": "0131",
            "price": 330,
            "count":0
          },
          {
            "name": "Лава с Креветкой",
            "image": "assets/images/roll/Лава_с_Креветкой.jpg",
            "description": "Рис, нори, огурец, креветка, сливочный сыр, соус Лава",
            "id": "0132",
            "price": 350,
            "count":0
          },
          {
            "name": "Лава с семгой",
            "image": "assets/images/roll/Лава_с_семгой.jpg",
            "description": "Рис, нори, огурец, сёмга, сливочный сыр, соус Лава",
            "id": "0133",
            "price": 350,
            "count":0
          },
          {
            "name": "Лава с угрем",
            "image": "assets/images/roll/Лава_с_угрем.jpg",
            "description": "Рис, нори, огурец, угорь, сливочный сыр, соус Лава",
            "id": "0134",
            "price": 350,
            "count":0
          },
          {
            "name": "Ролл-мистер-Смог",
            "image": "assets/images/roll/Ролл-мистер-Смог.jpg",
            "description": "Рис, нори, угорь, сливочный сыр, масаго, лук зелёный, стружка тунца",
            "id": "0135",
            "price": 350,
            "count":0
          },
          {
            "name": "Сливочная каппа",
            "image": "assets/images/roll/Сливочная_каппа.jpg",
            "description": "Нори, рис, огурец, сливочный сыр",
            "id": "0136",
            "price": 190,
            "count":0
          },
          {
            "name": "Сливочная креветка",
            "image": "assets/images/roll/Сливочная_креветка.jpg",
            "description": "Нори, рис, креветка, сливочный сыр, огурец, кунжут",
            "id": "0137",
            "price": 370,
            "count":0
          },
          {
            "name": "Сливочный лосось",
            "image": "assets/images/roll/Сливочный_лосось.jpg",
            "description": "Нори, рис, сливочный сыр, лосось, огурец, кунжут",
            "id": "0138",
            "price": 330,
            "count":0
          },
          {
            "name": "Сяке калифорния",
            "image": "assets/images/roll/Сяке_калифорния.jpg",
            "description": "Рис, нори, огурец, филе сёмги, сливочный сыр, масаго",
            "id": "0139",
            "price": 350,
            "count":0
          },
          {
            "name": "Сяке маки",
            "image": "assets/images/roll/Сяке_маки.jpg",
            "description": "Рис, нори, сёмга",
            "id": "0140",
            "price": 270,
            "count":0
          },
          {
            "name": "Унаги Калифорния",
            "image": "assets/images/roll/Унаги_Калифорния.jpg",
            "description": "Рис, нори, огурец, угорь жареный, сливочный сыр, масаго",
            "id": "0141",
            "price": 350,
            "count":0
          },
          {
            "name": "Филадельфия",
            "image": "assets/images/roll/Филадельфия.jpg",
            "description": "Нори, рис, сливочный сыр, сёмга филе, огурец",
            "id": "0142",
            "price": 399,
            "count":0
          },
          {
            "name": "Филадельфия с крабом",
            "image": "assets/images/roll/Филадельфия_с_крабом.jpg",
            "description": "Нори, рис, сливочный сыр, огурец, снежный краб, сёмга",
            "id": "0143",
            "price": 410,
            "count":0
          },
          {
            "name": "Цезарь с курицей",
            "image": "assets/images/roll/Цезарь_с_курицей.jpg",
            "description": "Рис, нори, сливочный сыр, курица жареная, лист салата, помидор, соус Цезарь, сыр Пармезан, кляр жареный",
            "id": "0145",
            "price": 330,
            "count":0
          },
          {
            "name": "Эби калифорния",
            "image": "assets/images/roll/Эби_калифорния.jpg",
            "description": "Рис, нори, огурец, креветка, сливочный сыр, масаго",
            "id": "0146",
            "price": 350,
            "count":0
          },
          {
            "name": "Яки сяке",
            "image": "assets/images/roll/Яки_сяке.jpg",
            "description": "Рис, нори, сёмга жареная, сливочный сыр, огурец, соус спайси, курица жареная",
            "id": "0147",
            "price": 300,
            "count":0
          },
          {
            "name": "Ясай Маки(овощной)",
            "image": "assets/images/roll/Ясай_Маки(овощной).jpg",
            "description": "Рис, нори, перец болгарский, помидор, огурец, лист салата, кунжут, соус Терияке",
            "id": "0148",
            "price": 250,
            "count":0
          }
        ]
      }
    ]
  },
   {
    "name": "Салаты",
    "products": [
      {
        "name": "Греческий",
        "image": "assets/images/salat/Греческий.jpg",
        "description":
        "Помидоры, рассольный сыр, лук салатный, перец болгарский, огурец, лист салата. заправка греческая",
        "id": "0084",
        "price": 330,
        "count":0
      },
      {
        "name": "Цезарь с креветкой",
        "image": "assets/images/salat/Цезарь_с_креветкой.jpg",
        "description":
        "Сыр пармезан, креветки, гренки, черри, лист салата, соус Цезарь",
        "id": "0095",
        "price": 380,
        "count":0
      },
      {
        "name": "Цезарь с курицей",
        "image": "assets/images/salat/Цезарь_с_курицей.jpg",
        "description":
        "Сыр пармезан, гренки, куриное филе, черри, лист салата, соус Цезарь",
        "id": "0096",
        "price": 360,
        "count":0
      },
      {
        "name": "Цезарь с семгой",
        "image": "assets/images/salat/Цезарь_с_семгой.jpg",
        "description":
        "Тесто, соус фирменный, ветчина, сыр моцарелла, помидоры, укроп",
        "id": "0097",
        "price": 380,
        "count":0
      }
    ]
  }
  ] ''';

