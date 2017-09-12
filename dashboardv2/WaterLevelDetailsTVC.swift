//
//  WaterLevelDetailsTVC.swift
//  dashboardKB
//
//  Created by Mohd Zulhilmi Mohd Zain on 02/03/2017.
//  Copyright © 2017 Ingeniworks Sdn Bhd. All rights reserved.
//

import UIKit

class WaterLevelDetailsTVC: UITableViewController {
    
    var selectedRiverDetails: NSMutableArray = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        print("[WLDTVC] Data acquired is \(selectedRiverDetails)")
        
        ZUISetup.setupTableView(tableView: self)
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
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(indexPath.row == 0) {
        let cell: WaterLevelIntegratedTVCell = tableView.dequeueReusableCell(withIdentifier: "RiverDetailedCellID") as! WaterLevelIntegratedTVCell
        
        // Configure the cell...
        
        cell.updateRiverLevelCell(data: selectedRiverDetails[0] as! NSDictionary)

        return cell
        }
        else {
            let graphCell: WaterLevelIntegratedTVCell = tableView.dequeueReusableCell(withIdentifier: "RiverGraphCellID") as! WaterLevelIntegratedTVCell
            
            //graphCell.updateCell(detailsOfRiver[1] as! NSArray)
            print("[RLCLDDC] Data received is \(selectedRiverDetails[2])")
            graphCell.updateGraph(viewController: self, urlInString: "http://saifon.my/dashboard_mobile/\(selectedRiverDetails[2])")
            
            return graphCell
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if(indexPath.row == 0){
            
            return 139
            
        }
        else {
            
            return 367
            
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
