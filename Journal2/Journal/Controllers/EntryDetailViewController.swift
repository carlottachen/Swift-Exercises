//
//  EntryDetailViewController.swift
//  Journal
//
//  Created by Carlotta Chen on 1/17/22.
//

import UIKit

class EntryDetailViewController: UIViewController {
    
    @IBOutlet weak var entryTitleLabel: UILabel!
    @IBOutlet weak var entryBodyLabel: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
        // Do any additional setup after loading the view.
    }
    
    private func updateViews() {
        guard let entry = entry, isViewLoaded else { return }

        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        entryBodyLabel.backgroundColor = .clear
        entryTitleLabel.text = entry.title
        entryBodyLabel.text = formatter.string(from: entry.timestamp) + "\n\n" + entry.body
        
    }

    var entry: Entry? {
        didSet {
            updateViews()
        }
    }

}
