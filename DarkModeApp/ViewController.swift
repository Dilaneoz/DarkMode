//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Atil Samancioglu on 1.09.2019.
//  Copyright © 2019 Atil Samancioglu. All rights reserved.
//

import UIKit

// info plist te user interface style ın yanına Dark ya da Light yazınca kullanıcının telefonunun hangi modda olduğuna bakmaksızın uygulamanın tamamı dark ya da light mod olur.

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //overrideUserInterfaceStyle = .light // bunu yapınca kullanıcının telefonu hangi moda ayarladığına bakmaksızın kod yazılan viewcontroller ı light moda alır
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let userInterfaceStyle = traitCollection.userInterfaceStyle // userInterfaceStyle ile kullanıcının arayüzünü hangi stilde kullandığını alabiliriz
              
              if userInterfaceStyle == .dark { // dark mode
                  changeButton.tintColor = UIColor.white // kullanıcı dark mode kullanırken yazıları beyaz yap
              } else { // light mode
                  changeButton.tintColor = UIColor.blue // light mode da mavi yap
              }
              
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) { // aşağıdaki kodları viewWillAppear içinde yazınca kullanıcı telefonun modunu değiştirdiğinde mod değişimleri düzgün çalışmıyor. ama bu fonksiyonda yazınca çalışıyor. her bir trait değiştirildiğinde bu fonksiyon çağırılacağı için bu kontrol yapılacaktır
        let userInterfaceStyle = traitCollection.userInterfaceStyle
                    
                    if userInterfaceStyle == .dark {
                        changeButton.tintColor = UIColor.white
                    } else {
                        changeButton.tintColor = UIColor.blue
                    }
    }
    
    


}

