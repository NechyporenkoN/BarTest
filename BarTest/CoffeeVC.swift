//
//  CoffeeVC.swift
//  BarTest
//
//  Created by Nikita Nechyporenko on 02.07.18.
//  Copyright © 2018 Nikita Nechyporenko. All rights reserved.
//

import UIKit

class CoffeeVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var choosedCoffee: Coffee?
    var arrayCoffee = [Coffee.init(name: "Espresso", discription: "Эспрессо (в переводе с итальянского Espresso - спрессованный, выжатый) – это кофе, приготовленный под высоким давлением (8-10 бар). При кратковременном контакте воды и молотого кофе (20-25 секунд) в напитке концентрируется максимальное количество полезных веществ. Эспрессо готовится исключительно на одного человека и должен быть выпит незамедлительно, иначе пенка исчезнет, повысится кислотность, а мягкость уступит место солености. Эспрессо – это кофе, приготовленный и поглощаемый на экспресс скорости. Итальянцы выпивают свой эспрессо, не отходя от барной стойки, и делают это, как правило, залпом.", image: "espresso"),
                       Coffee.init(name: "Americano", discription: "Американо(итал. Caffè Americano — «кофе по-американски») — способ приготовления кофе, заключающийся в соединении определённого количества горячей воды и эспрессо. Кофе американо – это классический эспрессо, в который добавляется горячая вода. В отличие от другого кофейного напитка, лунго, в американо дополнительная вода не проходит через кофейную таблетку, а доливается уже в готовый напиток.", image: "americano"),
                       Coffee.init(name: "Americano with milk", discription: "Американо(итал. Caffè Americano — «кофе по-американски») — способ приготовления кофе, заключающийся в соединении определённого количества горячей воды и эспрессо. Кофе американо – это классический эспрессо, в который добавляется горячая вода. В отличие от другого кофейного напитка, лунго, в американо дополнительная вода не проходит через кофейную таблетку, а доливается уже в готовый напиток.", image: "americano"),
                       Coffee.init(name: "Capuccino", discription: "Самый традиционный рецепт капучино - это двойной эспрессо, горячее молоко и взбитая молочная пена. Существует множество вариантов приготовления капучино, где вместо молока используются сливки, добавляют карицу, тёртый шоколад. Всё это порождает множество других интересных вкусов и самостоятельных напитков.", image: "capuccino"),
                       Coffee.init(name: "Latte", discription: "Существует два понятия: кофе латте и латте макиато. Отличие состоит в способе приготовления: если в кофе влить молоко, получится кофе латте, а если наоборот – кофе в молоко, то латте макиато. Кофе латте однородно по структуре, поэтому подается в керамической чашке, а кофе макиато состоит из трех слоев, и чтобы показать их все, подается в высоком стеклянном бокале. Из-за способа приготовления вкус у напитков также отличается: у классического латте он более кофейный, а у латте макиато – молочный.", image: "latte"),
                       Coffee.init(name: "Dopio", discription: "Двойная порция эспрессо. \nКофе эспрессо, приготовленный на двойном количестве молотого кофе и объемом в два раза больше стандартной порции эспрессо. Характеризуется интенсивным вкусом и ароматом. Итальянцы прибавляют приставку 'доппио' ко всем названиям кофейно-молочных напитков, когда хотят получить напиток в два раза крепче или в два раза больше: доппио ристретто, доппио лунго, доппио капучино.", image: "espresso"),
                       Coffee.init(name: "Loongo", discription: "Эспрессо-лунго (итал. Lungo — длинный) — напиток, приготовленный с помощью кофе-машины по аналогии с эспрессо, но с гораздо большим количеством воды. Отличие от Американо в том, что вся вода напитка проходит через кофейную массу. В американо вода добавляется в эспрессо.  Вкус лунго менее насыщенный, но более горький по сравнению с эспрессо. Это связано с тем, что дополнительный объём горячей воды, проходящий через молотый кофе, извлекает компоненты, которые обычно остаются нерастворёнными и не попадают в напиток. Лунго также содержит в себе больше кофеина, чем эспрессо. Для одной порции лунго стоит брать 7-9 г кофе мелкого помола (так же, как и для приготовления эспрессо). Важно увеличить время экстракции, если напиток не готовится кофемашиной в автоматическом режиме. Подается лунго в больших подогретых чашках.", image: "espresso"),
                       Coffee.init(name: "Maciato", discription: "Традиционно макиато готовится из одной порции эспрессо, в которую добавляется небольшое количество молока. Также популярен рецепт, в котором в эспрессо сверху кладется барной ложкой капелька очень нежной молочной пены (примерно 15 мл). Разновидность макиато с холодным молоком носит название итал. Freddo, с горячим — итал. Caldo. В ряде кафе принято смешивать эспрессо и молоко в пропорции 1:1, получая таким образом аналог латте, но меньшего объёма. В Австралии и ряде других стран такой способ приготовления носит название «пикколо латте» (итал. piccolo latte — дословно «малое молоко»).", image: "maciato"),
                       Coffee.init(name: "Mochaccino", discription: "Кофейный напиток, созданный в Америке и являющийся разновидностью латте с добавлением шоколада. Название «мокаччино» используется в Европе. В Северной Америке этот напиток известен как «мокко» («мокка»).", image: "mochaccino")]
    //["Espresso", "Americano", "Americano with milk", "Capuccino", "Latte", "Dopio", "Loongo", "Maciato", "Mochaccino"]
    
    
    //    var chooseCoffeeImage = ""
    //    var  aboutCoffee = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showCoffee" {
            let vc = segue.destination as? SecondCoffeeVC
            vc?.coffeePul = choosedCoffee
            
        }
    }
    
    //MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCoffee.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellCoffee = tableView.dequeueReusableCell(withIdentifier: "cellCoffee", for: indexPath)
        cellCoffee.textLabel?.text = arrayCoffee[indexPath.row].name
        cellCoffee.detailTextLabel?.text = "->"
        return cellCoffee
    }
    
    //MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosedCoffee = arrayCoffee[indexPath.row]
        performSegue(withIdentifier: "showCoffee", sender: nil)
        //        switch indexPath.row {
        //        case 0:
        //            chooseCoffeeImage = "espresso"
        //            aboutCoffee = "Espresso"
        //            print("Espresso")
        //        case 1:
        //            chooseCoffeeImage = "americano"
        //            aboutCoffee = "Americano"
        //            print("Americano")
        //        case 2:
        //            chooseCoffeeImage = "americano"
        //            aboutCoffee = "Americano with milk"
        //            print("Americano with milk")
        //        case 3:
        //            chooseCoffeeImage = "capuccino"
        //            aboutCoffee = "Capuccino"
        //            print("Capuccino")
        //        case 4:
        //            chooseCoffeeImage = "latte"
        //            aboutCoffee = "Latte"
        //            print("Latte")
        //        case 5:
        //            chooseCoffeeImage = "espresso"
        //            aboutCoffee = "Dopio"
        //            print("Dopio")
        //        case 6:
        //            chooseCoffeeImage = "espresso"
        //            aboutCoffee = "Loongo"
        //            print("Loongo")
        //        case 7:
        //            chooseCoffeeImage = "maciato"
        //            aboutCoffee = "Maciato"
        //            print("Maciato")
        //        case 8:
        //            chooseCoffeeImage = "mochaccino"
        //            aboutCoffee = "Mochaccino"
        //            print("Mochaccino")
        //        default:
        //            print("error")
        //        }
        
    }
}
