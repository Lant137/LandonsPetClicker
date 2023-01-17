//
//  ChatViewController.swift
//  LanAppProj
//
//  Created by mac02 on 1/10/23.
//

import UIKit

class ChatViewController: UIViewController {
    
    
    
    @IBOutlet weak var shopItemOutlet: UIButton!
    @IBOutlet weak var itemCostOutlet: UILabel!
    @IBOutlet weak var coinAmount: UILabel!
    
    var colorSelect : Int = 0
    var redEggCount : Int = 0
    var blueEggCount : Int = 0
    var greenEggCount : Int = 0
  
    
    var hatPrice = 5
    var glassesPrice = 10
    var shoesPrice = 15
    var accPrice = 20
    var scenePrice = 30
    var shopProg = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //SHOW PRICES
        if colorSelect == 1 {
            coinAmount.text = "You have \(redEggCount) coins!"
        } else if colorSelect == 2 {
            coinAmount.text = "You have \(blueEggCount) coins!"
        } else if colorSelect == 3 {
            coinAmount.text = "You have \(greenEggCount) coins!"
        }
        
    }
    
    @IBAction func shopItemTapped(_ sender: Any) {
        
        
        //Shop Progress Glasses
        if (colorSelect == 1 && shopProg == 0 && redEggCount >= hatPrice) {
            shopProg = shopProg + 1
            shopItemOutlet.setImage(UIImage(named: "ButtGlassesY"), for: .normal)
            redEggCount = redEggCount - hatPrice
            coinAmount.text = "You have \(redEggCount) coins!"
            itemCostOutlet.text = "\(glassesPrice) COINS"
        }
        
        //Shop Progress Shoes
        else if (colorSelect == 1 && shopProg == 1 && redEggCount >= glassesPrice) {
            shopProg = shopProg + 1
            shopItemOutlet.setImage(UIImage(named: "ButtShoesY"), for: .normal)
            redEggCount = redEggCount - glassesPrice
            coinAmount.text = "You have \(redEggCount) coins!"
            itemCostOutlet.text = "\(shoesPrice) COINS"
        }
        
        //Shop Progress Acc
        else if (colorSelect == 1 && shopProg == 2 && redEggCount >= shoesPrice) {
            shopProg = shopProg + 1
            shopItemOutlet.setImage(UIImage(named: "ButtAccY"), for: .normal)
            redEggCount = redEggCount - shoesPrice
            coinAmount.text = "You have \(redEggCount) coins!"
            itemCostOutlet.text = "\(accPrice) COINS"
        }
        
        //Shop Progress Scene
        else if (colorSelect == 1 && shopProg == 3 && redEggCount >= accPrice) {
            shopProg = shopProg + 1
            shopItemOutlet.setImage(UIImage(named: "ButtSceneY"), for: .normal)
            redEggCount = redEggCount - accPrice
            coinAmount.text = "You have \(redEggCount) coins!"
            itemCostOutlet.text = "\(scenePrice) COINS"
        }
        
        else if (colorSelect == 1 && shopProg == 4 && redEggCount >= scenePrice){
            shopProg = shopProg + 1
            redEggCount = redEggCount - scenePrice
            coinAmount.text = "You have \(redEggCount) coins!"
            itemCostOutlet.text = "SOLD OUT!"
        }
        
    }

    
    
    
            
            /*
             // MARK: - Navigation
             
             // In a storyboard-based application, you will often want to do a little preparation before navigation
             override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
             // Get the new view controller using segue.destination.
             // Pass the selected object to the new view controller.
             }
             */
    
}
