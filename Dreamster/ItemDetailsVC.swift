//
//  ItemDetailsVC.swift
//  Dreamster
//
//  Created by Admin on 22.02.17.
//  Copyright © 2017 rusel95. All rights reserved.
//

import UIKit
import CoreData

class ItemDetailsVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var storePicker: UIPickerView!
    @IBOutlet weak var titleField: CustomTextField!
    @IBOutlet weak var priceField: CustomTextField!
    @IBOutlet weak var detailsField: CustomTextField!
   
    var stores = [Store]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let topItem = self.navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        }
        
        storePicker.delegate = self
        storePicker.dataSource = self
        
//        let store1 = Store(context: context)
//        store1.name = "Allo"
//        let store2 = Store(context: context)
//        store2.name = "Car DealerShip"
//        let store3 = Store(context: context)
//        store3.name = "Rozetka"
//        let store4 = Store(context: context)
//        store4.name = "Caravan"
//        let store5 = Store(context: context)
//        store5.name = "Citrus"
//        let store6 = Store(context: context)
//        store6.name = "Dafi"
//        
//        ad.saveContext()
        getStores()
    }

    //1-st needed method for picker
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let store = stores[row]
        return store.name
    }
    
    //2-nd needed method for picker
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stores.count
    }
    
    //3-rd needed method for picker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //4-th needed method for picker - update when selected
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    
    func getStores(){
        let fetchRequest: NSFetchRequest<Store> = Store.fetchRequest()
        
        do {
            self.stores = try context.fetch(fetchRequest)
            self.storePicker.reloadAllComponents()
        } catch {
            //handle the error
            print(error as NSError)
        }
    }
    
}
