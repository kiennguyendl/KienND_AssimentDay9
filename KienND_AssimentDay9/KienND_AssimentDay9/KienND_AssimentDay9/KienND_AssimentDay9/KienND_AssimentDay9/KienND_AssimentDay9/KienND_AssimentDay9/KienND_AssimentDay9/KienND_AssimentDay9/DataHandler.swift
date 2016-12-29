//
//  DataHandler.swift
//  KienND_AssimentDay9
//
//  Created by Kien Nguyen Dang on 11/23/16.
//  Copyright © 2016 Kien Nguyen Dang. All rights reserved.
//

import UIKit

class DataHandler{
    
    static var isInstance = DataHandler()
    
    let queue = DispatchQueue(label: "kien.nguyendang", qos: .default, attributes: .concurrent)
    
    var arrString: [String] = ["Chuỗi 1", "Chuỗi 2", "Chuỗi 3", "Chuỗi 5", "Chuỗi 6", "Chuỗi 7",
                               "Chuỗi  8", "Chuỗi 9", "Chuỗi 10"]

    func readData(textField: String) {
        queue.async {
            for index in self.arrString{
                DispatchQueue.main.async {
                    
                }
                sleep(1)
            }
            
        }
    }
    
    func writeData(textField: String) {
        queue.async(flags: .barrier) {
            DispatchQueue.main.async {
                self.arrString.append(textField)
                sleep(3)
            }
        }

    }
    
}
