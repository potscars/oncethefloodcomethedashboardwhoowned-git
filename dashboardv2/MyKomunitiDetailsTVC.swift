//
//  MyKomunitiDetailsTVC.swift
//  dashboardv2
//
//  Created by Mohd Zulhilmi Mohd Zain on 04/01/2017.
//  Copyright © 2017 Ingeniworks Sdn Bhd. All rights reserved.
//

import UIKit

class MyKomunitiDetailsTVC: UITableViewController {
    
    var detailsData: NSDictionary = [:]
    var imagesAvailable: NSArray? = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.tableView.rowHeight = UITableViewAutomaticDimension
        //self.tableView.separatorStyle = UITableViewCellSeparatorStyle.none
        self.tableView.estimatedRowHeight = 100.0
        
        ZGraphics.hideTableSeparatorAfterLastCell(tableView: self.tableView)
        
        imagesAvailable = detailsData.value(forKey: "MESSAGE_IMAGES") as? NSArray ?? []
        
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
        if(imagesAvailable!.count != 0 || imagesAvailable != nil) { return 4 }
        else {
            return 3
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(imagesAvailable!.count != 0) {
        
            if(indexPath.row == 0){
                
                let cell: MyKomunitiDetailsTVCell = tableView.dequeueReusableCell(withIdentifier: "MyKomunitiDetailsSenderCellID") as! MyKomunitiDetailsTVCell
                
                cell.updateSenderCell(data: detailsData)
                
                return cell
            }
            else if(indexPath.row == 1){
                
                let cell: MyKomunitiDetailsTVCell = tableView.dequeueReusableCell(withIdentifier: "MyKomunitiDetailsTitleCellID") as! MyKomunitiDetailsTVCell
                
                cell.updateTitleCell(data: detailsData)
                
                return cell
            }
            else if(indexPath.row == 2) {
                
                let cell: MyKomunitiDetailsTVCell = tableView.dequeueReusableCell(withIdentifier: "MyKomunitiDetailsDescCellID") as! MyKomunitiDetailsTVCell
                
                cell.updateDescCell(data: detailsData)
                
                return cell
                
            }
            else {
                /*
                let cell: MyKomunitiDetailsTVCell = tableView.dequeueReusableCell(withIdentifier: "MyKomunitiDetailsImageCellID") as! MyKomunitiDetailsTVCell
                
                //cell.updateDescCell(data: detailsData)
                let image: NSDictionary = imagesAvailable!.object(at: indexPath.row - 3) as! NSDictionary
                
                cell.updateImage(data: image.value(forKey: "large") as! NSDictionary)
                
                return cell
                */
                
                let cell: MyKomunitiDetailsTVCell = tableView.dequeueReusableCell(withIdentifier: "MyKomunitiDetailsImageSlideShowCellID") as! MyKomunitiDetailsTVCell
                
                //let image: NSDictionary = imagesAvailable!.object(at: indexPath.row - 3) as! NSDictionary
                
                cell.updateImageArrayed(data: imagesAvailable!, withViewController: self)
                //cell.uibMKDTVCDldImg.addTarget(self, action: #selector(performDownloadImage(sender:)), for: UIControlEvents.touchUpInside)
                
                
                return cell
                
            }
        
        } else {
        
            if(indexPath.row == 0){
            
                let cell: MyKomunitiDetailsTVCell = tableView.dequeueReusableCell(withIdentifier: "MyKomunitiDetailsSenderCellID") as! MyKomunitiDetailsTVCell
    
                cell.updateSenderCell(data: detailsData)
            
                return cell
            }
            else if(indexPath.row == 1){
            
                let cell: MyKomunitiDetailsTVCell = tableView.dequeueReusableCell(withIdentifier: "MyKomunitiDetailsTitleCellID") as! MyKomunitiDetailsTVCell
            
                cell.updateTitleCell(data: detailsData)
            
                return cell
            }
            else {
            
                let cell: MyKomunitiDetailsTVCell = tableView.dequeueReusableCell(withIdentifier: "MyKomunitiDetailsDescCellID") as! MyKomunitiDetailsTVCell
            
                cell.updateDescCell(data: detailsData)
            
                return cell
            
            }

        }

    }
    
    @objc func performDownloadImage(sender: UIButton) {
        
        //UIImageWriteToSavedPhotosAlbum(self.uiivMKDTVCImages.image!, self, #selector(saveImage(image:error:context:)), nil)
        print("downloading")
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
