//
//  ShowDrinkViewController.swift
//  TurnUp
//
//  Created by Kris Cho on 19/7/2017.
//  Copyright © 2017 Kris Cho. All rights reserved.
//

import UIKit

class ShowDrinkViewController: UIViewController {

    var drink = NSDictionary()
    
    @IBOutlet weak var drinkName: UILabel!
    @IBOutlet weak var drinkIngredient1: UILabel!
    @IBOutlet weak var drinkIngredient2: UILabel!
    @IBOutlet weak var drinkIngredient3: UILabel!
    @IBOutlet weak var drinkIngredient4: UILabel!
    @IBOutlet weak var drinkIngredient5: UILabel!
    @IBOutlet weak var drinkIngredient6: UILabel!
    @IBOutlet weak var showInstructionsLabel: UITextView!
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func addFavoriteButtonPressed(_ sender: UIButton) {
        
        turnUpModel.addDrinkToFavorites(drink: drink, completionHandler: {
            data,response, error in
            
            do {
                if let d = data {
                    print (d)
                }
            } catch {
                print ("Something went wrong with adding favorite drink")
            }
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print (drink)
        
        if drink["strDrink"] != nil {
            print (drink["strDrink"]!)
            drinkName.text = drink["strDrink"]! as! String
        } else {
            drinkName.text = "Drink"
        }
        //ingredient 1
        if let ingredient1 = drink["strIngredient1"] {
            if let measure1 = drink["strMeasure1"] {
                drinkIngredient1?.text = "\(measure1)\(ingredient1)"
            } else {
                drinkIngredient1?.text = drink["strIngredient1"]! as! String
            }
        } else {
            drinkIngredient1.text = ""
        }
        //ingredient 2
        if let ingredient2 = drink["strIngredient2"] {
            if let measure2 = drink["strMeasure2"] {
                drinkIngredient2?.text = "\(measure2)\(ingredient2)"
            } else {
                drinkIngredient2?.text = drink["strIngredient2"]! as! String
            }
        } else {
            drinkIngredient2.text = ""
        }
        //ingredient 3
        if let ingredient3 = drink["strIngredient3"] {
            if let measure3 = drink["strMeasure3"] {

                drinkIngredient3?.text = "\(measure3)\(ingredient3)"
            } else {
                drinkIngredient3?.text = drink["strIngredient3"]! as? String
            }
        } else {
            drinkIngredient3.text = ""
        }
        //ingredient 4
        if let ingredient4 = drink["strIngredient4"] {
            if let measure4 = drink["strMeasure4"] {
                drinkIngredient4?.text = "\(measure4)\(ingredient4)"
            } else {
                drinkIngredient4?.text = drink["strIngredient4"]! as? String
            }
        } else {
            drinkIngredient4.text = ""
        }
        //ingredient 5
        if let ingredient5 = drink["strIngredient5"] {
            if let measure5 = drink["strMeasure5"] {
                drinkIngredient5?.text = "\(measure5)\(ingredient5)"
            } else {
                drinkIngredient5?.text = drink["strIngredient5"]! as? String
            }
        } else {
            drinkIngredient5.text = ""
        }
        //ingredient 6
        if let ingredient6 = drink["strIngredient6"] {
            if let measure6 = drink["strMeasure6"] {
                drinkIngredient6?.text = "\(measure6)\(ingredient6)"
            } else {
                drinkIngredient6?.text = drink["strIngredient6"]! as? String
            }
        } else {
            drinkIngredient6.text = ""
        }
        //instructions
        if drink["strInstructions"] != nil {
            showInstructionsLabel.text = drink["strInstructions"]! as! String
        } else {
            showInstructionsLabel.text = ""
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    


}
