//
//  FirstViewController.swift
//  TableViewSample
//
//  Created by MF839-018 on 2016. 5. 19..
//  Copyright © 2016년 SAMSUNG SDS. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {

    var books = [BookVO]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let book1 = BookVO()
        
        book1.title = "처음처럼"
        book1.cover = "l9788971997116.jpg"
        book1.publisher = "진로"
        book1.writer = "이효리"
        book1.desc = "처음처럼은 어떻게 참이슬과 떡두꺼비를 이겼을까"
        book1.url = "http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9791195322183&orderClick=41a"
        
        let book2 = BookVO()
        
        book2.title = "다시태어난다면 당신과결혼안함"
        book2.cover = "l9788973815531.jpg"
        book2.publisher = "사랑과전쟁"
        book2.writer = "신구"
        book2.desc = "2주 뒤에 뵙겠습니다. 저자 남인숙은 소설가이자 에세이스트. 1974년 서울에서 태어났다. 숙명여대 국문학과 재학 시절부터 방송작가, 자유기고가, 시나리오 작가로 활동했다. 출간 이후 80만 부 이상"
        book2.url = "http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9788973815531&orderClick=JAj"
        
        let book3 = BookVO()
        
        book3.title = "우리는 어째서 이토록"
        book3.cover = "l9791158160258.jpg"
        book3.publisher = "볼케이노"
        book3.writer = "신애란"
        book3.desc = "지난해 12월 달 출판사에서는 ‘여러분의 고민이 모여 한 권의 책이 됩니다.’라는 공모를 진행했다. 곧 가벼운 궁금증에서부터 여러 장에 달하는 다소 무거운 사연에 이르기까지 사랑과 관련된 수많은 고민"
        book3.url = "http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9791158160258&orderClick=JAj"
        
        self.books += [book1, book2, book3]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return books.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! BookTableViewCell

        // Configure the cell...
        let row = books[indexPath.row]
        
        cell.title?.text = row.title
        cell.writer?.text = row.writer
        cell.publisher?.text = row.publisher
        cell.cover?.image = UIImage(named: row.cover!)
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
