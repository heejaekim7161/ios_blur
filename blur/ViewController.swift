//
//  ViewController.swift
//  blur
//
//  Created by HeejaeKim on 05/05/2019.
//  Copyright © 2019 HeejaeKim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var textView: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = imageView.bounds

        let vibrancyEffect = UIVibrancyEffect(blurEffect: blurEffect)
        let vibrancyView = UIVisualEffectView(effect: vibrancyEffect)
        vibrancyView.frame = blurView.contentView.bounds
        vibrancyView.contentView.addSubview(textView)
        blurView.contentView.addSubview(vibrancyView)

        imageView.addSubview(blurView)
    }
}
