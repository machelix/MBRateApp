//
//  MBRateUs.swift
//  Pods
//
//  Created by Mati Bot on 16/04/2016.
//
//

import Foundation


public class MBRateUs{

    public static let sharedInstance = MBRateUs()

    public var rateUsInfo = MBRateUsInfo()
    
    public func showRateUs(base:UIViewController, positiveBlock:()->Void, negativeBlock:()->Void, dismissBlock:()->Void){
        let podBundle = NSBundle(forClass: self.dynamicType)
        let storyboard = UIStoryboard(name: "RateUs", bundle: podBundle)
        let vc = storyboard.instantiateInitialViewController() as! MBRateUsViewController
        
        vc.positiveBlock = positiveBlock
        vc.negativeBlock = negativeBlock
        vc.dismissBlock = dismissBlock
        
        vc.rateUsInfo = self.rateUsInfo
        
        base.presentViewController(vc, animated: true, completion: nil)
    }
    
}