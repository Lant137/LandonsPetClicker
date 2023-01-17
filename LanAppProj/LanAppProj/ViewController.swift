//
//  ViewController.swift
//  LanAppProj
//
//  Created by mac02 on 1/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    var colorSelect = 0
    var redEggCount = 0
    var blueEggCount = 0
    var greenEggCount = 0
    let eggBreak = 10
    var shopProg : Int = 0
    
    
    let redPetImage: [String] = ["RedEgg0","RedKitty1","RedKitty2","RedKitty3","RedKitty4","RedKitty5","RedKitty6"]
    let bluePetImage: [String] = ["BlueEgg0","BluePuppy1","BluePuppy2","BluePuppy3","BluePuppy4","BluePuppy5","BluePuppy6"]
    let greenPetImage: [String] = ["GreenEgg0","GreenBunny1","GreenBunny2","GreenBunny3","GreenBunny4","GreenBunny5","GreenBunny6"]
    
    @IBOutlet weak var colorClicked: UILabel!
    @IBOutlet weak var interactButtonText: UIButton!
    @IBOutlet weak var currentAnimalView: UIImageView!
    
    func setColor(colorSelect: Int, eggCount: Int, petImage: [String]){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentAnimalView.image = UIImage(named: "EmptyRoom")
    }
    
    

    @IBAction func interactButton(_ sender: Any) {
        
        //RED KITTY INTERACTION
        if (colorSelect == 1){
            redEggCount = redEggCount + 1
            colorClicked.text = String(redEggCount)
            if (redEggCount <= eggBreak){
                interactButtonText.setTitle("Incubate Egg", for: .normal)
            }
            if (redEggCount > eggBreak) {
                    currentAnimalView.image = UIImage(named: redPetImage[1])
                    interactButtonText.setTitle("PET", for: .normal)
            }
            
        }
        
        //BLUE PUPPY INTERACTION
        if (colorSelect == 2){
            blueEggCount = blueEggCount + 1
            colorClicked.text = String(blueEggCount)
            if (blueEggCount <= eggBreak){
                interactButtonText.setTitle("Incubate Egg", for: .normal)
            }
            if (blueEggCount > eggBreak) {
                    currentAnimalView.image = UIImage(named: bluePetImage[1])
                    interactButtonText.setTitle("PET", for: .normal)
                }
            
        }
        
        //GREEN BUNNY INTERACTION
        if (colorSelect == 3){
            greenEggCount = greenEggCount + 1
            colorClicked.text = String(greenEggCount)
            if (greenEggCount <= eggBreak){
                interactButtonText.setTitle("Incubate Egg", for: .normal)
            }
            if (greenEggCount > eggBreak) {
                    currentAnimalView.image = UIImage(named: greenPetImage[1])
                    interactButtonText.setTitle("PET", for: .normal)
            }
            
        }
        
    }
    
    @IBAction func redClicked(_ sender: UIButton) {
        colorSelect = 1
        colorClicked.text = String(redEggCount)
        
        if (redEggCount <= eggBreak){
            interactButtonText.setTitle("Incubate Egg", for: .normal)
            currentAnimalView.image = UIImage(named: redPetImage[0])
        } else if (redEggCount > eggBreak) {
            currentAnimalView.image = UIImage(named: redPetImage[1])
            interactButtonText.setTitle("Say Hello", for: .normal)
        }
    }
    
    @IBAction func blueClicked(_ sender: Any) {
        colorSelect = 2
        colorClicked.text = String(blueEggCount)
        
        if (blueEggCount <= eggBreak){
            interactButtonText.setTitle("Incubate Egg", for: .normal)
            currentAnimalView.image = UIImage(named: bluePetImage[0])
        } else if (blueEggCount > eggBreak) {
            currentAnimalView.image = UIImage(named: bluePetImage[1])
            interactButtonText.setTitle("Say Hello", for: .normal)
        }
        
    }
    
    @IBAction func greenClicked(_ sender: Any) {
        colorSelect = 3
        colorClicked.text = String(greenEggCount)
        
        if (greenEggCount <= eggBreak){
            interactButtonText.setTitle("Incubate Egg", for: .normal)
            currentAnimalView.image = UIImage(named: greenPetImage[0])
        } else if (greenEggCount > eggBreak) {
            currentAnimalView.image = UIImage(named: greenPetImage[1])
            interactButtonText.setTitle("Say Hello", for: .normal)
        }
        
    }
    
    
    @IBAction func HatPressed(_ sender: Any) {
        if (colorSelect == 1){
            currentAnimalView.image = UIImage(named: redPetImage[2])
        }
        else if (colorSelect == 2){
            currentAnimalView.image = UIImage(named: bluePetImage[2])
        }
        else if (colorSelect == 3){
            currentAnimalView.image = UIImage(named: greenPetImage[2])
        }
    }
    
    
    @IBAction func GlassesPressed(_ sender: Any) {
        if (colorSelect == 1){
            currentAnimalView.image = UIImage(named: redPetImage[3])
        }
        else if (colorSelect == 2){
            currentAnimalView.image = UIImage(named: bluePetImage[3])
        }
        else if (colorSelect == 3){
            currentAnimalView.image = UIImage(named: greenPetImage[3])
        }
        
    }
    
    @IBAction func ShoesPressed(_ sender: Any) {
        if (colorSelect == 1){
            currentAnimalView.image = UIImage(named: redPetImage[4])
        }
        else if (colorSelect == 2){
            currentAnimalView.image = UIImage(named: bluePetImage[4])
        }
        else if (colorSelect == 3){
            currentAnimalView.image = UIImage(named: greenPetImage[4])
        }
        
    }
    
    
    @IBAction func AccPressed(_ sender: Any) {
        if (colorSelect == 1){
            currentAnimalView.image = UIImage(named: redPetImage[5])
        }
        else if (colorSelect == 2){
            currentAnimalView.image = UIImage(named: bluePetImage[5])
        }
        else if (colorSelect == 3){
            currentAnimalView.image = UIImage(named: greenPetImage[5])
        }
        
    }
    
    
    @IBAction func ScenePressed(_ sender: Any) {
        if (colorSelect == 1){
            currentAnimalView.image = UIImage(named: redPetImage[6])
        }
        else if (colorSelect == 2){
            currentAnimalView.image = UIImage(named: bluePetImage[6])
        }
        else if (colorSelect == 3){
            currentAnimalView.image = UIImage(named: greenPetImage[6])
        }
        
    }
    
    @IBAction func add50(_ sender: Any) {
        if (colorSelect == 1){
            redEggCount = redEggCount + 50
        }
        else if (colorSelect == 2){
            blueEggCount = blueEggCount + 50
        }
        else if (colorSelect == 3){
            greenEggCount = greenEggCount + 50
        }
    }
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToShop" {
            let destinationVC = segue.destination as? ChatViewController
            destinationVC?.blueEggCount = blueEggCount
            destinationVC?.redEggCount = redEggCount
            destinationVC?.greenEggCount = greenEggCount
            destinationVC?.colorSelect = colorSelect
        }
    }
    
}

