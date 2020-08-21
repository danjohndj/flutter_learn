//
//  RestaurantTableViewController.swift
//  AppCodaFoodBin
//
//  Created by Dan Johnson on 8/5/20.
//  Copyright © 2020 Dan Johnson. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {

    
    var restaurants:[Restaurant] = [
        Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location: "Hong Kong", image: "cafedeadend", isVisited: false, phone: "603-320-0303", description: "Truckin" ),
            Restaurant(name: "Homei", type: "Cafe", location: "Hong Kong", image: "homei", isVisited: false, phone: "603-320-0303", description: "Truckin"),
            Restaurant(name: "Teakha", type: "Tea House", location: "Hong Kong", image: "teakha", isVisited: false, phone: "603-320-0303", description: "Truckin"),
            Restaurant(name: "Cafe loisl", type: "Austrian / Causual Drink", location: "Hong Kong", image: "cafeloisl", isVisited: false, phone: "603-320-0303", description: "Truckin"),
            Restaurant(name: "Petite Oyster", type: "French", location: "Hong Kong", image: "petiteoyster", isVisited: false, phone: "603-320-0303", description: "Truckin"),
            Restaurant(name: "For Kee Restaurant", type: "Bakery", location: "Hong Kong", image: "forkeerestaurant", isVisited: false, phone: "603-320-0303", description: "Truckin"),
            Restaurant(name: "Po's Atelier", type: "Bakery", location: "Hong Kong", image: "posatelier", isVisited: false, phone: "603-320-0303", description: "Truckin"),
                Restaurant(name: "Bourke Street Backery", type: "Chocolate", location: "Sydney", image: "bourkestreetbakery", isVisited: false, phone: "603-320-0303", description: "Truckin"),
                Restaurant(name: "Haigh's Chocolate", type: "Cafe", location: "Sydney", image: "haighschocolate", isVisited: false, phone: "603-320-0303", description: "Truckin"),
                Restaurant(name: "Palomino Espresso", type: "American / Seafood", location: "Sydney", image: "palominoespresso", isVisited: false, phone: "603-320-0303", description: "Truckin"),
                Restaurant(name: "Upstate", type: "American", location: "New York", image: "upstate", isVisited: false, phone: "603-320-0303", description: "Truckin"),
                        Restaurant(name: "Graham Avenue Meats", type: "Breakfast & Brunch", location: "New York", image: "grahamavenuemeats", isVisited: false, phone: "603-320-0303", description: "Truckin"),
                        Restaurant(name: "Waffle & Wolf", type: "Coffee & Tea", location: "New York", image: "wafflewolf", isVisited: false, phone: "603-320-0303", description: "Truckin"),
                        Restaurant(name: "Five Leaves", type: "Coffee & Tea", location: "New York", image: "fiveleaves", isVisited: false, phone: "603-320-0303", description: "Truckin"),
                        Restaurant(name: "Cafe Lore", type: "Latin American", location: "New York", image: "cafelore", isVisited: false, phone: "603-320-0303", description: "Truckin"),
                        Restaurant(name: "Confessional", type: "Spanish", location: "New York", image: "confessional", isVisited: false, phone: "603-320-0303", description: "Truckin"),
                            Restaurant(name: "Barrafina", type: "Spanish", location: "London", image: "barrafina", isVisited: false, phone: "603-320-0303", description: "Truckin"),
                            Restaurant(name: "Donostia", type: "Spanish", location: "London", image: "donostia", isVisited: false, phone: "603-320-0303", description: "Truckin"),
                            Restaurant(name: "Royal Oak", type: "British", location: "London", image: "royaloak", isVisited: false, phone: "603-320-0303", description: "Truckin"),
                            Restaurant(name: "CASK Pub and Kitchen", type: "Thai", location: "London", image: "caskpubkitchen", isVisited: false, phone: "603-320-0000", description: "Casket Case")
                        ]

                                             
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.cellLayoutMarginsFollowReadableWidth = true
        navigationController?.navigationBar.prefersLargeTitles = true
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        // number of rows
       return restaurants.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RestaurantTableViewCell // point to our custom cell

        // Configure the cell...
        cell.namelabel?.text = restaurants[indexPath.row].name
        cell.thumbnailImageView?.image = UIImage(named: restaurants[indexPath.row].image)
        cell.locationLabel?.text = restaurants[indexPath.row].location
        cell.typeLabel?.text = restaurants[indexPath.row].type
      //  cell.heartImageView.isHidden = restaurants[indexPath.row].isVisited ? false : true
        return cell
    }
    
    /*
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let optionMenu = UIAlertController(title: nil, message: "What do you want to do", preferredStyle: .actionSheet)
        
        // ipad specific code, alerts are popovers in ios
        if let popoverController = optionMenu.popoverPresentationController {
            if let cell = tableView.cellForRow(at: indexPath)
            {
                popoverController.sourceView = cell
                popoverController.sourceRect = cell.bounds
            }
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let callActionHandler = { (action:UIAlertAction!) ->
            Void in
            let alertMesage = UIAlertController(title: "Service Unavailable", message: "Sorry Fucker", preferredStyle: .alert)
            alertMesage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertMesage,animated: true,completion: nil)
        }
            
        let callAction = UIAlertAction(title: "Call " + "123-000-\(indexPath.row)", style: .default, handler: callActionHandler)
        
        let checkinAction = UIAlertAction(title: "Check In", style: .default, handler: {
            (action:UIAlertAction!) -> Void  in
            let cell = tableView.cellForRow(at: indexPath)
            
            self.restaurantIsVisited[indexPath.row] = true
            
            if self.restaurantIsVisited[indexPath.row] {
                cell?.accessoryType = .checkmark
            } else {
                cell?.accessoryType = .none
            }
            
        })
        
        optionMenu.addAction(checkinAction)
        optionMenu.addAction(callAction)
        optionMenu.addAction(cancelAction)
        
        present(optionMenu, animated: true, completion: nil)
        
        tableView.deselectRow(at: indexPath, animated: false)
    }
    */
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
    {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete")
        {
            (action, sourceView, completionHander) in
            self.restaurants.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .fade)
            completionHander(true)
            
        } //action
        
        let shareAction = UIContextualAction(style: .normal , title: "Share")
        {
            (action,sourceView,completionHandler) in
            let defaultText = "Just checking in at " + self.restaurants[indexPath.row].name
            let activityController = UIActivityViewController(activityItems: [defaultText], applicationActivities: nil)
            self.present(activityController, animated: true, completion: nil)
            
            if let popoverController = activityController.popoverPresentationController {
                if let cell = tableView.cellForRow( at: indexPath)
                {
                    popoverController.sourceView = cell
                    popoverController.sourceRect = cell.bounds
                }
            }
            completionHandler(true)
        } // actio
                
        // customize icon
        
        deleteAction.image = UIImage(systemName: "trash")
        shareAction.image = UIImage(systemName: "squre.and.arrow.up")
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction,shareAction])
        
        return swipeConfiguration
        
    } // func
    
    override func prepare (for seque: UIStoryboardSegue, sender: Any?){
        if seque.identifier == "showRestaurantDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = seque.destination as! RestaurantDetailViewController
                destinationController.restaurant  = restaurants[indexPath.row]
            }
        }
    }
        /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

/*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            restaurantNames.remove(at: indexPath.row)
            restaurantLocations.remove(at: indexPath.row)
            restaurantTypes.remove(at: indexPath.row)
            restaurantIsVisited.remove(at: indexPath.row)
            // delete table view row
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
        
        print("Total item: \(restaurantNames.count)")
        for name in restaurantNames {
            print(name)
        }

        
    }
 */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
