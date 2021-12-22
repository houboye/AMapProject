//
//  RootViewController.swift
//  AMapProject
//
//  Created by boye on 2021/12/22.
//

import UIKit
import SnapKit
import MAMapKit
import AMapFoundationKit

class RootViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        AMapServices.shared().apiKey = "4e2c9bc7ede18252e52790340ad0f000"
        MAMapView.updatePrivacyShow(.didShow, privacyInfo: .didContain)
        MAMapView.updatePrivacyAgree(.didAgree)
        
        view.backgroundColor = UIColor.white
        let mapView = MAMapView(frame: view.bounds)
        mapView.delegate = self
        view.addSubview(mapView)
    }
    
}

extension RootViewController: MAMapViewDelegate {
    
}
