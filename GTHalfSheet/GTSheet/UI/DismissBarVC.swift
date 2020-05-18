//
//  DismissBarVC.swift
//  Gametime
//
//  Created by Matt Banach on 10/23/17.
//

import Foundation

public class DismissBarVC: UIViewController {

    private static var storyboardName: String = "DismissBar"
    private static var identifier: String = "DismissBarVC"

    @IBOutlet weak var backgroundView: UIView?
	@IBOutlet weak var topBar: UIView!
	
	public static func instance(tintColor: UIColor, barColor: UIColor? = nil) -> DismissBarVC {

        let storyboard = UIStoryboard(
            name: DismissBarVC.storyboardName,
            bundle: Bundle(for: self)
        )

        let vc = storyboard.instantiateViewController(withIdentifier: DismissBarVC.identifier) as! DismissBarVC
        vc.loadViewIfNeeded()
        vc.backgroundView?.backgroundColor = tintColor
		
		if let barColor = barColor {
			vc.topBar.backgroundColor = barColor
		}
		
        return vc
    }
}
