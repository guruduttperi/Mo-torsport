//
//  TableViewController.swift
//  Mötorsport
//
//  Created by Gurudutt on 09/02/18.
//  Copyright © 2018 Searde. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    //Creating Arrays that are to be used to populate the TableView
    
    var imageList = ["Circuit_de_Monaco", "Interlagos", "Laguna_Seca", "Monza", "Nurburging_Nordschleife", "Silverstone", "Spa_Francorchamps", "Suzuka"]
    
    var titleList = ["Circuit de Monaco", "Interlagos", "Laguna Seca", "Monza", "Nürburgring Nordschleife", "Silverstone", "Spa-Francorchamps", "Suzuka"]
    
    var descList = ["Monaco, Monaco", "São Paulo, Brazil", "Salinas, USA", "Monza, Italy", "Nürburg, Germany", "Towcester, UK", "Stavelot, Belgium", "Suzuka, Japan"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return titleList.count
    }

    //Populating the Cells
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell

        // Configure the cell...

        cell.cell_title.text = titleList[indexPath.row]
        cell.cell_desc.text = descList[indexPath.row]
        cell.cell_image.image = UIImage(named: imageList[indexPath.row])
        
        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.identifier == "showDetail"){
            
            let detail_view_controller = segue.destination as! DetailViewController
    
            if  let indexPath = self.tableView.indexPathForSelectedRow {
                detail_view_controller.sentData_title = titleList[indexPath.row] as String!
                detail_view_controller.sentData_location = descList[indexPath.row] as String!
                detail_view_controller.sentData_image = imageList[indexPath.row] as String!
            }
        }
    }
    

}
