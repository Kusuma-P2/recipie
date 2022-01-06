import 'package:recipie/models/category.dart';
import 'package:recipie/constant.dart';
import 'package:recipie/models/categorypart.dart';
import 'package:recipie/models/subcategory.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
        color: kPrimaryColor,
        name: "Vegetarian",
        imgname: "veg",
        subCategories: [
          SubCategory(
            color: kPrimaryColor,
            name: "Aloo Paratha",
            imgname: "paratha",
            parts: [
              CategoryPart(
                ingredients:
                    " \n 1. Potato\n 2. Maida \n 3. Ghee \n 4. Buttor \n 5.Atta floor \n",
                steps:
                    "\n 1. Mix the atta, salt, water and keep kneeding into a soft dough \n 2. To prepare the filling boil and grate potatoes \n 3. Mix all ingridients for the filling together \n 4. Divide the dough into 8 equal parts and role into smooth balls \n 5. Flour the surface you are going to use to role the parathas \n 6. place the filling ball in the center of the flattened dough ball \n 7. Gather the dough ball around the filling, sealing it gently on top \n 8. Make it into a momo like ball making sure that the dough covers the filling ball completly \n 9. Gently pree the filled dough ball into a small circle \n 10. Then use your rolling pin to flaten it out to as thick or thin as you want \n 11. Tranfer rolled paratha to a hot griddle \n 12. Cook until both sides are golden brown when done brush up with ghee and transfer to a plate",
                isSelected: false,
                expirey: 2,
              )
            ],
          ),
          SubCategory(
            color: kPrimaryColor,
            name: "French Fries",
            imgname: "recipie4",
            parts: [
              CategoryPart(
                  ingredients:
                      "\n 1.Aloo \n 2.corn flour \n 3.maida \n 4.oil \n",
                  steps:
                      "\n 1.Cut the Potatoes \n 2.Soak the Potatoes \n 3. Drain and Dry the Potatoes \n 4. Fry the Potatoes \n 5. Drain and Cool the Half-Done Fries \n 6. Fry the Potatoes Again \n 7. Drain the Fries \n 8. Serve Your Homemade French Fries ",
                  isSelected: false,
                  expirey: 2,
                  )
            ],
          ),
        ],
      ),
      Category(
        color: kPrimaryColor,
        name: "Desserts",
        imgname: "dessert",
        subCategories: [
           SubCategory(
            color: kPrimaryColor,
            name: "Gulab Jamun",
            imgname: "jamun",
            parts: [
              CategoryPart(
                  ingredients:
                      "\n 1.Milk powder \n 2.maida / plain flour \n 3.baking powder \n 4. ghee \n 5. milk \n 6. ghee or oil \n 7. sugar \n 8. cardamom \n 9. saffron / kesar \n 10. rose water \n",
                  steps:
                      "\n 1.Firstly, in a large bowl take ¾ cup milk powder, ½ cup maida and ½ tsp baking powder. \n 2. now add 2 tbsp ghee and mix well making the flour moist. \n 3. further, add milk as required start to combine.combine well forming a soft dough. do not knead the dough. \n 4. meanwhile, prepare the sugar syrup by taking 2 cup sugar, 2 cup water, 2 cardamom and ¼ tsp saffron. \n 5. mix well and boil for 5 minutes or until the sugar syrup turns sticky. do not attain any string consistency. \n 6. turn off the flame and add 1 tsp lemon juice and 1 tsp rose water. lemon juice is added to prevent sugar syrup from crystallizing. \n 7.After 10 minutes or resting the dough, start to prepare small ball sized jamuns. \n 8. make sure there are no cracks in the jamun. if there are cracks then there are high chances for jamuns to break while frying.\n 9. deep fry in medium hot oil or ghee. frying in ghee gives good flavour to jamuns. \n 10. fry until the jamuns turn golden brown \n 11. drain off and transfer the jamun into a hot sugar syrup. \n 12. cover and rest for 2 hours or until jamuns absorb the sugar syrup and doubles in size.\n",
 
                  isSelected: false,
                  expirey: 2,
                  )
            ],
          ),
          SubCategory(
            color: kPrimaryColor,
            name: "Carrot Halwa",
            imgname: "halva",
            parts: [
              CategoryPart(
                  ingredients:
                      " \n 1. Carrot \n 2. Sugar \n 3. Milk \n 4. Khoa \n 5. Ghee \n 6. Cardamom Powder \n 7. Almond \n 8. Raisins \n",
                  steps:
                      "\n 1. Heat ghee, add grated carrots and roast while mixing continously \n 2. Pour Milk over Ghee rosted carrots and stirr to mix well bring into boil over flame \n 3. Cook until milk is absorbed and mixture turns thick \n 4. Add sugar, almond and raisins, mix well stirr and cook until suger is dissolved \n 5. Add cardamom powder, mix properly and turn off the flame \n 6. Transfer it to a serving boul and garnish with sliced almonds \n ",
                  isSelected: false,
                  expirey: 2,
                  )
            ],
          ),
        ],
      ),
      Category(
        color: kPrimaryColor,
        name: "Non-Vegetarian",
        imgname: "nonveg",
        subCategories: [
          SubCategory(
            color: kPrimaryColor,
            name: "Chicken Biryani",
            imgname: "recipie3",
            parts: [
              CategoryPart(
                  ingredients:
                      "\n 1.Chicken \n 2.Yogurt \n 3.Ginger,garlic paste \n 4.Salt \n 5.Red chili powder,garam masala  powder \n 6. Turmeric \n 7.Lemon juice \n 8.Rice \n 9.Bay leaf \n 10.Cardamom \n 11.Cloves \n 12.Cinamon piece \n 13. Star anse \n 14. Shahi jeera \n 15.onion \n 16.Chopped mint leaves \n 17.Green chilli",
                  steps:
                      " \n 1.Take chicken pieces in a bowl , add 3tbp plain yogurt ,2tbp ginger garlic paste,1tbp garam masala,1/2 tbp Salt,2tbp red chilli powder,1/4tbp Turmeric powder,1tbp Lemon juice \n 2.Mix everything well and marinate chicken for about an 1 hour \n 3.Add 2 cups of basumati rice and rinse it 3 times.Drain and soak in fresh water for 30 mins \n 4.Heat ghee or oil  in pressure cooker add 1 bay leaf ,4 cardamom 6 cloves,1cinamon piece ,1star anse,1tbp shahi jeera \n 5.Add thinly sliced onions  and stir them until they become light brown \n 6. Add marinated chicken and saute until it become pale for about 5 mins,cook until the chicken is soft,tender and completely cooked \n 7.Add 1/4 cup plain yogurt ,1/2 tbp red chilli powder ,1slit green chilli 2tbp chopped mint leaves \n 8.Layer drained rice all over the chicken.to a spread bowl pour 3 cups water and add 1/4 tbs salt \n 9.Level the rice gently on top. Add 2 tbp more mint leaves ,sprinkle 2 tbp fried onions and safforn soaked milk \n 10.Finally cover the pressure cooker and cook for 1 whistle \n 11. When the pressure releases naturally ,open the lid  and gently fluff up with a fork \n",
                  isSelected: false,
                  expirey: 2,
                  ),
            ],
          ),
        ],
      ),
      Category(
        color: kPrimaryColor,
        name: "Dairy",
        imgname: "dairy",
        subCategories: [
          SubCategory(
            color: kPrimaryColor,
            name: "Kheer",
            imgname: "kheer",
            parts: [
              CategoryPart(
                  ingredients:
                      "\n 1.basmati or long grain white rice \n 2.condensed milk \n 3. 5 cups milk \n 4.slivered almonds \n 5. sugar\n 6. cardamom powder \n",
                  steps:
                      "\n 1.Add all the ingredients for kheer into the pot, starting with water, followed by unsweetened condensed or evaporated milk, milk, nuts, cardamom powder and sugar. \n 2.Close the lid and seal the vent. Use the porridge mode for 20 minutes \n 3. Once the kheer is cooked, open the lid and give the contents a stir. \n 4. If it’s too thick, gradually add milk to thin it out. If adding more milk, use the saute function again for about 5 minutes.\n 5. Drain and Cool the Half-Done Fries \n 6.Serve the kheer warm or cold—whichever you prefer! Garnish with chopped or sliced nuts and cardamom powder or rose petals just before serving \n  ",
                  isSelected: false,
                  expirey: 2,
                  )
            ],
          ),
        ],
      ),
    ];
  }
}
