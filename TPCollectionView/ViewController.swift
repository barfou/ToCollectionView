//
//  ViewController.swift
//  TPCollectionView
//
//  Created by lpiem on 13/03/2020.
//  Copyright © 2020 pf. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    enum SectionData: CaseIterable {
        case first
        case second
        case third
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return SectionData.allCases.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        cell.backgroundColor = Color.allCases[indexPath.item].uiColor
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Color.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        switch SectionData.allCases[indexPath.section] {
        case SectionData.first:
            return .init(width: 50, height: 50)
        case SectionData.second:
            return .init(width: 180, height: 180)
        case SectionData.third:
            return .init(width: 30, height: 20)
        }
    }
}

